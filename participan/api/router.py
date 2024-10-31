from rest_framework.routers import DefaultRouter
from participan.api.views import ParticipaApiViewSet

router_participan = DefaultRouter()
router_participan.register(prefix='participan', basename='participan', viewset=ParticipaApiViewSet)