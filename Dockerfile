FROM python:3.11.5-alpine

RUN pip install --upgrade pip
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY ./dms-project /app

WORKDIR /app

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "sh","/entrypoint.sh" ]