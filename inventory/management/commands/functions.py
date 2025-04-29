from pyowm import OWM
from pyowm.utils.config import get_default_config
import datetime


def get_weather_condition(city ,day_offset=0):

    API_KEY = "5533898b6a901da35668cd4f15d6853f"
    CITY_NAME = city

    config_dict = get_default_config()
    config_dict['language'] = 'en'

    owm = OWM(API_KEY, config_dict)
    mgr = owm.weather_manager()

    forecast = mgr.forecast_at_place(CITY_NAME, '3h')

    target_date = datetime.datetime.now(datetime.timezone.utc) + datetime.timedelta(days=day_offset)

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
        datetime.date(2025, 1, 1),    # Nouvel An
        datetime.date(2025, 1, 11),   # Anniversaire du Manifeste de l'Indépendance
        datetime.date(2025, 1, 14),   # Nouvel An Amazigh
        datetime.date(2025, 3, 31),   # Aïd Al Fitr (fin du Ramadan)
        datetime.date(2025, 5, 1),    # Fête du Travail
        datetime.date(2025, 6, 6),    # Aïd Al Adha (fête du sacrifice)
        datetime.date(2025, 6, 27),   # 1er Moharram (Nouvel An Hégirien)
        datetime.date(2025, 7, 30),   # Fête du Trône
        datetime.date(2025, 8, 14),   # Anniversaire de la Récupération de Oued Eddahab
        datetime.date(2025, 8, 20),   # Révolution du Roi et du Peuple
        datetime.date(2025, 8, 21),   # Fête de la Jeunesse
        datetime.date(2025, 9, 5),    # Aïd Al Mawlid (naissance du Prophète)
        datetime.date(2025, 11, 6),   # Anniversaire de la Marche Verte
        datetime.date(2025, 11, 18)   # Fête de l'Indépendance
    ]

    is_holiday = date in holidays
    is_sunday = date.weekday() == 6
    holiday_today = int(is_holiday or is_sunday)
    return holiday_today