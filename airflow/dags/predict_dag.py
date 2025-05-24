from airflow import DAG
from datetime import datetime, timedelta
import sys
sys.path.append('/opt/airflow')
from include.functions import get_weather_condition, get_season, isHoliday, generate_prediction, update_true_sales
from airflow.operators.python import PythonOperator
import json

with DAG (
    dag_id= "make_prediction",
    start_date = datetime(2025,5,1,8,0,0),
    description='Prévision journalière des ventes par produit',
    schedule_interval = "0 0 * * *",
    catchup=False,
    dagrun_timeout= timedelta(minutes=3)
) as dag:  
    def fetch_weather():
        tomorrow = datetime.today().date() + timedelta(days=1)
        data = {
            "weather": get_weather_condition("Casablanca,MA", 1),
            "season": get_season(tomorrow),
            "holiday": isHoliday(tomorrow)
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

    save_yesterday_true_sales_task = PythonOperator(
        task_id='save_yesterday_true_sales',
        python_callable=update_true_sales, 
    )

    fetch_weather_task >> predict_sales_task >> save_yesterday_true_sales_task
