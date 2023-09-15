#include <stdio.h>

int main(int argc, char *argv[]){
    int numero1 = 4;
    int numero2 = 3;
    // 4 entre 3, cabe a 1 ***Y SOBRA 1***
    int resultado = numero1 % numero2;
    printf("El resultado de la operacion es: %i \n",resultado);
    
    return 0;
}