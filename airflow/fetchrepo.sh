#!/bin/sh
echo "[AIRFLOW SETUP] Cloning GITHUB REPO AT $GITHUB_DAG_REPO"
git clone $GITHUB_DAG_REPO
export AIRFLOW_DAG_DIRECTORY=`echo $GITHUB_DAG_REPO | grep -oP ".*/\K(.*)(?=.git)"`
echo -e "[AIRFLOW SETUP] Copying Dags from Airflow Repo $AIRFLOW_DAG_DIRECTORY/dags/ to /opt/airflow/dags/"
mv $AIRFLOW_DAG_DIRECTORY/dags/* /opt/airflow/dags/
rm -rf $AIRFLOW_DAG_DIRECTORY