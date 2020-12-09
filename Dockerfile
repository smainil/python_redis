FROM python:3.7.0-alpine3.8

WORKDIR /usr/src/app

COPY app.py .
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=app.py

CMD flask run --host=0.0.0.0 --port 80
