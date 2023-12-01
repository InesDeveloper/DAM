#include <iostream>
using namespace std;

int main(){
    int edad = 20;
    cout << "Mi edad es de " << edad << " años \n";
    edad = 34;
    cout << "Mi edad es de " << edad << " años \n";
    const float PI = 3.1416;
    cout << "El valor del número pi es: " << PI << "\n";
    PI = 4;
    cout << "El valor del número pi es: " << PI << "\n";
    return 0;
}