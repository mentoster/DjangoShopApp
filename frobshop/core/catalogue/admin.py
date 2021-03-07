from oscar.apps.catalogue.admin import *  # noqa
from .models import Product
from import_export import resources
from import_export.admin import ImportExportModelAdmin


class ProductResource(resources.Resource):
    class Meta:
        model = Product


class ProductAdmin(ImportExportModelAdmin):
    resource_class = ProductResource


admin.site.unregister(Product)
admin.site.register(Product, ProductAdmin)
