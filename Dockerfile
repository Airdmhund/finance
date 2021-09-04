FROM python:3.9-slim


ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
ENV HOME /home
ENV PATH $PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin
ENV PYSPARK_PYTHON /usr/bin/python3
ENV PYTHONPATH $HOME/finance-accounting-events
ENV Hello $HOME/DD

#SHELL ["/bin/bash", "-c"]

WORKDIR /home

COPY requirements.txt /home/


RUN apt update && apt upgrade -y && DEBIAN_FRONTEND=noninteractive &&\
    #apt install -y pip python && \
    #pip install -r requirements.txt && \
    mkdir finance-accounting-events && \
    cd finance-accounting-events && \
    mkdir esure && \
    mkdir jars && \
    mkdir tests



WORKDIR /home/finance-accounting-events


