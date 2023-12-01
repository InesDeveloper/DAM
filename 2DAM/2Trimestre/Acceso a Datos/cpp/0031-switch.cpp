#include <iostream>
using namespace std;

int main(){
    int diadelasemana = 1;
    
    switch(diadelasemana){
        case 1:
            cout << "hoy es el peor dia de la semana\n";
            break;
        case 2:
            cout << "hoy es el segundo peor dia de la semana\n";
            break;
        case 3:    
            cout << "ya estamos a mitad de semana\n"; 
            break;
        case 4:    
            cout << "hoy es jueves\n"; 
            break;
        case 5:
            cout << "ya se acaba la semana\n";
            break;
        case 6:
            cout << "hoy es el mejor día de la semana\n"; 
            break;
        case 7:    
            cout << "mañana ya es lunes otra vez\n"; 
            break;
        default:
            cout << "lo que has introducido no es un dia de la semana\n";    
        }
    
    return 0;
}