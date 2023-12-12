#include <iostream>
// Compilar con g++ -std=c++11 0041-arrayloop3.cpp
using namespace std;

int main(){
    int longitud = 6;
    string agenda[longitud];
    agenda[0] = "Aaa";
    agenda[1] = "Bbb";
    agenda[2] = "Ccc";
    agenda[3] = "Dcc";
    
    for(string i : agenda){
        cout << "Tengo un elemento en la agenda que es: " << i << "\n";
    }
    return 0;
       
}