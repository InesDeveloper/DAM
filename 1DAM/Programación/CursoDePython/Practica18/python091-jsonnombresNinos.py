import json

archivo = open("nombresNinos.json",'r')
micadena = archivo.read().replace('\n','')

carga = json.loads(micadena)
print(type(micadena))
print(type(carga))
print(carga['data'][0]['nombreNino'])

