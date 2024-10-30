from rest_framework import serializers
from tiene.models import Tiene

class TieneSerializers(serializers.ModelSerializer):
    class Meta:
        model = Tiene
        fields = ['id_tiene', 'id_fase_fk','id_torneo_fk']