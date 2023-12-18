#include <iostream>
#include <string>
using namespace std;

int main(){
    string nombre = "Yo me llamo Inés Martínez";
    
    for(int i = 0;i<nombre.length();i++){
        if(i%2 == 0){
            nombre[i] = '*';
        }
    }
    cout << nombre << "\n";
    
    return 0;
}