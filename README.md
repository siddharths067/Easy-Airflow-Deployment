# Easy Airflow Deployment

This docker compose file is to serve as a template to allow you to deploy Apache Airflow with ease.

Just plug-in your repository in the template (`GITHUB_DAG_REPO`) and it will sync it with your Airflow Instance, while you chill. 

No hassle of setting up hooks and syncing.

Deploy it on Amazon Fargate and you have your own Airflow Platform Setup. 

Now go do your ETL shit.

# Example Repo

All airflow dags should be available in a github repo like https://github.com/siddharths067/HelloAirflow in a dags folder

## Things to Do
- Allow syncing of private repos
- Launch a Postgres Instance
- Separate Queuing Service
- Enable CeleryExecutor
- And other things (Use issues to demand more)