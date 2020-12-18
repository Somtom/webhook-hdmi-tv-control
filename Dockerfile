FROM python:3.9.1-buster

RUN apt-get update && apt-get upgrade && apt-get install cec-utils -y

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN pip install -r ./requirements.txt

CMD python main.py
