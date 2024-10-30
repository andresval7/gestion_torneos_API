from django.contrib import admin
from tiene.models import Tiene

# Register your models here.
@admin.register(Tiene)

class TieneAdmin(admin.ModelAdmin):
    list_display = ['id_fase_fk', 'id_torneo_fk']