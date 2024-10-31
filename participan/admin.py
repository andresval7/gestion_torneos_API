from django.contrib import admin
from participan.models import Participa

# Register your models here.
@admin.register(Participa)

class ParticipaAdmin(admin.ModelAdmin):
    list_display = ['id_encuentro_fk', 'id_equipo_fk', 'puntuacion','resultado']