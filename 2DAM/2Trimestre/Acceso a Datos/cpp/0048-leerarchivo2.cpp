#include <iostream>
#include <fstream>

using namespace std;

int main(){
    string linea;
    ifstream archivo;
    archivo.open ("miarchivo2.txt");
    if(archivo.is_open()){
        while(getline(archivo,linea)){
        cout << linea << "\n";
        }
    }else{
        cout << "Ha ocurrido algun tipo de error\n";
    }
    archivo.close();
    return 0;  
}