from django.db import models

from oscar.apps.catalogue.abstract_models import AbstractProduct


class Product(AbstractProduct):
    barcode = models.TextField(max_length=13)
    image_url = models.URLField()
    attribute = models.TextField(max_length=10)


from oscar.apps.catalogue.models import *  # noqa isort:skip
