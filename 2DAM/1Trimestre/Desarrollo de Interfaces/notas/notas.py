# Programa notas (c) 2023 Inés Martínez Sánchez

#Créditos iniciales
print("Programa notas")                     # Indico el nombre del programa
print("(c) 2023 Inés Martínez Sánchez")     # Indico el autor

nota = "Esta es mi primera nota"            # Creo un valor inicial para la variable
notas = []                                  # Creo una lista vacía
    
print("Introduce el contenido de tu nota")  # Le digo al usuario lo que espero que haga
nota = input()                              # Almaceno la entrada del usuario en la variable
print("el contenido de tu nota es: "+nota)  # La muestro por pantalla

for i in range(0,10):                                                   # Permito al usuario introducir varias notas
    print("Introduce el contenido de la siguiente nota en la lista")    # Le digo al usuario lo que espero que haga
    entrada = input()                                                   # Capturo la entrada del usuario
    if entrada == "salir":                                              # Si lo que el usuario introduce es "salir"
        break                                                           # Salgo del bucle
    else:                                                               # En caso contrario
        notas.append(entrada)                                           # Añado una nueva nota vacía a la lista
        print("Has introducido una nueva nota")                         # Saco la entrada del usuario por pantalla

print(notas)                                                        # Imprimo la lista de notas
