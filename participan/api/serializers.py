from equipos.models import Equipo
from torneos.models import Torneo
from rest_framework import serializers
from participan.models import Participa
from encuentros.models import Encuentro

class TorneoParticipaSerializers(serializers.ModelSerializer):  
    class Meta:
        model = Torneo
        fields = ['nombre_torneo']

class EncuentroParticipaSerializers(serializers.ModelSerializer):
    id_torneo_fke = TorneoParticipaSerializers(read_only=True)   
    class Meta:
        model = Encuentro
        fields = ['id_encuentro','id_torneo_fke', 'fase_encuentro']

class EquipoParticipaSerializers(serializers.ModelSerializer):
    class Meta:
        model = Equipo
        fields = ['nombre_equipo']

class ParticipaSerializers(serializers.ModelSerializer):

    id_encuentro_fk = EncuentroParticipaSerializers(read_only=True)
    id_equipo_fk = EquipoParticipaSerializers(read_only=True)
    class Meta:
        model = Participa
        fields = '__all__'
        #['id_participa','id_encuentro_fk', 'id_equipo_fk', 'puntuacion','resultado', 'anotaciones']

class ParticipaSerializersCreacion(serializers.ModelSerializer):

    class Meta:
        model = Participa
        fields = '__all__'