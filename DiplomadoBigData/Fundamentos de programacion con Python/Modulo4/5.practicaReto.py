'''
Realizar una aplicación que permita registrar profesores y estudiantes, los cuales se guardan en una lista. Cada profesor o estudiante tiene como atributos su nombre, edad y especialidad/grado. Además, cada persona tiene un método que muestra su información. Crear un menú de opciones que permita ingresar profesores o estudiantes, mostrar todos los profesores y estudiantes, o salir del programa.
'''

from modelos.estudiante import Estudiante
from modelos.profesor import Profesor

'''estudiantes = Estudiante('Juan', 20, 'Ingeniería')
profesores = Profesor('Pedro', 40, 'Matemáticas')

estudiantes.mostrar_informacion()
print(estudiantes)

print(profesores)'''

def ingresar_datos_persona(tipo):
    nombre = input(f'Ingrese el nombre del {tipo}: ')
    edad = int(input(f'Ingrese la edad del {tipo}: '))
    return nombre, edad

def ingresar_profesor():
    nombre, edad = ingresar_datos_persona('profesor')
    especialidad = input('Ingrese la especialidad del profesor: ')
    return Profesor(nombre, edad, especialidad)

def ingresar_estudiante():
    nombre, edad = ingresar_datos_persona('estudiante')
    grado = input('Ingrese el grado del estudiante: ')
    return Estudiante(nombre, edad, grado)

def mostrar_personas(lista_personas):
    for persona in lista_personas:
        print(persona)

def menu():
    menu = ''' \n
    1. Ingresar un profesor.
    2. Ingresar un estudiante.
    3. Mostrar todos los profesores.
    4. Mostrar todos los estudiantes.
    5. Salir.
    '''

    print(menu)    

    opcion = int(input('Ingrese una opción: '))
    return opcion

def principal():

    lista_profesores = []
    lista_estudiantes = []

    while True:

        opcion = menu()
        if opcion == 1:
            profesor = ingresar_profesor()
            lista_profesores.append(profesor)
        elif opcion == 2:
            estudiante = ingresar_estudiante()
            lista_estudiantes.append(estudiante)
        elif opcion == 3:
            print('\n🧑‍🏫---Profesores---🧑‍🏫')
            mostrar_personas(lista_profesores)
        elif opcion == 4:
            print('\n🧑‍🎓---Estudiantes---🧑‍🎓')
            mostrar_personas(lista_estudiantes)
        elif opcion == 5:
            print('Gracias por usar nuestra aplicación.')
            break
        else:
            print('Opción no válida.')    

if __name__ == '__main__':
    principal()       