from rest_framework.routers import DefaultRouter
from tiene.api.views import TieneApiViewSet

router_tiene = DefaultRouter()
router_tiene.register(prefix='tiene', basename='tiene', viewset=TieneApiViewSet)