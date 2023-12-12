#include <iostream>
using namespace std;

string saluda(string nombre,int edad){
    string micadena = "Holi, " + nombre + ", que sepas que tienes " + to_string(edad) + " años y yo te saludo\n";
    return micadena;
}

string saluda(string nombre){
    string micadena = "Holi, " + nombre + ", yo te saludo\n";
    return micadena;
    
}

string saluda(){
    string micadena = "Holi, yo te saludo\n";
    return micadena;
    
}

int main(){
    cout << saluda("Aaa");
    cout << saluda("Bbb");
    cout << saluda("Ccc");
    cout << saluda();
    cout << saluda("Ddd",44);
    return 0;
}