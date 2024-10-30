from django.db import models
from users.models import User

# Create your models here.
class Torneo(models.Model):
    id_torneo = models.AutoField(primary_key=True)
    nombre_torneo = models.CharField(max_length=20)
    estado_torneo = models.CharField(max_length=20)
    ganador = models.IntegerField()
    deporte = models.CharField(max_length=60)
    fk_organizador = models.ForeignKey(User, models.DO_NOTHING, db_column='fk_organizador')

    class Meta:
        managed = False
        db_table = 'torneo'