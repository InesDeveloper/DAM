#include <stdio.h>

int main(int argc, char *argv[]){
    int numero1 = 4;
    int numero2 = 3;
    int numero3 = 2;
    int numero4 = 6;
    
    // Es cierto que el numero1 NO es igual al numero2
    int comparacion = numero1 != numero2;
    printf("El resultado de la operacion es: %i \n",comparacion);
    
    return 0;
}