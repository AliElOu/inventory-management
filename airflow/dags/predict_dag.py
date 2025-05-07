from airflow import DAG
from datetime import datetime, timedelta
import sys
sys.path.append('/opt/airflow')
from include.functions import get_weather_condition, get_season, isHoliday, generate_prediction
from airflow.operators.python import PythonOperator
import json

with DAG (
    dag_id= "make_prediction",
    start_date = datetime(2025,5,1,8,0,0),
    description='Prévision journalière des ventes par produit',
    schedule_interval = timedelta(minutes=5),
    catchup=False,
    dagrun_timeout= timedelta(minutes=2)
) as dag:  
    def fetch_weather():
        data = {
            "weather": get_weather_condition("Casablanca,MA", 1),
            "season": get_season(datetime.today().date()),
            "holiday": isHoliday(datetime.today().date())
        }
        with open('/opt/airflow/include/weather.json', 'w') as f:
            json.dump(data, f)
        

    def predict():
        with open('/opt/airflow/include/weather.json', 'r') as f:    
            context = json.load(f)
        generate_prediction(context)  
    fetch_weather_task = PythonOperator(
        task_id='fetch_weather',
        python_callable=fetch_weather,
    )

    predict_sales_task = PythonOperator(
        task_id='predict_sales',
        python_callable=predict,
    )

    fetch_weather_task >> predict_sales_task
