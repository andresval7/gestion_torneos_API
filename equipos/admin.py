from django.contrib import admin
from equipos.models import Equipo

# Register your models here.
@admin.register(Equipo)

class EquipoAdmin(admin.ModelAdmin):
    list_display = ['nombre_equipo', 'ciudad', 'pais','tamano_equipo']