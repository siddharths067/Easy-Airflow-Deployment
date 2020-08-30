#!/bin/sh
cd /home/airflow
echo "[AIRFLOW SETUP] Initializing Airflow Database"
airflow initdb
echo "[AIRFLOW SETUP] Initializing Airflow Scheduler"
airflow scheduler & 
echo "[AIRFLOW SETUP] Initializing Airflow Webserver"
airflow webserver -p 8080 &

while true
do 
    echo "[DAG SYNC] SYNCING DAGS"
    /bin/bash /app/fetchrepo.sh
    sleep 60s
done
