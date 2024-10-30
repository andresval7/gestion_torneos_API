from django.contrib import admin
from equipos.models import Equipo

# Register your models here.
@admin.register(Equipo)

class TieneAdmin(admin.ModelAdmin):
    list_display = ['nombre_equipo', 'tamano_equipo', 'id_torneo_fk']