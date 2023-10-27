from PIL import Image

img = Image.new('RGBA', (30, 30), color = 'black')
img.putpixel((0,0),(0,0,255,255))

img.save('miimagen.png')
