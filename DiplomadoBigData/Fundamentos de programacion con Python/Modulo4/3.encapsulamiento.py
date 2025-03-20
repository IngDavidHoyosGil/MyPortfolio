'''
La encapsulación es otro de los principios fundamentales de la programación orientada a objetos.

Tipos de encapsulación
Atributos Públicos:
Son accesibles desde cualquier lugar, tanto dentro como fuera de la clase.
No tienen prefijos especiales.

Atributos Protegidos:
Son accesibles dentro de la clase y en las subclases.
Se denotan con un guión bajo inicial (_atributo).

Atributos Privados:
Son accesibles solo dentro de la clase donde se definen.
Se denotan con dos guiones bajos iniciales (__atributo).
'''

class Persona:
    def __init__(self, nombre, edad, cedula):
        self.__nombre = nombre
        self.__edad = edad
        self.__cedula = cedula

    def mostrar_edad(self):
        if self.__edad < 0:
            print('Edad inválida')
        else:    
            print(self.__edad)  

    def mostrar_cedula(self):
        print(self.__cedula)

    def mostrar_nombre(self):
        print(self.__nombre)        

    def asignar_nombre(self, nuevo_nombre):
        self.__nombre = nuevo_nombre          

    def asignar_edad(self, nuevo_edad):
        if nuevo_edad < 0:
            print('Edad inválida')
        else:
            self.__edad = nuevo_edad       

    def asignar_cedula(self, nueva_cedula):
        self.__cedula = nueva_cedula                            

persona = Persona('Juan', 30, 123)        

persona.mostrar_nombre()
persona.mostrar_cedula()
persona.mostrar_edad()

persona.asignar_nombre('Pedro')
persona.mostrar_nombre()

persona.asignar_edad(-5)
persona.mostrar_edad()

persona.asignar_cedula('456')
persona.mostrar_cedula()