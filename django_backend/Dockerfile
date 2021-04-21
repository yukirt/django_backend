FROM python:3.9.0-slim
WORKDIR /django-backend
COPY . .

RUN apt-get update && apt-get install -y default-libmysqlclient-dev gcc
RUN pip install -r requirements.txt
ENTRYPOINT ["./bin/run"]
