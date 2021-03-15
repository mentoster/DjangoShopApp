from import_export import resources
from .models import Product


class ExportImportResourceProduct(resources.ModelResource):
    class Meta:
        model = Product
