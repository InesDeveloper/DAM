#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <pthread.h>
#include <string.h>

void *myThreadFun(void *vargp)
{
    // Story the value argument passed to this thread
    int *myid = (int *)vargp;
    char ruta[100] = "./persona ";
    
    char idstring[100];
    sprintf(idstring, myid, 42);
    strcat(ruta,idstring);
    system(ruta);
    // Print the argument, static and global variables
    printf("Thread ID: %d\n", *myid);
    return 0;
}

int main()
{
    int i;
    pthread_t tid;
    
    // Let us create three threads
    for (i = 0; i < 3; i++)
        pthread_create(&tid, NULL, myThreadFun, (void *)&tid);
    
    pthread_exit(NULL);
    return 0;
}