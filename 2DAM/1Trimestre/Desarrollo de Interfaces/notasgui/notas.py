import tkinter as tk                        # Importo la librería de GUI
from tkinter import ttk                     # Importo la nueva libreria TTK


#DECLARO FUNCIONES PARA EL PROGRAMA

def iniciaSesion():                         # Funcion de inicio de sesion
    print("Vamos a iniciar sesion")         # Imprime un mensaje en pantalla
    print("El nombre de usuario es:"+varusuario.get())
    print("La contraseña de usuario es:"+varcontrasena.get())
    print("El email de usuario es:"+varemail.get())

# CREACIÓN DE LA VENTANA PRINCIPAL Y ESTILO DE LA VENTANA #

raiz = tk.Tk()                              # Creo una interfaz gráfica de usuario
raiz.title("Notas v0.01")                   # Especifico el título de la ventana
raiz.geometry('200x200+20+50')              # Geometria de la ventana y margen con la pantalla
raiz.attributes("-topmost",True)            # Siempre encima del resto de las ventanas
raiz.attributes("-alpha",0.9)               # Añado un efecto de transparencia
raiz.resizable(0,0)                         # Impiso que el usuario pueda redimensionar la ventana
estilo = ttk.Style()                        # Añado soporte para estilos
estilo.theme_use('default')                 # Selecciono el estilo clásico de aplicaciones

#DECLARO VARIABLES GLOBALES DEL PROGRAMA

varusuario = tk.StringVar()                 # Variable para almacenar el usuario
varcontrasena = tk.StringVar()              # Variable para almacenar la contraseña
varemail = tk.StringVar()                   # Variable para almacenar el email

# AÑADIMOS WIDGETS A LA VENTANA #

version = tk.Label(raiz,text="Notas v0.01") # Creamos un label
version.pack()                              # Lo añadimos a la ventana

inputusuario = ttk.Entry(raiz,textvariable = varusuario)            # Creo una entrada para que el usuario diga quien es
inputusuario.insert(0,'Introduce tu usuario') # Creo un texto de inicio en la entrada
inputusuario.pack(pady=10)                  # Empaqueto la entrada

inputcontrasena = ttk.Entry(raiz,textvariable = varcontrasena)      # Creo una entrada para que el usuario escriba la contraseña
inputcontrasena.insert(0,'Introduce tu contraseña') # Creo un texto de inicio 
inputcontrasena.pack(pady=10)               # Empaqueto la entrada

inputemail = ttk.Entry(raiz,textvariable = varemail)                # Creo una entrada para que el usuario escriba su email
inputemail.insert(0,'Introduce tu email')   # Creo un texto de inicio 
inputemail.pack(pady=10)                    # Empaqueto la entrada

botonlogin = ttk.Button(raiz,text="Enviar",command=iniciaSesion)    # Creo el boton de iniciar sesion
botonlogin.pack(pady=10,expand=True)        # Lo empaqueto

# INTENTO INTRODUCIR ANTIALIAS EN WINDOWS Y LANZO EL BUCLE #

try:                                        # Intento ejecutar
    from ctypes import windll               # Importo la libreria específica de GUI de Windows
    wndll.shcore.SetProcessDpiAwareness(1)  # Activo el antialias para texto etc dentro de las interfaces
except Exception as e:                      # Atrapo la escepción en caso de que se produzca
    print(e)                                # Saco la excepción por pantalla
finally:                                    # En todo caso:
    raiz.mainloop()                         # Detiene la ejecución y previene que la ventana se cierre
    
