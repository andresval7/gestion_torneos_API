from django.contrib import admin
from torneos.models import Torneo

# Register your models here.
@admin.register(Torneo)

class TorneoAdmin(admin.ModelAdmin):
    list_display = ['id_torneo', 'nombre_torneo', 'fecha_inicio', 'fecha_fin', 'ubicacion','deporte', 'tipo_torneo', 'fk_organizador']