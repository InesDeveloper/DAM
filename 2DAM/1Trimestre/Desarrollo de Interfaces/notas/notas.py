# Programa notas (c) 2023 Inés Martínez Sánchez

import sqlite3 as bd                        # Importo la librería de SQLite
import time                                 # Importo la librería de tratamiento de fechas
import re                                   # Importo la librería de expresiones regulares

conexion = bd.connect("notas.sqlite")       # Indico el nombre de la base de datos
cursor = conexion.cursor()                  # Creo un cursor
# Sobre el cursor, ejecuto una petición para crear una tabla en la base de datos en el caso de que no exista anteriormente
cursor.execute("""
    CREATE TABLE IF NOT EXISTS 'notas'(
        'id' INTEGER,
        'texto' TEXT,
        'color' TEXT,
        'fecha' TEXT,
        PRIMARY KEY('id' AUTOINCREMENT)
    );
""")
# Sobre el cursor, ejecuto una petición para crear una tabla de usuarios en el caso de que no exista
cursor.execute("""
    CREATE TABLE IF NOT EXISTS 'usuarios'(
        'id' INTEGER,
        'usuario' TEXT,
        'contrasena' TEXT,
        'email' TEXT,
        PRIMARY KEY('id' AUTOINCREMENT)
    )
""")

# Créditos iniciales
print("Programa notas")                     # Indico el nombre del programa
print("(c) 2023 Inés Martínez Sánchez")     # Indico el autor

class Nota:                                 # Declaramos una clase
    def __init__(self, texto, color, fecha):# Método constructor
        self.texto = texto                  # Propiedad texto
        self.color = color                  # Propiedad color
        self.fecha = fecha                  # Propiedad fecha
    
usuario = "Esta es mi primera nota"         # Creo un valor inicial para la variable
notas = []                                  # Creo una lista vacía
    
print("Introduce el usuario")               # Le digo al usuario lo que espero que haga
usuario = input()                           # Almaceno la entrada del usuario en la variable
print("El usuario es: "+usuario)            # La muestro por pantalla
print("Introduce la contraseña")            # Le solicito al usuario la contraseña
contrasena = input()                        # Entrada de usuario
print("Introduce el email")                 # Le solicito al usuario su email
email = input()                             # Entrada de usuario

expresion = re.compile(r'([A-Za-z0-9]+[.-_])*[A-Za-z0-9]+@[A-Za-z0-9-]+(\.[A-Z|a-z]{2,})+')         # Creo una ER para un correo electrónico

if re.fullmatch(expresion,email):                                       # Valido el correo electrónico del usuario
    print("Tu correo electrónico es válido")                            # Le digo que es correcto
    cursor.execute("INSERT INTO usuarios VALUES(NULL,'"+usuario+"','"+contrasena+"','"+email+"');") # Inserto el usuario en la base de datos
    conexion.commit()                                                                               # Ejecuto la inserción
else:                                                                   # Si no es válido
    print("Tu correo electrónico no es válido")                         # Le digo que no es correcto
    
                                                      

for i in range(0,10):                                                   # Permito al usuario introducir varias notas
    print("Introduce el contenido de la siguiente nota en la lista")    # Le digo al usuario lo que espero que haga
    entrada = input()                                                   # Capturo la entrada del usuario
    print("Introduce el color de la nota")                              # Le solicito al usuario el color de la nota
    color = input()                                                     # Capturo el color de la nota
    # print("Introduce la fecha de la nota")                            # Le solicito al usuario la fecha de la nota
    fecha = str(int(time.time()))                                       # Capturo la fecha de la nota
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
    cursor.execute("INSERT INTO notas VALUES(NULL,'"+i.texto+"','"+i.color+"','"+i.fecha+"');") # Inserto una a una las notas en la base de datos
    conexion.commit()                                                   # Ejecuto la inserción
