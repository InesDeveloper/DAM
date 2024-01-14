#include <stdio.h>
#include <string.h>
#include <sys/stat.h>

int main(int argc, char *argv[]){
    FILE *archivo;
    char *operacion = argv[1];
    char *basededatos = argv[2];
    char *coleccion = argv[3];
        
    if(strcmp(operacion,"select") == 0){
        char *documento = argv[4];
        char conextension[100];
        char ruta[100];

        strcpy(conextension,documento);
        strcat(conextension,".json");
        
        strcpy(ruta,"db/");
        strcat(ruta,basededatos);
        strcat(ruta,"/");
        strcat(ruta,coleccion);
        strcat(ruta,"/");
        strcat(ruta,conextension);
        archivo = fopen(ruta,"r");
        printf("te doy datos:\n");
        char linea[1024];
        while(fgets(linea,sizeof(linea),archivo) != NULL){
            printf("Linea: %s", linea);
        }
        fclose(archivo);
    }else if(strcmp(operacion,"insert") == 0){
        char *documento = argv[4];
        char conextension[100];
        char ruta[100];

        strcpy(conextension,documento);
        strcat(conextension,".json");

        strcpy(ruta,"db/");
        strcat(ruta,basededatos);
        strcat(ruta,"/");
        strcat(ruta,coleccion);
        strcat(ruta,"/");
        strcat(ruta,conextension);
        archivo = fopen(ruta,"w"); 
        char *texto = argv[5];
        fputs(strcat(texto,"\n"), archivo);
        fclose(archivo);
    }else if(strcmp(operacion,"create_collection") == 0){
        char rutacoleccion[100];
        strcpy(rutacoleccion,"db/");
        strcat(rutacoleccion,basededatos);
        strcat(rutacoleccion,"/");
        strcat(rutacoleccion,coleccion);
        if(mkdir(rutacoleccion, 0777) == 0){
            printf("ok");
        }else{
            printf("ko");
        }
    }else {
        printf("Operacion no valida");
    }
    
    return 0;
}