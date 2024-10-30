from django.contrib import admin
from torneos.models import Torneo

# Register your models here.
@admin.register(Torneo)

class TorneoAdmin(admin.ModelAdmin):
    list_display = ['nombre_torneo', 'estado_torneo', 'ganador', 'deporte', 'fk_organizador']