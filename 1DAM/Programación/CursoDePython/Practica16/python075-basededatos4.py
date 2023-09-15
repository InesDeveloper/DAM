import mysql.connector as my
import matplotlib.pyplot as plt
import numpy as np

##PARTE BASE DE DATOS
mibd = my.connect(
    host = "localhost",
    port = "8889",
    user = "ines",
    password = "ines",
    database = "cursopython"
    )

micursor = mibd.cursor()

micursor.execute("SELECT * FROM nombresNinos ORDER BY totalNino DESC LIMIT 50")
miresultado = micursor.fetchall()
nombres = "'holi'"
performance = [0]
#forzar las comillas simples para decirle al sistema que son string dentro de una tupla

for i in miresultado:
    nombres += ",'"+str(i[0])+"'"
    performance.append(i[1])
    
people = eval(nombres)
print(people)

##PARTE DE GRAFICA MATPLOTLIB DE BARRAS
plt.rcdefaults()
fig, ax = plt.subplots()

# Example data
y_pos = np.arange(len(people))

print(performance)
error = np.random.rand(len(people))

ax.barh(y_pos, performance, xerr=error, align='center')
ax.set_yticks(y_pos, labels=people)
ax.invert_yaxis()  # labels read top-to-bottom
ax.set_xlabel('Performance')
ax.set_title('How fast do you want to go today?')

plt.show()

