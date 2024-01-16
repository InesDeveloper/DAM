fun main(){
    val nombre:String = "Inés Martínez"
    val nombre2:String = "Inés Martínez"
    val solo_nombre:String = "Inés"
    val apellidos:String = "Sánchez"
    println(nombre.length)
    println(nombre.uppercase())
    println(nombre.lowercase())
    println(nombre.compareTo(nombre2))
    println(nombre.indexOf(solo_nombre))
    println(nombre+" "+apellidos)
    println(nombre.plus(apellidos))
    println("Mi nombre es: $nombre $apellidos")
}