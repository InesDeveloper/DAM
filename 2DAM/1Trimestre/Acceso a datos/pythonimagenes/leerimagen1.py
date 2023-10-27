from PIL import Image


im = Image.open(r"miimagen.png")
print(im)
pixeles = im.getdata()
print(pixeles)
cadena = ""

for pixel in pixeles:
    print(pixel)
    print(chr(pixel[0]))
    cadena = cadena + chr(pixel[0])

print(cadena)


