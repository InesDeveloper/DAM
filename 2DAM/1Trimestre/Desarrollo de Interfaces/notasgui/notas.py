import tkinter as tk                        # Importo la librería de GUI
from tkinter import ttk                     # Importo la nueva libreria TTK
import sqlite3 as bd                        # Importo la librería de SQLite
from tkinter.colorchooser import askcolor   # Importo el selector del color
import time


class Nota:                                 # Declaramos una clase
    def __init__(self,identificador, texto, color, fecha):# Método constructor
        self.identificador = identificador
        self.texto = texto                  # Propiedad texto
        self.color = color                  # Propiedad color
        self.fecha = fecha                  # Propiedad fecha


# CONEXIÓN INICIAL CON LA BASE DE DATOS

conexion = bd.connect("notas.sqlite")       # Indico el nombre de la base de datos
cursor = conexion.cursor()                  # Creo un cursor
# Sobre el cursor, ejecuto una petición para crear una tabla en la base de datos en el caso de que no exista anteriormente
cursor.execute("""
    CREATE TABLE IF NOT EXISTS 'notas'(
        'id' INTEGER,
        'texto' TEXT,
        'color' TEXT,
        'fecha' TEXT,
        PRIMARY KEY('id' AUTOINCREMENT)
    );
""")
# Sobre el cursor, ejecuto una petición para crear una tabla de usuarios en el caso de que no exista
cursor.execute("""
    CREATE TABLE IF NOT EXISTS 'usuarios'(
        'id' INTEGER,
        'usuario' TEXT,
        'contrasena' TEXT,
        'email' TEXT,
        PRIMARY KEY('id' AUTOINCREMENT)
    );
""")


#DECLARO FUNCIONES PARA EL PROGRAMA

def iniciaSesion():                         # Funcion de inicio de sesion
    print("Vamos a iniciar sesión")         # Imprime un mensaje en pantalla
    print("El nombre de usuario es:"+varusuario.get())
    print("La contraseña de usuario es:"+varcontrasena.get())
    print("El email de usuario es:"+varemail.get())
    # Voy a comprobar si existe un usuario en la base de datos
    cursor = conexion.cursor()              # Creo un cursor
    cursor.execute('SELECT * FROM usuarios')# Ejecuto una petición de seleccionar usuarios
    datos = cursor.fetchall()               # Cargo los datos
    numerousuarios = 0                      # Creo una variable contador
    for i in datos:                         # Para cada uno de los registros devueltos
        numerousuarios = numerousuarios +1  # Le sumo un valor al contador
    if(numerousuarios == 0):                # Si no hay usuarios
        print("actualmente no hay ningun usuario en la base de datos")
        cursor.execute("INSERT INTO usuarios VALUES(NULL,'"+varusuario.get()+"','"+varcontrasena.get()+"','"+varemail.get()+"');") # Inserto el usuario en la base de datos
        conexion.commit()                   # Ejecuto la inserción
    else:                                   # En el caso de que haya usuarios
        print("sí que existe un usuario en la base de datos")
        cursor.execute('''
                SELECT *
                FROM usuarios
                WHERE usuario = "'''+varusuario.get()+'''"
                AND contrasena = "'''+varcontrasena.get()+'''"
                AND email = "'''+varemail.get()+'''"
                ''')                        # Realizo una consulta a la base de datos
        existe = False
        existe = True                       # Fuerzo para no tener que validar durante el desarrollo
        datos = cursor.fetchall()           # Cargo los datos
        for i in datos:                     # Para cada uno de los registros devueltos
            existe = True                   # Actualizo el valor
        if existe == True:                  # En el caso que exista
            print("El usuario que has introducido es correcto")
            marco.destroy()                 # Elimino la ventana principal
            marco2 = ttk.Frame(raiz)        # Creo un nuevo marco
            marco2.pack()                   # Empaqueto el marco

            iconoaplicacion = tk.PhotoImage(file="icono.png") # Cargo una imagen
            etiquetaicono = ttk.Label(
                marco2,
                text="Notas v0.01",
                image = iconoaplicacion,
                compound=tk.TOP,
                font=("Arial",14)
                )                           # Muestro la imagen en el label
            etiquetaicono.image = iconoaplicacion # Especifico de nuevo la imagen
            etiquetaicono.pack()            # Empaqueto
            botonnuevanota = ttk.Button(marco2,text="Nueva nota",command=creaNota) # Creo el boton de crear una nueva nota
            botonnuevanota.pack(pady=10,expand=True) # Lo empaqueto
            botonguardanotas = ttk.Button(marco2,text="Guardar notas",command=guardaNotas) # Creo el boton de guardar una nota
            botonguardanotas.pack(pady=10,expand=True) # Lo empaqueto
        else:                               # En el caso de que no exista
            print("El usuario no es correcto")
            raiz.after(3000,lambda:raiz.destroy()) # Se cierra la ventana despues de 3sgd
            
