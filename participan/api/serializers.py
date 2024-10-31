from rest_framework import serializers
from participan.models import Participa

class ParticipaSerializers(serializers.ModelSerializer):
    class Meta:
        model = Participa
        fields = ['id_participa','id_encuentro_fk', 'id_equipo_fk', 'puntuacion','resultado']