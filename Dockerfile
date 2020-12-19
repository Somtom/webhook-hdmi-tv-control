FROM balenalib/rpi-raspbian:latest

RUN apt-get update -y && apt-get upgrade -y
RUN  apt-get install -y python-pip python-setuptools cec-utils

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN pip install -r ./requirements.txt

CMD python main.py
