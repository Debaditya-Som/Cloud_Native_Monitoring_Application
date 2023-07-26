FROM python:3.9-buster

RUN mkdir -p /app

WORKDIR /app

COPY . .

RUN pip install --no cache dir -requirements.txt

ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

CMD ["flask", "run"]