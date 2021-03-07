from oscar.apps.catalogue.admin import *  # noqa
from import_export.admin import ImportExportModelAdmin
from django.contrib import admin
from .models import ImportExport


@admin.register(ImportExport)
class PersonAdmin(ImportExportModelAdmin):
    pass
