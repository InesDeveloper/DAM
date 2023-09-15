#Importamos SQLite
import sqlite3 as lite

#Conectamos con la base de datos
conexion = lite.connect("apellidos.db")

#Establezco un cursor para realizar peticiones
cursor = conexion.cursor()

#Ejecutamos la sentencia SQL
cursor.execute("SELECT * FROM apellidos;")

#Guardamos los elementos del resultado
datos = cursor.fetchall()

#Listamos todos los apellidos. Lo dejo comentado ya que la lista es muy larga
##for i in datos:
##    print(i)


#Creamos una lista filtrada para los apellidos que empiezan por M
apellidosfiltrados = []
for i in datos:
    if (i[1].startswith("M")):
        apellidosfiltrados.append(i[1])

contador = 0
for i in apellidosfiltrados:
    print(i)
    contador+=1

#Mostramos un contador de todos los apellidos filtrados por la letra M 
print("El numero de apellidos que empiezan por M es:", contador)
