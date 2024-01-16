fun main(){
    val diadelasemana:Int = 3
    val resultado = when(diadelasemana){
        1 -> "Hoy es el peor día de la semana"
        2 -> "Hoy es el segundo peor día de la semana"
        3 -> "Ya estamos a mitad de semana"
        4 -> "Ya es casi viernes"
        5 -> "Por fin es viernes"
        6 -> "Hoy es el mejor día de la semana"
        7 -> "Y mañana ya es lunes"
        else -> "No sé que has escrito"
    }
    println(resultado)
}