#include <iostream>
using namespace std;

int main(){
    struct registro{
        string nombre;
        int telefono;
        string email;  
    };
    
    registro agenda[7];
    agenda[0].nombre = "Aaa";
    agenda[0].telefono = 123123123; 
    agenda[0].email = "aa@correo.com";

    
    cout << agenda[0].nombre << "\n";
    return 0;
       
}