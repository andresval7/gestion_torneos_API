from rest_framework import serializers
from encuentros.models import Encuentro

class EncuentroSerializers(serializers.ModelSerializer):
    class Meta:
        model = Encuentro
        fields = ['id_encuentro','id_torneo_fke', 'fecha', 'hora','ubicacion']