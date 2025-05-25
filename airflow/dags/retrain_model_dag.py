from airflow import DAG
from airflow.operators.python import PythonOperator
from datetime import datetime, timedelta

import os
import sys
sys.path.append('/opt/airflow')
from include.functions import retrain_model
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "core.settings")
import django
django.setup()





with DAG(
    dag_id="retrain_sales_model",
    start_date=datetime(2025, 5, 1),
    schedule_interval="@weekly", 
    catchup=False,
    tags=["retrain", "ml"],
    description="Réentraînement hebdomadaire du modèle de prédiction de ventes",
    default_args={
        "retries": 1,
        "retry_delay": timedelta(minutes=5),
    }
) as dag:

    retrain_task = PythonOperator(
        task_id="retrain_model",
        python_callable=retrain_model
    )
