from oscar.apps.catalogue.admin import *  # noqa
from .models import Product
from import_export import resources


class ProductResource(resources.Resource):
    class Meta:
        model = Product
