from django.db import models
from torneos.models import Torneo

# Create your models here.

class Equipo(models.Model):
    id_equipo = models.AutoField(primary_key=True)
    nombre_equipo = models.CharField(max_length=50, blank=True, null=True)
    tamano_equipo = models.IntegerField()
    id_torneo_fk = models.ForeignKey(Torneo, models.DO_NOTHING, db_column='id_torneo_fk')

    class Meta:
        managed = False
        db_table = 'equipo'