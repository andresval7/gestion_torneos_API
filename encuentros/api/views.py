from rest_framework.viewsets import ModelViewSet
from encuentros.models import Encuentro
from encuentros.api.serializers import EncuentroSerializers, EncuentroSerializersCreacion

#añadir los permisos
#from equipos.api.permissions import IsAdminReadOnly

class EncuentroApiViewSet(ModelViewSet):
    #permission_classes = [IsAdminReadOnly]
    serializer_class = EncuentroSerializers
    queryset = Encuentro.objects.all()

    def get_serializer_class(self):
        if self.action == 'list' or self.action == 'retrieve':
            return EncuentroSerializers
        return EncuentroSerializersCreacion