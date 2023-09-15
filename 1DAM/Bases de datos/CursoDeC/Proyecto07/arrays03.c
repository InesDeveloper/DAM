#include <stdio.h>

int main(int argc,char *argv[]){
    char* agenda [10][4];
    
    agenda[0][0] = "Ines Martinez";
    agenda[0][1] = "123456789";
    agenda[0][2] = "La calle de Ines";
    agenda[0][3] = "ines@correo.com"; 
    
        
    agenda[1][0] = "Javier Martinez";
    agenda[1][1] = "192837465";
    agenda[1][2] = "La calle de Javier";
    agenda[1][3] = "Javier@correo.com";
        
    agenda[2][0] = "Ellie Martinez";
    agenda[2][1] = "987654321";
    agenda[2][2] = "La calle de Ellie";
    agenda[2][3] = "Ellie@correo.com";
        
    printf("La calle es %s \n",agenda[0][2]);
    
    printf("\n");
    return 0;
}