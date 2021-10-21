#!/bin/bash

DJANGO_PORT=8001

python3 /opt/djproj/manage.py runserver "0.0.0.0:${DJANGO_PORT:=8000}"
