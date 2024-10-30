from django.contrib import admin
from fases.models import Fases
# Register your models here.
@admin.register(Fases)

class FasesAdmin(admin.ModelAdmin):
    list_display = ['numero_fase']