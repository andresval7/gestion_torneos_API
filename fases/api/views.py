from rest_framework.viewsets import ModelViewSet
from fases.models import Fases
from fases.api.serializers import FaseSerializers

class FaseApiViewSet(ModelViewSet):
    serializer_class = FaseSerializers
    queryset = Fases.objects.all()