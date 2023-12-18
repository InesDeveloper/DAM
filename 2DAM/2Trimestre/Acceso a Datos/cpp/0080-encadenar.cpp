#include <iostream>
#include <string>
using namespace std;

int main(){
    string nombre = "Ines";
    string apellidos = "Martínez";
    string retorno = "\n";
    string nombrecompleto = nombre+" "+apellidos+retorno;
    
    cout << nombrecompleto;
    
    return 0;
}