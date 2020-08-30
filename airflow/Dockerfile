FROM apache/airflow
USER root
RUN apt update
RUN apt-get install -y git cron vim
USER airflow
COPY . /app
WORKDIR /app
ENTRYPOINT [ "/bin/bash", "entrypoint.sh" ]
