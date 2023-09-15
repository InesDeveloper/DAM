#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int edad;
float posx;
float posy;
float posz;
char* identificador;
char ruta[100];


int bucle(){
    printf("estas dentro del bucle\n\n");
    while(1){
        edad = edad + 1;
        posx = posx + (float)((float)(rand()%100)/100)-0.5;
        posy = posy + (float)((float)(rand()%100)/100)-0.5;               printf("ejecutando\n");
        printf("El identificador de esta persona es el %s \n",identificador);
        printf("Tienes una edad de %i segundos\n",edad);
        printf("Coordenadas: x=%f,y=%f \n",posx,posy);
        printf("\n");
                              
        FILE *fp; 
        
        fp = fopen(ruta, "w+");                    
        fprintf(fp, "%f,%f,%f\n",posx,posy,posz);
        fclose(fp); 
        
        usleep(100000);

    }
    return 0;
}

int main(int argc, char *argv[]){
    printf("Hola mundo\n\n");
    // Vamos a dar las condiciones de inicio
    edad = 0;
    posx = 256;
    posy = 256;
    posz = 0;
    
    char aleatorio[50];
    
    sprintf(aleatorio, "%ld", (unsigned long)time(NULL));
    
    identificador = aleatorio;
    strcpy(ruta,"/Applications/MAMP/htdocs/simulador/personas/registros/");
    strcat(ruta,identificador);
    strcat(ruta,".txt");
    
    printf("La edad de esta persona es %i \n",edad);
    bucle();
    return 0;
}