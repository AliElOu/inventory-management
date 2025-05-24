import os
import sys

sys.path.append('/opt/airflow')

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'core.settings')

import django
django.setup()

from pyowm import OWM
from pyowm.utils.config import get_default_config
from inventory.models import Stock, SalesPrediction, SalesForecast
from transactions.models import SaleBillDetails, SaleItem
import joblib
import pandas as pd
import numpy as np
from sklearn.preprocessing import MinMaxScaler      
from datetime import datetime, timedelta, timezone
from django.utils import timezone as timezone2
from datetime import date as datt
from django.db.models.functions import TruncDate
from django.db.models import Sum

def get_weather_condition(city ,day_offset=0):
    try:
        API_KEY = "5533898b6a901da35668cd4f15d6853f"
        CITY_NAME = city

        config_dict = get_default_config()
        config_dict['language'] = 'en'

        owm = OWM(API_KEY, config_dict)
        mgr = owm.weather_manager()

        forecast = mgr.forecast_at_place(CITY_NAME, '3h')

        target_date = datetime.now(timezone.utc) + timedelta(days=day_offset)

        target_day = target_date.date()

        closest_weather = None
        min_time_diff = None

        for weather in forecast.forecast.weathers:
            weather_time = weather.reference_time('date')
            weather_day = weather_time.date()

            if weather_day == target_day:
                time_diff = abs((weather_time - target_date).total_seconds())

                if (min_time_diff is None) or (time_diff < min_time_diff):
                    min_time_diff = time_diff
                    closest_weather = weather

        if closest_weather:
            if closest_weather.status == "Snow":
                return "Snowy"
            elif closest_weather.status == "Clouds":
                return "Cloudy"
            elif closest_weather.status == "Clear":
                return "Sunny"
            else:
                return "Rainy"
        else:
            return "Unknown"
    except:
            return "Unknown"



def get_season(date):
    month = date.month
    if month in [12, 1, 2]:
        return "Winter"
    elif month in [3, 4, 5]:
        return "Spring"
    elif month in [6, 7, 8]:
        return "Summer"
    else:
        return "Autumn"



def isHoliday(date):
    holidays = [
        datt(2025, 1, 1),    # Nouvel An
        datt(2025, 1, 11),   # Anniversaire du Manifeste de l'Indépendance
        datt(2025, 1, 14),   # Nouvel An Amazigh
        datt(2025, 3, 31),   # Aïd Al Fitr (fin du Ramadan)
        datt(2025, 5, 1),    # Fête du Travail
        datt(2025, 6, 6),    # Aïd Al Adha (fête du sacrifice)
        datt(2025, 6, 27),   # 1er Moharram (Nouvel An Hégirien)
        datt(2025, 7, 30),   # Fête du Trône
        datt(2025, 8, 14),   # Anniversaire de la Récupération de Oued Eddahab
        datt(2025, 8, 20),   # Révolution du Roi et du Peuple
        datt(2025, 8, 21),   # Fête de la Jeunesse
        datt(2025, 9, 5),    # Aïd Al Mawlid (naissance du Prophète)
        datt(2025, 11, 6),   # Anniversaire de la Marche Verte
        datt(2025, 11, 18)   # Fête de l'Indépendance
    ]

    is_holiday = date in holidays
    is_sunday = date.weekday() == 6
    holiday_today = int(is_holiday or is_sunday)
    return holiday_today

def next_7days_predictions():

    model = joblib.load('/opt/airflow/include/ts.pkl') 
    today = datetime(year=2025, month=5, day=11) # timezone2.now().date()
    last_30day_sales = list(
            SaleBillDetails.objects
            .filter(billno__time__date__gte=today - timedelta(days=30),
                    billno__time__date__lt=today
                    )
            .annotate(date=TruncDate('billno__time'))
            .values('date')
            .annotate(total_sales=Sum('total'))
            .values_list('total_sales', flat=True)  
        )[::-1]
    scaler = MinMaxScaler()
    last_30day_sales = np.array(last_30day_sales).reshape(-1, 1)
    scaled_data = scaler.fit_transform(last_30day_sales)
    seq_length = 30
    future_predictions = []

    current_seq = scaled_data.copy()

    for _ in range(7): 
        prediction = model.predict(current_seq.reshape(1, seq_length, 1), verbose=0)
        future_predictions.append(prediction[0][0])
        
        current_seq = np.append(current_seq[1:], [[prediction[0][0]]], axis=0)

    predicted_units = scaler.inverse_transform(np.array(future_predictions).reshape(-1, 1))

    forecast = SalesForecast()
    forecast.date = datt.today()
    forecast.set_predictions(arrondi_special(predicted_units.flatten().tolist()))
    forecast.save()

    
def generate_prediction(context):
    
    model = joblib.load('/opt/airflow/include/out_of_stock.pkl') 
    day_offset = 1
    target_date = datetime.now(timezone.utc).date() + timedelta(days=day_offset)
    stocks = Stock.objects.all()

    for stock in stocks:
        input_data = {
            "Category": [stock.category],
            "Price": [stock.price],
            "Discount": [stock.discount],
            "Inventory Level": [stock.quantity],
            "Weather Condition": [context["weather"]],
            "Holiday/Promotion": [context["holiday"]],
            "Seasonality": [context["season"]]
        }

        input_df = pd.DataFrame(input_data)
        prediction = model.predict(input_df)[0]

        SalesPrediction.objects.create(
            stock=stock,
            predicted_units=prediction,
            weather_condition=context["weather"],
            holiday=context["holiday"],
            seasonality=context["season"],
            date=target_date,
            day_offset=day_offset
        )
        
    
def arrondi_special(valeurs):
    return [int(x) + 1 if x - int(x) > 0.5 else int(x) for x in valeurs]

def update_true_sales():
    yesterday = datt.today() - timedelta(days=1)
    predictions = SalesPrediction.objects.filter(date=yesterday)
    for prediction in predictions:
        sale_items = SaleItem.objects.filter(
            stock=prediction.stock,
            billno__time__date=prediction.date
        )
        total_sold = sum(item.quantity for item in sale_items)
        prediction.True_sales = total_sold
        prediction.save()