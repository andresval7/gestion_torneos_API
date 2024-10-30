from django.db import models

# Create your models here.
class Fases(models.Model):
    id_fase = models.AutoField(primary_key=True)
    numero_fase = models.CharField(max_length=40)

    class Meta:
        managed = False
        db_table = 'fases'