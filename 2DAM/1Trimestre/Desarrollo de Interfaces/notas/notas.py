# Programa notas (c) 2023 Inés Martínez Sánchez

# Créditos iniciales
print("Programa notas")                     # Indico el nombre del programa
print("(c) 2023 Inés Martínez Sánchez")     # Indico el autor

class Nota:                                 # Declaramos una clase
    def __init__(self, texto, color, fecha):# Método constructor
        self.texto = texto                  # Propiedad texto
        self.color = color                  # Propiedad color
        self.fecha = fecha                  # Propiedad fecha
    
nota = "Esta es mi primera nota"            # Creo un valor inicial para la variable
notas = []                                  # Creo una lista vacía
    
print("Introduce el contenido de tu nota")  # Le digo al usuario lo que espero que haga
nota = input()                              # Almaceno la entrada del usuario en la variable
print("el contenido de tu nota es: "+nota)  # La muestro por pantalla

for i in range(0,10):                                                   # Permito al usuario introducir varias notas
    print("Introduce el contenido de la siguiente nota en la lista")    # Le digo al usuario lo que espero que haga
    entrada = input()                                                   # Capturo la entrada del usuario
    print("Introduce el color de la nota")                              # Le solicito al usuario el color de la nota
    color = input()                                                     # Capturo el color de la nota
    print("Introduce la fecha de la nota")                              # Le solicito al usuario la fecha de la nota
    fecha = input()                                                     # Capturo la fecha de la nota
    if entrada == "salir":                                              # Si lo que el usuario introduce es "salir"
        break                                                           # Salgo del bucle
    else:                                                               # En caso contrario
        notas.append(Nota(entrada,color,fecha))                         # Añado una nueva nota vacía a la lista
        print("Has introducido una nueva nota")                         # Saco la entrada del usuario por pantalla

print("Saco el contenido de todas las notas")                           # Imprimo la lista de notas
for i in notas:                                                         # Para cada una de las notas
    print(i.texto)                                                      # Imprimo su contenido
    print(i.color)                                                      # Imprimo su color
    print(i.fecha)                                                      # Imprimo su fecha
