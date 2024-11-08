from rest_framework.permissions import BasePermission

class IsAdminReadOnly(BasePermission):
    def has_permission(self, request, view):
        if request.method == 'GET' or request.method == 'POST' or request.method == 'PUT' or request.method == 'DELETE' :
            return True
        else:
            return request.user.is_staff