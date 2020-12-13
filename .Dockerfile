FROM 3.9.1-buster

COPY ./ /usr/src/app

WORKDIR /user/src/app

ENV FLASK_APP main.py

CMD pip install ./requirements.py
