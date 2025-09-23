from airflow import DAG
from datetime import datetime, timedelta
import sys
sys.path.append('/opt/airflow')
from include.functions import next_7days_predictions
from airflow.operators.python import PythonOperator

with DAG (
    dag_id= "7days_predictions",
    start_date = datetime(2025,5,1,23,0,0),
    description='Prévision des ventes des 7 prochaines jours',
    schedule_interval = timedelta(hours=24),
    catchup=False,
    dagrun_timeout= timedelta(minutes=2)
) as dag:  
    
    def predict():
        next_7days_predictions() 

    predict_sales_task = PythonOperator(
        task_id='predict_sales',
        python_callable=predict,
    )



