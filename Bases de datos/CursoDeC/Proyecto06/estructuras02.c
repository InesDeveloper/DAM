#include <stdio.h>

int main(int argc,char *argv[]){
    int edad = 52;
    if(edad < 20){
        // Esto se ejecuta en el caso verdadero
    if(edad < 10){
        printf("Eres un niño \n")
    }else{
        // Esto se ejecuta en el caso falso    
        printf("Eres un adolescente \n");
    } 
    }else{
        // Esto se ejecuta en el caso falso
        if(edad < 30){
            // Esto se ejecuta en caso verdadero
            printf("Eres un joven \n");
        }else{
            // Esto se ejecuta en el caso falso
            printf("Ya no eres tan joven \n")
        }
    }
    return 0;
}