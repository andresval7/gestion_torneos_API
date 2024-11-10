from rest_framework import serializers
from encuentros.models import Encuentro
from torneos.models import Torneo

class TorneoEncuentroSerializers(serializers.ModelSerializer):

    class Meta:
        model = Torneo
        fields = ['nombre_torneo']

class EncuentroSerializers(serializers.ModelSerializer):
    
    id_torneo_fke = TorneoEncuentroSerializers(read_only=True)
    
    class Meta:
        model = Encuentro
        fields = '__all__'

class EncuentroSerializersCreacion(serializers.ModelSerializer):
        
    class Meta:
        model = Encuentro
        fields = '__all__'