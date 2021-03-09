from django.db import models

from oscar.apps.catalogue.abstract_models import AbstractProduct


class Product(AbstractProduct):
    article = models.TextField(max_length=30)
    series = models.TextField(max_length=20)
    seo_name_for_site = models.TextField(max_length=50)
    category = models.TextField(max_length=20)
    barcode = models.TextField(max_length=13)
    attribute = models.TextField(max_length=10)
    image_url = models.URLField()


from oscar.apps.catalogue.models import *  # noqa isort:skip
