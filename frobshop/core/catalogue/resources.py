from import_export import resources
from .models import ImportExport


class ExportImportResource(resources.ModelResource):
    class Meta:
        model = ImportExport
