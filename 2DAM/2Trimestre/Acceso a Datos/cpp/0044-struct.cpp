#include <iostream>
using namespace std;

int main(){
    struct{
        string nombre;
        int telefono;
        string email;  
    }registro1,registro2;
    
    registro1.nombre = "Aaa";
    registro1.telefono = 123123123; 
    registro1.email = "aa@correo.com";

    
    cout << registro1.nombre << "\n";
    return 0;
       
}