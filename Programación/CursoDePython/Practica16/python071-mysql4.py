import mysql.connector as my
try:
    mibd = my.connect(
        host = "localhost",
        port = "8889",
        user = "ines",
        password = "ines",
        database = "cursopython"
        )
    ##print(mibd)

    micursor = mibd.cursor()
#INTRODUCIR DATOS
    micursor.execute("INSERT INTO  personas VALUES (NULL,'Carlos','7854','carlos@mail.com')")
    mibd.commit()

#programacion defensiva
except:
    print("Ha ocurrido un error en la base de datos")
