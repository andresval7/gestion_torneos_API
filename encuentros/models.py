from django.db import models
from torneos.models import Torneo
# Create your models here.
class Encuentro(models.Model):
    id_encuentro = models.AutoField(primary_key=True)
    id_torneo_fke = models.ForeignKey(Torneo, models.DO_NOTHING, db_column='id_torneo_fke', blank=True, null=True)
    fecha = models.DateField()
    hora = models.TimeField()
    ubicacion = models.CharField(max_length=100, blank=True, null=True)
    

    class Meta:
        managed = False
        db_table = 'encuentro'

    