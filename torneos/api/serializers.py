from rest_framework import serializers
from torneos.models import Torneo

class TorneoSerializers(serializers.ModelSerializer):
    class Meta:
        model = Torneo
        fields = ['id_torneo', 'nombre_torneo', 'estado_torneo', 'ganador','deporte','fk_organizador']