from django.db import models
from django.contrib.postgres.fields import ArrayField
from oscar.apps.catalogue.abstract_models import AbstractProduct


class SyncBD():
    pass


class Product(AbstractProduct):
    article = models.TextField(max_length=30, default="null")
    series = models.TextField(max_length=20, default="null")


class ImportFromApi():
    api = models.TextField(blank=True, max_length=200)

    def import_from_api(self, *args, **kwargs):
        print("hello wolrd!!")
        pass

    class Meta:
        db_table = ''
        managed = True
        verbose_name = 'Импортировать из Апи'
        verbose_name_plural = 'Импортировать из Апи'


from oscar.apps.catalogue.models import *  # noqa isort:skip
