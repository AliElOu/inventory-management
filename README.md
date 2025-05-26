#  Smart Inventory & Sales Forecasting Platform

> A modern and intelligent twist on a classic inventory management app — powered by machine learning and automation.

##  Overview

This project started as a traditional inventory management system and evolved into a **smart, data-driven platform** that forecasts sales, anticipates stockouts, and adapts to real-world conditions like weather, promotions, and seasonality.

Built with **Django**, orchestrated by **Apache Airflow**, and fully containerized using **Docker**, it integrates ML models to deliver daily sales forecasts and retrains itself monthly based on real sales data — ensuring predictions stay relevant over time.

---

##  Key Features

-  Full inventory tracking (sales, purchases, stock levels)
-  **Daily sales forecasting** by product using machine learning
-  **Monthly model retraining** with new data (automated)
-  Real-world context with **weather**, **season**, and **holiday** inputs (via OpenWeather API)
-  Forecasting for both **individual items** and **total weekly demand** (time series)
-  Predictions saved and displayed in a clear **Django dashboard**
-  Workflow managed via **Apache Airflow**
-  Deployed in a modular Docker setup

---


##  Data & ML Workflow

1. Collect sales & inventory data from MySQL  
2. Train ML models (XGBoost for item-level, LSTM for weekly sales)  
3. Enrich input with weather, holidays, and seasonality  
4. Generate daily predictions automatically via Airflow  
5. Save results to the database and display them in the web app  
6. Retrain models monthly using the latest collected data

---

##  Get Started

```bash
git clone https://github.com/AliElOu/inventory-management
cd inventory-management
docker-compose up --build
