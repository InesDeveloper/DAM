import mysql.connector as my

mibd = my.connect(
    host = "localhost",
    port = "8889",
    user = "ines",
    password = "ines"
    )
print(mibd)


