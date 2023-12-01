#include <iostream>
using namespace std;

int main(){
    int edad = 14;
    cout << "inicio del programa\n";
    if(edad < 30){
        if(edad < 20){
            cout << "Eres muy joven\n";
        }else{
        cout << "Eres joven\n";
    }
    }else{
        if(edad < 40){
            cout << "Ya no eres tan joven\n";
        }else{
            cout << "Definitivamente ya no eres tan joven\n";
        }
    }
    cout << "Continúo con la ejecución del programa\n";
    return 0;
}