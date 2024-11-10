from django.db import models
from users.models import User

# Create your models here.
class Torneo(models.Model):
    id_torneo = models.AutoField(primary_key=True)
    nombre_torneo = models.CharField(max_length=50)
    fecha_inicio = models.DateField()
    fecha_fin = models.DateField()
    ubicacion = models.CharField(max_length=100, blank=True, null=True)
    deporte = models.CharField(max_length=60, blank=True, null=True)
    tipo_torneo = models.CharField(max_length=60, blank=True, null=True)
    fk_organizador = models.ForeignKey(User, on_delete=models.PROTECT, db_column='fk_organizador', related_name='torneos')

    class Meta:
        managed = False
        db_table = 'torneo'

    def __str__(self) :
        return str(self.id_torneo)+"-"+self.nombre_torneo