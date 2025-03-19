'''
La programación orientada a objetos es un paradigma de programación que permite crear objetos y trabajar con ellos.
En Python, la programación orientada a objetos se implementa mediante clases y objetos.
Las clases son plantillas para crear objetos, y los objetos son instancias de las clases.
En Python, todas las clases heredan de la clase base object.
'''

class Usuario:
    def __init__(self, nombre, apellido):
        self.nombre = nombre
        self.apellido = apellido

    def saludo(self):
        print('Hola, mi nombre es', self.nombre, self.apellido)         

usuario = Usuario('Juan', 'Perez')
usuario2 = Usuario('Karla', 'Gomez')
usuario3 = Usuario('Jhon', 'Mendez')        

print(type(usuario))

print(usuario.nombre)
print(usuario.apellido)

usuario.nombre = 'Chanchito'
usuario.apellido = 'Feliz'


'''
Definir una clase para facturas.
'''

class Factura:
    def __init__(self, descripcion, importe, iva):
        self.descripcion = descripcion
        self.importe = importe
        self.iva = iva

    def calcular_total(self):
        return self.importe + (self.importe * self.iva / 100)        