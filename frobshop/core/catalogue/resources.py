from import_export import resources
from .models import Product


class ExportImportResource(resources.ModelResource):
    class Meta:
        model = Product
