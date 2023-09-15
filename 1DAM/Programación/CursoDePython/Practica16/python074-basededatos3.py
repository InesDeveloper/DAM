import mysql.connector as my
import matplotlib.pyplot as plt

mibd = my.connect(
    host = "localhost",
    port = "8889",
    user = "ines",
    password = "ines",
    database = "cursopython"
    )
##print(mibd)

micursor = mibd.cursor()
#LIMITO A 20 EL NUMERO DE DATOS PARA QUE SE PERCIBA BIEN EN LA GRAFICA
micursor.execute("SELECT FROM_UNIXTIME(`utc`, '%d.%m.%Y') as ndate, count(id) as post_count from registros group by ndate LIMIT 100")
miresultado = micursor.fetchall()

lista = []

for i in miresultado:
    lista.append(str(i[1]))
    print(str(i[1])+" - "+str(i[0]))

##PARTE DE LA GRÁFICA LINEAL

plt.plot(lista)
plt.ylabel('visitas')
plt.show()
