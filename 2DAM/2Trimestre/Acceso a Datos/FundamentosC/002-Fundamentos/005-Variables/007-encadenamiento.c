#include <stdio.h>
#include <string.h>

int main(int argc,char *argv[]){
    
    char nombre[] = "Ines ";
    char apellidos[] = "Martinez Sanchez";
    
    strcat(nombre,apellidos);
    printf("Mi nombre completo es: %s",nombre);
    
    return 0;
}