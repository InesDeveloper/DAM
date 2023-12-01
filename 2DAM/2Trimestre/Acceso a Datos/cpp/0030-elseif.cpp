#include <iostream>
using namespace std;

int main(){
    string diadelasemana = "tomate";
    if(diadelasemana == "lunes"){
        cout << "hoy es el peor dia de la semana\n";
    }else if(diadelasemana == "martes"){
        cout << "hoy es el segundo peor dia de la semana\n";
    }else if(diadelasemana == "miercoles"){
        cout << "ya estamos a mitad de semana\n"; 
    }else if(diadelasemana == "jueves"){
        cout << "hoy es jueves\n"; 
    }else if(diadelasemana == "viernes"){
        cout << "ya se acaba la semana\n"; 
    }else if(diadelasemana == "sabado"){
        cout << "hoy es el mejor día de la semana\n"; 
    }else if(diadelasemana == "domingo"){
        cout << "mañana ya es lunes otra vez\n"; 
    }else{
        cout << "lo que has introducido no es un dia de la semana\n";    
    }
    
    return 0;
}