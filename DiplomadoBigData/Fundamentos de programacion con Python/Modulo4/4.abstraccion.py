'''
Las clases y métodos abstractos son una característica importante en la programación orientada a objetos. En Python, las clases abstractas permiten definir una interfaz común para un grupo de clases derivadas, asegurando que ciertas metodologías sean implementadas por todas las subclases. Las clases abstractas no pueden ser instanciadas directamente, y cualquier clase que herede de una clase abstracta debe implementar los métodos abstractos definidos en la clase base.
'''

from abc import ABC, abstractmethod

class Animal(ABC):
    @abstractmethod
    def hacer_sonido(self):
        pass

    @abstractmethod
    def moverse(self):
        pass

class Perro(Animal):
    def hacer_sonido(self):
        print('¡Guau!')

    def moverse(self):
        print('El perro está corriendo.')

class Gato():
    def hacer_sonido(self):
        print('¡Miau!')

    def moverse(self):
        print('Camina en cuatro patas.')        

perro = Perro()

print(perro.hacer_sonido())
print(perro.moverse())

gato= Gato()

print(gato.hacer_sonido())
print(gato.moverse())
