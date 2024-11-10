from django.db import models
from torneos.models import Torneo
# Create your models here.
class Encuentro(models.Model):
    id_encuentro = models.AutoField(primary_key=True)
    id_torneo_fke = models.ForeignKey(Torneo, on_delete = models.CASCADE, db_column='id_torneo_fke', blank=True, null=True, related_name='torneos')
    fecha = models.DateField()
    hora = models.TimeField()
    ubicacion = models.CharField(max_length=100, blank=True, null=True)
    fase_encuentro = models.CharField(max_length=70, blank=True, null=True)
    

    class Meta:
        managed = False
        db_table = 'encuentro'

    