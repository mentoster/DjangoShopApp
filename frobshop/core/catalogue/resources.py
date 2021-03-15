from import_export import resources
from .models import Product, ImportExportCategory, ImportExportProductCategory


class ExportImportResourceProduct(resources.ModelResource):
    class Meta:
        model = Product


# class ExportImportResourceCategory(resources.ModelResource):
#     class Meta:
#         model = ImportExportCategory


# class ExportImportResourceProductCategory(resources.ModelResource):
#     class Meta:
#         model = ImportExportProductCategory
