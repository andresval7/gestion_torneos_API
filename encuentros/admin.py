from django.contrib import admin
from encuentros.models import Encuentro
# Register your models here.
@admin.register(Encuentro)

class EncuentroAdmin(admin.ModelAdmin):
    list_display = ['id_torneo_fke', 'fecha', 'hora','ubicacion']