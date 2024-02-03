import subprocess

class Inesdb:
    def __init__(self,basededatos):
        self.basededatos = basededatos

    def insert(self,coleccion,documento,contenido):
        self.operacion = "insert"
        self.coleccion = coleccion
        self.documento = documento
        self.contenido = contenido

        comando = r"~/Documents/GitHub/DAM/2DAM/2Trimestre/Acceso\ a\ Datos/inesdb/inesdb.out "+self.operacion+' '+self.basededatos+' '+self.coleccion+' '+self.documento+' "'+ self.contenido+'"'
        resultado = subprocess.run(comando,shell=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True)

        if resultado.returncode == 0:
            return("ok")
        else:
            return("ko")

    def create_collection(self,coleccion):
        self.operacion = "create_collection"
        self.coleccion = coleccion

        comando = r"~/Documents/GitHub/DAM/2DAM/2Trimestre/Acceso\ a\ Datos/inesdb/inesdb.out "+self.operacion+' '+self.basededatos+' '+self.coleccion+'"'
        resultado = subprocess.run(comando,shell=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True)

        if resultado.returncode == 0:
            return("ok")
        else:
            return("ko")