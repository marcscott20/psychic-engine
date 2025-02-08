FROM python:3.12
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
CMD exec gunicorn -b 0.0.0.0:8080 -w 4 app:app
