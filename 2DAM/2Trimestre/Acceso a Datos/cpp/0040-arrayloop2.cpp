#include <iostream>
#include <string.h>
using namespace std;

int main(){
    int longitud = 6;
    string agenda[longitud];
    agenda[0] = "Aaa";
    agenda[1] = "Bbb";
    agenda[2] = "Ccc";
    agenda[3] = "Dcc";
    
    for(int i = 0;i<longitud;i++){
        if(agenda[i] != null){
        cout << "Elemento en la agenda: " << agenda[i] << "\n";
        }
    }
    return 0;
       
}