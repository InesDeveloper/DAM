function saluda(nombre,edad,email){
    cadena = "";
    cadena += "Me llamo "+nombre+".\n";
    cadena += "Tengo "+edad+" años\n"
    cadena += "Mi correo es "+email+"\n"
    return cadena;
}


console.log(saluda("Inés",45,"ines@correo.com"));
console.log(saluda("Javi",46,"javi@correo.com"));
console.log(saluda("Julia",47,"julia@correo.com"));
