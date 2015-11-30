#!/bin/bash


git clone --depth 1 git@github.com:django/django.git &&
cp -R django/django/contrib/postgres . &&
cd postgres &&
rpl -R -x.py "from django.contrib.postgres import" "from postgres import" . &&
rpl -R -x.py "django.contrib.postgres" "postgres" . &&
rm -Rf django
