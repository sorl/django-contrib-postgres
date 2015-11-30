django-contrib-postgres
=======================
Backport of Django 1.9+ ``django.contrib.postgres``

Usage
-----
::
    from postgres.fields import JSONField
    from django.db import models

    class Dog(models.Model):
        name = models.CharField(max_length=200)
        data = JSONField()

        def __str__(self):  # __unicode__ on Python 2
            return self.name

