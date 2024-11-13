from rest_framework.viewsets import ModelViewSet
#from rest_framework.views import APIView
#from rest_framework.response import Response
from torneos.models import Torneo
from torneos.api.serializers import TorneoSerializers, TorneoSerializersCreacion
#añadir los permisos
from torneos.api.permissions import IsAdminReadOnly

class TorneoApiViewSet(ModelViewSet):
    
    permission_classes = [IsAdminReadOnly]
    #serializer_class = TorneoSerializers
    queryset = Torneo.objects.all()

    def get_serializer_class(self):
        if self.action == 'list' or self.action == 'retrieve':
            return TorneoSerializers
        return TorneoSerializersCreacion