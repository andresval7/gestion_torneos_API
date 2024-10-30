from rest_framework.viewsets import ModelViewSet
from torneos.models import Torneo
from torneos.api.serializers import TorneoSerializers

class TorneoApiViewSet(ModelViewSet):
    serializer_class = TorneoSerializers
    queryset = Torneo.objects.all()