from rest_framework import serializers
from torneos.models import Torneo

class TorneoSerializers(serializers.ModelSerializer):
    class Meta:
        model = Torneo
        fields = ['id_torneo', 'nombre_torneo', 'fecha_inicio', 'fecha_fin', 'ubicacion','deporte', 'tipo_torneo', 'fk_organizador']