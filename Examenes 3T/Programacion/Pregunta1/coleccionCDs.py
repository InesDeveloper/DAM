import sqlite3 as lite
import sys

#Creo la conexiona a una base de datos llamada listamusical
conexion = lite.connect("coleccionCDs.sqlite")

#Establezco un cursor para saber en que punto de la base de datos voy a trabajar
cursor = conexion.cursor()

#defino una funcion para listar cds
def listar_cds():
    cursor.execute('SELECT * FROM cds')
    registros = cursor.fetchall()
    for registro in registros:
        print(registro)
        
#defino una funcion para buscar cds
def buscar_cds():
    busqueda = input("Introduce el término de búsqueda: ")
    cursor.execute('SELECT * FROM cds WHERE titulo LIKE ? OR artista LIKE ? OR genero LIKE ? OR anio LIKE ?', ('%' + busqueda + '%', '%' + busqueda + '%', '%' + busqueda + '%', '%' + busqueda + '%'))
    registros = cursor.fetchall()
    for registro in registros:
        print(registro)
        
#defino una funcion para introducir un cd        
def introducir_cd():
    titulo = input("Introduce el título del cd: ")
    artista = input("Introduce el nombre del artista: ")
    anio = input("Introduce el año de lanzamiento: ")
    genero = input("Introduce el género musical: ")
    cursor.execute('INSERT INTO cds (titulo, artista, anio, genero) VALUES (?, ?, ?, ?)', (titulo, artista, anio, genero))
    conexion.commit()
    print("Registro insertado correctamente.")
    
#defino una función para actualizar un cd
def actualizar_cd():
    id_registro = input("Introduce el ID del registro a actualizar: ")
    nuevo_titulo = input("Introduce el nuevo título del álbum: ")
    nuevo_artista = input("Introduce el nuevo nombre del artista: ")
    nuevo_anio = input("Introduce el nuevo año de lanzamiento: ")
    nuevo_genero = input("Introduce el nuevo género musical: ")
    cursor.execute('UPDATE cds SET titulo = ?, artista = ?, anio = ?, genero = ? WHERE id = ?', (nuevo_titulo, nuevo_artista, nuevo_anio, nuevo_genero, id_registro))
    conexion.commit()
    print("Registro actualizado correctamente.")
    
#defino una función para eliminar un cd
def eliminar_cd():
    id_registro = input("Introduce el ID del registro a eliminar: ")
    cursor.execute('DELETE FROM cds WHERE id = ?', (id_registro,))
    conexion.commit()
    print("Registro eliminado correctamente.")

#defino la agenda para mostrar el menú y recibir la opcion del usuario:
def coleccionCDs():
    # Menú inicial
    while True:
        print("Escoge tu opción")
        print("1.-Listar cds")
        print("2.-Buscar cds")
        print("3.-Introducir cd")
        print("4.-Actualizar cd")
        print("5.-Eliminar cd")
        print("6.-Salir")

        opcion = input("Opción: ")
        
#que función debe ejecutar el programa según la opción seleccionada
        if opcion == "1":
                listar_cds()
        elif opcion == "2":
                buscar_cds()
        elif opcion == "3":
                introducir_cd()
        elif opcion == "4":
                actualizar_cd()
        elif opcion == "5":
                eliminar_cd()
        elif opcion == "6":
            break
        else:
            print("Opción no válida. Por favor, seleccione una opción del 1 al 6")

coleccionCDs()
