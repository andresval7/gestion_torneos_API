from rest_framework import serializers
from equipos.models import Equipo

class EquipoSerializers(serializers.ModelSerializer):
    class Meta:
        model = Equipo
        fields = ['id_equipo', 'nombre_equipo', 'ciudad', 'pais','tamano_equipo']
    