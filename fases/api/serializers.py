from rest_framework import serializers
from fases.models import Fases

class FaseSerializers(serializers.ModelSerializer):
    class Meta:
        model = Fases
        fields = ['numero_fase']