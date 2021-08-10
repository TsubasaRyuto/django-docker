FROM python:3.9.6

ENV PYTHONUNBUFFERED 1

RUN apt-get update -qq && \
    apt-get install -y vim \
                       default-mysql-client \
                       gcc\
                       libmariadb-dev

RUN mkdir /app

WORKDIR /app

ADD ./app/requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt

EXPOSE 8000
