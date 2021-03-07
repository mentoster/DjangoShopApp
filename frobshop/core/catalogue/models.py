from django.db import models

from oscar.apps.catalogue.abstract_models import AbstractProduct


class Person(models.Model):
    name = models.CharField(max_length=30)
    email = models.EmailField(blank=True)
    birth_date = models.DateField()
    location = models.CharField(max_length=100, blank=True)


from oscar.apps.catalogue.models import *  # noqa isort:skip
