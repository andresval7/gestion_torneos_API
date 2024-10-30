from rest_framework.viewsets import ModelViewSet
from tiene.models import Tiene
from tiene.api.serializers import TieneSerializers

class TieneApiViewSet(ModelViewSet):
    serializer_class = TieneSerializers
    queryset = Tiene.objects.all()