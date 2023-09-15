import json

micadena = '{"Juan":"juan@correo.com","jorge":"jorge@correo.com","Javier":"javier@correo.com","Julia":"julia@correo.com","Jacobo":"jacobo@correo.com"}'

carga = json.loads(micadena)
print(type(micadena))
print(type(carga))

print(carga["Juan"])
