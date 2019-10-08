FROM python:3.7-alpine
MAINTAINER Expert Consortium Ltd

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D eclbd2019
USER eclbd2019
