import mysql.connector as my
import matplotlib.pyplot as plt

##PARTE BASE DE DATOS
mibd = my.connect(
    host = "localhost",
    port = "8889",
    user = "ines",
    password = "ines",
    database = "cursopython"
    )

micursor = mibd.cursor()

micursor.execute("SELECT * FROM nombresNinos ORDER BY totalnino DESC LIMIT 15")
miresultado = micursor.fetchall()

sizes = [0]
explode = (0,0.1,0,0) 
nombres = "'holi'"

for i in miresultado:
    sizes.append(i[1])
    nombres += ",'"+str(i[0])+"'"

labels = eval(nombres)

print("vamos a comprobar")
print(labels)
print(sizes)
print("quiero ver el tipo de dato")
print(type(labels))

fig1, ax1 = plt.subplots()
ax1.pie(sizes, labels=labels, autopct='%1.1f%%',
        shadow=True, startangle=90)
ax1.axis('equal')
plt.show()
