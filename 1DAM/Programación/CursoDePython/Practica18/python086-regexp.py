import re

mitexto = "Segismundo"
busqueda = re.search("^Se",mitexto)
print(busqueda)
if busqueda:
    print("He encontrado un resultado")

else:
    print("No he encontrado ningun resultado")
