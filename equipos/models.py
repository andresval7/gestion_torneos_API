from django.db import models
from torneos.models import Torneo

# Create your models here.

class Equipo(models.Model):
    id_equipo = models.AutoField(primary_key=True)
    nombre_equipo = models.CharField(max_length=100)
    ciudad = models.CharField(max_length=100, blank=True, null=True)
    pais = models.CharField(max_length=100)
    tamano_equipo = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'equipo'
        
    def __str__(self) :
        return str(self.id_equipo)+"-"+self.nombre_equipo