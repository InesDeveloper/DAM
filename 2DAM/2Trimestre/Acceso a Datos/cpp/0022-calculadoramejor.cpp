#include <iostream>
using namespace std;

int main(){
    
// Declaración de las variables que van a usarse    
    int operando1;
    int operando2;
    int suma;
// Entrada de datos por parte del usuario    
    cout << "Introduce el valor del primer operando: \n";
    cin >> operando1;
    cout << "Introduce el valor del segundo operando: \n";
    cin >> operando2;
// Cálculos con la información que ha infroducido el usuario    
    suma= operando1 + operando2;
// Sacamos resultados por pantalla
    cout << "El valos de la suma es de " << suma << "\n";
    
    return 0;
}