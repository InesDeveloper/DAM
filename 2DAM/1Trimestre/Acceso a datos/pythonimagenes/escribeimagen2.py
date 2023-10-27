from PIL import Image


img = Image.new('RGBA', (30, 30), color = 'black')

texto = "Hola soy Inés y este es un texto que estoy escribiendo simplemente para demostrar que lo puedo codificar dentro de una imagen y una vez codificado dentro de una imagen voy a ser capaz de recuperar el texto y volver a mostrarlo en pantalla"
x = 0
y = 0
for letra in texto:
    print(letra)
    img.putpixel((x,y),(ord(letra),0,0,255))
    x = x + 1
    if x == 30:
        x = 0
        y = y + 1

img.save('miimagen.png')
