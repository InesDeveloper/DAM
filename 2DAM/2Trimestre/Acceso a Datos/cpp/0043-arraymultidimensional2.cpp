#include <iostream>
using namespace std;

int main(){
    int longitud = 7;
    string agenda[longitud][3];
    agenda[0][0] = "Aaa";
    agenda[0][1] = "123123123";
    agenda[0][2] = "aa@correo.com";
    
    agenda[1][0] = "Bbb";
    agenda[1][1] = "456456456";
    agenda[1][2] = "bb@correo.com";
    
    agenda[2][0] = "Ccc";
    agenda[2][1] = "789789789";
    agenda[2][2] = "cc@correo.com";
    
    for(int i = 0;i<longitud;i++){
        cout << "nombre: " << agenda[i][0] << " - teléfono: " << agenda[i][1] << " - email: " << agenda[i][2]<< "\n";
    }
    return 0;
       
}