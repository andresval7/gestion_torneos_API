from rest_framework import serializers
from torneos.models import Torneo
from users.models import User

class UserTorneoSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['first_name', 'last_name']

class TorneoSerializers(serializers.ModelSerializer):

    fk_organizador = UserTorneoSerializer(read_only=True)

    class Meta:
        model = Torneo
        fields = '__all__'

class TorneoSerializersCreacion(serializers.ModelSerializer):

    class Meta:
        model = Torneo
        fields = '__all__'

