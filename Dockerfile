# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirementNew.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .
RUN chmod +x main.py

CMD [ "nohup", "python3", "main.py", "&" ]
