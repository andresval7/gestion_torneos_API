from rest_framework.routers import DefaultRouter
from fases.api.views import FaseApiViewSet

router_fases = DefaultRouter()
router_fases.register(prefix='fases', basename='fases', viewset=FaseApiViewSet)