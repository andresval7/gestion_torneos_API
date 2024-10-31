from rest_framework.routers import DefaultRouter
from encuentros.api.views import EncuentroApiViewSet

router_encuentros = DefaultRouter()
router_encuentros.register(prefix='encuentros', basename='encuentros', viewset=EncuentroApiViewSet)