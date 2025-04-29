from django.core.management.base import BaseCommand
from inventory.models import Stock, SalesPrediction
import joblib
import pandas as pd
from datetime import datetime, timedelta, timezone
import inventory.management.commands.functions as functions
    
class Command(BaseCommand):
    help = 'Generate sales predictions for all products'

    def handle(self, *args, **kwargs):
        model = joblib.load('inventory/management/commands/out_of_stock.pkl') 

        day_offset = 1 
        target_date = datetime.now(timezone.utc).date() + timedelta(days=day_offset)

        try:
            weather = functions.get_weather_condition("Casablanca,MA", day_offset)
        except:
            weather = "Unknown"

        holiday = functions.isHoliday(target_date)
        seasonality = functions.get_season(target_date)

        for stock in Stock.objects.all():
            input_data = {
                "Category": [stock.category],
                "Price": [stock.price],
                "Discount": [stock.discount],
                "Inventory Level": [stock.quantity],
                "Weather Condition": [weather],
                "Holiday/Promotion": [holiday],
                "Seasonality": [seasonality],
            }

            input_df = pd.DataFrame(input_data)
            prediction = model.predict(input_df)[0]

            SalesPrediction.objects.create(
                stock=stock,
                predicted_units=prediction,
                weather_condition=weather,
                holiday=holiday,
                seasonality=seasonality,
                date=target_date,
                day_offset=day_offset
            )

        self.stdout.write(self.style.SUCCESS('✅ Sales predictions saved successfully.'))
