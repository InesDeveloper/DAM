#include <iostream>
#include <string>
using namespace std;

int main(){
    string nombre = "Inés Martínez";
    string &referencia = nombre;
    
    cout << referencia << "\n";
    
    return 0;
}