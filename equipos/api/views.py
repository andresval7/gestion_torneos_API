from rest_framework.viewsets import ModelViewSet
from equipos.models import Equipo
from equipos.api.serializers import EquipoSerializers

#añadir los permisos
from equipos.api.permissions import IsAdminReadOnly

class EquipoApiViewSet(ModelViewSet):
    permission_classes = [IsAdminReadOnly]
    serializer_class = EquipoSerializers
    queryset = Equipo.objects.all()