def guardaNotas():
    for i in notas:                         # Para cada una de las notas
        print(i.texto)                      # Imprimo su contenido
        print(i.color)                      # Imprimo su color
        print(i.fecha)                      # Imprimo su fecha
        cursor.execute("INSERT INTO notas VALUES(NULL,'"+i.texto+"','"+i.color+"','"+i.fecha+"');") # Inserto una nota en la base de datos
        conexion.commit()
            
def creaNota():
    global notas
    global identificador
    fecha = str(int(time.time()))
    
    notas.append(Nota(identificador,'','',fecha)) # Añado una nota a la lista

    for i in notas:                         # Para cada una de las notas
        print(i.identificador)
        print(i.texto)                      # Imprimo su contenido
        print(i.color)                      # Imprimo su color
        print(i.fecha)                      # Imprimo su fecha

    ventananuevanota = tk.Toplevel()        # Nueva ventana flotante
    anchura = 300                           # Defino la anchura como un valor
    altura = 350                            # Defino la altura como otro valor
    ventananuevanota.geometry(str(anchura)+'x'+str(altura)+'+100+100') # Geometria de la ventana y margen con la pantalla
    texto = tk.Text(ventananuevanota,bg="white",fg="black")
    texto.pack()
    identificadorpropio = identificador
    selectorcolor = ttk.Button(ventananuevanota,text="Cambiar color",command=lambda:cambiaColor(ventananuevanota,texto,identificadorpropio,))
    selectorcolor.pack()
    identificador = identificador + 1       # Subo el identificador

def cambiaColor(ventana,texto,identificador): # Creo la funcion de cambio de color
    nuevocolor = askcolor(title="Selecciona un color") # Saco un selector de color
    ventana.configure(bg = nuevocolor[1])   # Cambio el color de fondo a la ventana seleccionada
    texto.configure(bg = nuevocolor[1])
    notas[identificador].color = nuevocolor[1]
    notas[identificador].texto = texto.get("1.0",tk.END)
    print("El identificador es:"+str(identificador))
    for i in notas:                         # Para cada una de las notas
        print(i.identificador)
        print(i.texto)                      # Imprimo su contenido
        print(i.color)                      # Imprimo su color
        print(i.fecha)                      # Imprimo su fecha
 
# CREACIÓN DE LA VENTANA PRINCIPAL Y ESTILO DE LA VENTANA #

raiz = tk.Tk()                              # Creo una interfaz gráfica de usuario
raiz.title("Notas v0.01")                   # Especifico el título de la ventana
raiz.geometry('200x250+20+50')              # Geometria de la ventana y margen con la pantalla
raiz.attributes("-topmost",True)            # Siempre encima del resto de las ventanas
raiz.attributes("-alpha",0.9)               # Añado un efecto de transparencia
raiz.resizable(0,0)                         # Impiso que el usuario pueda redimensionar la ventana
estilo = ttk.Style()                        # Añado soporte para estilos
estilo.theme_use('default')                 # Selecciono el estilo clásico de aplicaciones

#DECLARO VARIABLES GLOBALES DEL PROGRAMA

varusuario = tk.StringVar()                 # Variable para almacenar el usuario
varcontrasena = tk.StringVar()              # Variable para almacenar la contraseña
varemail = tk.StringVar()                   # Variable para almacenar el email
notas = []                                  # Creo una lista vacia
identificador = 0                           # Inicializo un identificador

# AÑADIMOS WIDGETS A LA VENTANA #
   
marco = ttk.Frame(raiz)
marco.pack()

version = tk.Label(marco,text="Notas v0.01") # Creamos un label
version.pack()                              # Lo añadimos a la ventana

inputusuario = ttk.Entry(marco,textvariable = varusuario)            # Creo una entrada para que el usuario diga quien es
inputusuario.insert(0,'Introduce tu usuario') # Creo un texto de inicio en la entrada
inputusuario.pack(pady=10)                  # Empaqueto la entrada

inputcontrasena = ttk.Entry(marco,textvariable = varcontrasena)      # Creo una entrada para que el usuario escriba la contraseña
inputcontrasena.insert(0,'Introduce tu contraseña') # Creo un texto de inicio 
inputcontrasena.pack(pady=10)               # Empaqueto la entrada

inputemail = ttk.Entry(marco,textvariable = varemail)                # Creo una entrada para que el usuario escriba su email
inputemail.insert(0,'Introduce tu email')   # Creo un texto de inicio 
inputemail.pack(pady=10)                    # Empaqueto la entrada

botonlogin = ttk.Button(marco,text="Enviar",command=iniciaSesion)    # Creo el boton de iniciar sesion
botonlogin.pack(pady=10,expand=True)        # Lo empaqueto

# INTENTO INTRODUCIR ANTIALIAS EN WINDOWS Y LANZO EL BUCLE #

try:                                        # Intento ejecutar
    from ctypes import windll               # Importo la libreria específica de GUI de Windows
    wndll.shcore.SetProcessDpiAwareness(1)  # Activo el antialias para texto etc dentro de las interfaces
except Exception as e:                      # Atrapo la escepción en caso de que se produzca
    print(e)                                # Saco la excepción por pantalla
finally:                                    # En todo caso:
    raiz.mainloop()                         # Detiene la ejecución y previene que la ventana se cierre
    
