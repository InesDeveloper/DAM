#include <stdio.h>
#include <string.h>

int main(int argc,char *argv[]){
    
    struct RegistroAgenda{
        char nombre[50];
        char apellidos[50];
        char correo[50];
        char telefono[50];
        char direccion[50];
    };
    
    struct RegistroAgenda agenda[100];
    
    strcpy(agenda[0].nombre,"Ines Martinez");
    strcpy(agenda[0].apellidos,"Martinez");
    
    strcpy(agenda[1].nombre,"Javier Martinez");
    strcpy(agenda[1].apellidos,"Martinez");
    
    strcpy(agenda[2].nombre,"Ellie Martinez");
    strcpy(agenda[2].apellidos,"Martinez");
    
   for(int i = 0;i<10;i = i + 1){
    printf("El nombre es: %s \n",agenda[i].nombre);
    printf("El apellido es: %s \n",agenda[i].apellidos);
       
   }
    
    printf("\n");
    return 0;
}