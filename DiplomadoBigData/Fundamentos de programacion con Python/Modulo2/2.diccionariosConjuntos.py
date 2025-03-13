"""
diccionarios y conjuntos
diccionarios -> llave:valor
"""

#crear un diccionario

my_dict = {
    'nombre': 'jhon',
    'edad': 40,
    'ciudad': 'medellin',
    'telefonos': ['123456789', '987654321'],
    'correos': {
        'gmail': 'personal@gmail.com',
        'hotmail': 'corporativo@hotmail.com'
    }
}

#acceder a los elementos del diccionario
print(my_dict['nombre'])
print(my_dict['edad'])
print(my_dict['telefonos'])
print(my_dict['correos']['gmail'])

#traer las llaves
print(my_dict.keys())
print(my_dict.values())
print(my_dict.items())
print(len(my_dict))
print(my_dict.get('edad'))

#modificar el diccionario
my_dict['edad'] = 41
my_dict.update({'edad': 42})
print(my_dict)
my_dict.pop('edad')
my_dict.clear()

"""
conjuntos: coleccion desordenada de elementos unicos
"""

#ejemplo de conjuntos - set
conjunto_a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
conjunto_b = {5, 6, 7, 8, 9, 10, 11, 12, 13, 14}

print(conjunto_a.union(conjunto_b)) #full join
print(conjunto_a.intersection(conjunto_b)) # inner join
print(conjunto_a.difference(conjunto_b)) # left outer join
print(conjunto_b.difference(conjunto_a)) # right outer join
print(conjunto_a.symmetric_difference(conjunto_b)) # full outer join

#recorrer conjuntos
for elemento in conjunto_a:
    print(elemento)

#recorrer diccionario
for llave, valor in my_dict.items():
    print(llave, ' : ', str(valor))