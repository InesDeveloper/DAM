/*
Programa coleccion cds
v1
por Inés Martínez Sánchez
*/

#include <stdio.h>
#include <string.h>
//declaro las constantes
#define NOMBREPROGRAMA "Colección CDs"
#define VERSION "1.0"
#define AUTOR "Inés Martínez Sánchez"

int main(int argc,char *argv[]){
    
    //Creo la estructura para los cds
    struct RegistroCDs{
        char titulo[50];
        char artista[50];
        char anio[50];
        char genero[50];
        
    };
    
    struct RegistroCDs cds[100];
    
    strcpy(cds[0].titulo,"Proof");
    strcpy(cds[0].artista,"BTS");
    strcpy(cds[0].anio,"2022");
    strcpy(cds[0].genero,"K-Pop");
    
    
    strcpy(cds[1].titulo,"Master of Puppets");
    strcpy(cds[1].artista,"Metallica");
    strcpy(cds[1].anio,"1986");
    strcpy(cds[1].genero,"Rock Metal");
   
    
    strcpy(cds[2].titulo,"Sings The Blues");
    strcpy(cds[2].artista,"Louis Armstrong");
    strcpy(cds[2].anio,"1954");
    strcpy(cds[2].genero,"Jazz");
    
    
    //Mensaje de bienvenida
    //Encadenamos en el print las constantes
    printf("%s v%s \n",NOMBREPROGRAMA, VERSION);
    printf("por %s \n",AUTOR);
    printf("Selecciona una opcion: \n");
    printf("\t 1 - Listado de cds: \n");
    printf("\t 2 - Introducir un cd: \n");
    printf("\t 3 - Eliminar un cd: \n");
    printf("\t 4 - Buscar un cd: \n");
    printf("\t 5 - Actualizar un cd: \n");
    printf("Indica tu opcion: \n");
    //instruccion para introducir un caracter
    char opcion = getchar();
    printf("La opcion que has seleccionado es: %c \n",opcion);
    
    switch(opcion){
        case '1':
            printf("A continuacion te ofrezco un listado de CDs:\n");
            for(int i=0; i<10; i=i+1){
                
                if(strcmp(cds[i].titulo,"")){
                    printf("Titulo: %s \n",cds[i].titulo);
                    printf("Artista: %s \n",cds[i].artista);
                    printf("Año de lanzamiento: %s \n",cds[i].anio);
                    printf("Género musical: %s \n",cds[i].genero);
                    
                }
            }
            break;
        case '2':
            printf("A continuacion vamos a introducir un cd:\n");
            break;
        case '3':
            printf("A continuacion vamos a eliminar un cd:\n");
            break;
        case '4':
            printf("A continuacion buscamos entre los cd:\n");
            break;
        case '5':
            printf("A continuacion vamos a actualizar un cd:\n");
            break;
        default:
            printf("La opcion que has seleccionado no es valida \n");
            break;
            
    }
    printf("Finalizando la ejecucion del programa... \n");
    printf("\n");
    return 0;
    
}
    
