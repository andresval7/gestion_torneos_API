from django.db import models
from fases.models import Fases
from torneos.models import Torneo

# Create your models here.
class Tiene(models.Model):
    id_tiene = models.IntegerField(primary_key=True)
    id_fase_fk = models.ForeignKey(Fases, models.DO_NOTHING, db_column='id_fase_fk')
    id_torneo_fk = models.ForeignKey(Torneo, models.DO_NOTHING, db_column='id_torneo_fk')

    class Meta:
        managed = False
        db_table = 'tiene'