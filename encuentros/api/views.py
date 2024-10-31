from rest_framework.viewsets import ModelViewSet
from encuentros.models import Encuentro
from encuentros.api.serializers import EncuentroSerializers

#añadir los permisos
#from equipos.api.permissions import IsAdminReadOnly

class EncuentroApiViewSet(ModelViewSet):
    #permission_classes = [IsAdminReadOnly]
    serializer_class = EncuentroSerializers
    queryset = Encuentro.objects.all()