#include <iostream>
using namespace std;

class Persona {
    public:
        string nombre;
        int edad;
    
    void saluda() {
        cout << "Yo te digo holi\n";
    }
};

int main(){
    Persona persona1;
    persona1.nombre = "Inés";
    persona1.edad = 36;
    
    Persona persona2;
    persona2.nombre = "Camilo";
    persona2.edad = 34;
    
    cout << persona1.nombre << "\n";
    cout << persona2.nombre << "\n";
    
    persona1.saluda();
    
    return 0;
}