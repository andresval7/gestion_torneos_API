from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework import generics
from users.models import User
from users.api.serializers import UserRegisterSerializer, UserSerializer, UserUpdateSerializer, OrganizadorSerializer
from django.http import Http404

class RegisterView(APIView):
    def post(self, request, format=None):
        print('Registro de usuario')
        #return Response(status=status.HTTP_400_BAD_REQUEST)
        serializer = UserRegisterSerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
class UserView(APIView):
    permission_classes = [IsAuthenticated]
    def get(self, request):
        serializer = UserSerializer(request.user)
        return Response(serializer.data)
    
    #sobrescribir para modificar el update de la clase users_user de django
    def put(self,request):
        user = User.objects.get(id=request.user.id)
        serializer = UserUpdateSerializer(user, request.data)

        if serializer.is_valid(raise_exception=True):
            serializer.save()
            return Response(serializer.data)
        
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
class OrganizadorView(generics.ListAPIView):
    queryset = User.objects.filter(is_staff=True)
    serializer_class = UserSerializer