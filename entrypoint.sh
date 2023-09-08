#!/bin/sh

python3 manage.py migrate
python3 manage.py collectstatic --noinput

gunicorn vayu.wsgi:application --bind 0.0.0.0:8000
