'''
Un módulo en python es un archivo que contiene definiciones y declaraciones.
Un paquete en python permite coleccionar o agrupar un conjunto de módulos relacionados.
'''

import math
import json
import datetime

from operaciones import suma as s, multiplicacion as m, division as d
import operaciones.resta as r

print('Suma desde el paquete operaciones', s.suma(1, 2))
print('Multiplicación desde el paquete operaciones', m.multiplicacion(3, 2))
print('Resta desde el paquete operaciones', r.resta(7, 2))
print('División desde el paquete operaciones', d.division(90, 18))

print(math.pi)
print(math.sqrt(16))
print(math.pow(2,3))
print(math.floor(2.5))
print(math.ceil(2.5))

json.dumps({'nombre' : 'Juan', 'edad' : 30})
json.loads('{"nombre" : "Juan", "edad" : 30}')

print(datetime.date.today())
print(datetime.datetime.now())
print(datetime.datetime.now().strftime('%d/%m/%Y'))

ahora = datetime.datetime.now()
print(ahora.year)
print(ahora.month)
print(ahora.day)
print(ahora.hour)