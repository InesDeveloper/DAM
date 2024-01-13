#include <stdio.h>

int main(int argc,char *argv[]){
    
    char* agenda[10][4];
    
    agenda[0][0] = "Ines";
    agenda[0][1] = "Martinez Sanchez";
    agenda[0][2] = "43567";
    agenda[0][3] = "ines@ines.com";
    
    agenda[1][0] = "Juan";
    agenda[1][1] = "Garcia";
    agenda[1][2] = "12434";
    agenda[1][3] = "juan@juan.com";
    
    printf("El correo del segundo registro de la agenda es: %s \n ",agenda[1][3]);
    
    return 0;
}