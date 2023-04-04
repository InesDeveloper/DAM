#include <stdio.h>

int main(int argc,char *argv[]){
    char* agenda [10][5];
    
    agenda[0][0] = "Ines Martinez";
    agenda[0][1] = "123456789";
    agenda[0][2] = "La calle de Ines";
    agenda[0][3] = "ines@correo.com"; 
    agenda[0][4] = "Martinez";
        
    agenda[1][0] = "Javier Martinez";
    agenda[1][1] = "192837465";
    agenda[1][2] = "La calle de Javier";
    agenda[1][3] = "Javier@correo.com";
    agenda[1][4] = "Martinez";
        
    agenda[2][0] = "Ellie Martinez";
    agenda[2][1] = "987654321";
    agenda[2][2] = "La calle de Ellie";
    agenda[2][3] = "Ellie@correo.com";
    agenda[2][4] = "Martinez";
        
    agenda[3][0] = "Ines Martinez";
    agenda[3][1] = "123456789";
    agenda[3][2] = "La calle de Ines";
    agenda[3][3] = "ines@correo.com"; 
    agenda[3][4] = "Martinez";
        
    agenda[4][0] = "Javier Martinez";
    agenda[4][1] = "192837465";
    agenda[4][2] = "La calle de Javier";
    agenda[4][3] = "Javier@correo.com";
    agenda[4][4] = "Martinez";
        
    agenda[5][0] = "Ellie Martinez";
    agenda[5][1] = "987654321";
    agenda[5][2] = "La calle de Ellie";
    agenda[5][3] = "Ellie@correo.com";
    agenda[5][4] = "Martinez";
    
    for(int registro = 0;registro <=5;registro =registro + 1){
        for(int campo = 0;campo <=4;campo = campo + 1){
            printf("-%s \n",agenda[registro][campo]);
        }
         printf("\n");
    } 
    
    printf("\n");
    return 0;
}