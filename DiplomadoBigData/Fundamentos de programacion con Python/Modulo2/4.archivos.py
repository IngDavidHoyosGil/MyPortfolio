"""
archivos en python: .xls, .csv, .json
"""

import json
import pprint

archivo_url = 'datos.json'
#leer archivo json
with open(archivo_url, 'r') as file:
    datos = json.load(file)
    print(type(datos))
    pprint.pprint(datos)

#escribir archivo json

nombre = input('Ingrese su nombre: ')
apellido = input('Ingrese su apellido: ')
edad = int(input('Ingrese su edad: '))
ciudad = input('Ingrese su ciudad: ')
hobbies = input('Ingrese su hobbies separados por coma: ').split(',')

"""
datos_nuevos = {    
        'nombre': 'Jhon',
        'apellido': 'mendez',
        'edad': 40,
        'ciudad': 'bogota',
        'hobbies': [
            'programar',
            'leer'
        ]
    }
"""    

datos_nuevos = {    
        'nombre': nombre,
        'apellido': apellido,
        'edad': edad,
        'ciudad': ciudad,
        'hobbies': hobbies
    }

datos.append(datos_nuevos)

#escribir
with open(archivo_url, 'w') as file:
    json.dump(datos, file, indent=4)
