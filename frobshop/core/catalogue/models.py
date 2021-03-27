from django.db import models

from oscar.apps.catalogue.abstract_models import AbstractProduct


class SyncBD():
    pass


class Product(AbstractProduct):
    price = models.IntegerField(default=999999)
    article = models.TextField(max_length=30, default="null")
    series = models.TextField(max_length=20, default="null")
    seo_name_for_site = models.TextField(max_length=50, default="null")
    category = models.TextField(max_length=20, default="null")
    barcode = models.TextField(max_length=13, default="null")
    attribute = models.TextField(max_length=10, default="null")
    image_url = models.URLField()


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
