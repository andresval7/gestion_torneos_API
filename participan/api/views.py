from rest_framework.viewsets import ModelViewSet
from participan.models import Participa
from participan.api.serializers import ParticipaSerializers, ParticipaSerializersCreacion

#añadir los permisos
#from equipos.api.permissions import IsAdminReadOnly

class ParticipaApiViewSet(ModelViewSet):
    #permission_classes = [IsAdminReadOnly]
    serializer_class = ParticipaSerializers
    queryset = Participa.objects.all()

    def get_serializer_class(self):
        if self.action == 'list' or self.action == 'retrieve':
            return ParticipaSerializers
        return ParticipaSerializersCreacion