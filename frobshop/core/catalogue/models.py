from django.db import models

from oscar.apps.catalogue.abstract_models import AbstractProduct, AbstractCategory, AbstractProductCategory


class Product(AbstractProduct):
    article = models.TextField(max_length=30, default="null")
    series = models.TextField(max_length=20, default="null")
    seo_name_for_site = models.TextField(max_length=50, default="null")
    category = models.TextField(max_length=20, default="null")
    barcode = models.TextField(max_length=13, default="null")
    attribute = models.TextField(max_length=10, default="null")
    image_url = models.URLField()


# class ImportExportCategory(AbstractCategory):
#     class Meta:
#         verbose_name = 'Импорт и Экспорт Категорий'
#         verbose_name_plural = 'Импорт и Экспорт Категорий'


# class ImportExportProductCategory(AbstractProductCategory):
#     class Meta:
#         verbose_name = 'Импорт и Экспорт Категории продуктов'
#         verbose_name_plural = 'Импорт и Экспорт Категории продуктов'
from oscar.apps.catalogue.models import *  # noqa isort:skip
