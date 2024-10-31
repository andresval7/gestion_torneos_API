from django.db import models
from encuentros.models import Encuentro
from equipos.models import Equipo

# Create your models here.
class Participa(models.Model):
    id_participa = models.AutoField(primary_key=True)
    id_encuentro_fk = models.ForeignKey(Encuentro, models.DO_NOTHING, db_column='id_encuentro_fk', blank=True, null=True)
    id_equipo_fk = models.ForeignKey(Equipo, models.DO_NOTHING, db_column='id_equipo_fk', blank=True, null=True)
    puntuacion = models.IntegerField(blank=True, null=True)
    resultado = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'participa'