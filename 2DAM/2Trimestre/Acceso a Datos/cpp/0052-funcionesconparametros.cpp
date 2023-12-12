#include <iostream>
using namespace std;

string saluda(string nombre){
    string micadena = "Holi, " + nombre + ", yo te saludo\n";
    return micadena;
}

int main(){
    cout << saluda("Aaa");
    cout << saluda("Bbb");
    cout << saluda("Ccc");
    return 0;
}

