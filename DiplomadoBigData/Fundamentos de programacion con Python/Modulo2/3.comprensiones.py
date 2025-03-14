"""
comprensiones de colecciones
"""

#comprension de lista
numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
cuadrados = [numero**2 for numero in numeros]

print(cuadrados)

# filtros
print([numero for numero in numeros if numero % 2 == 0])

#conversion de mayusculas
palabras = ['hola', 'mundo', 'python']
print([palabra.upper() for palabra in palabras])

#comprension de diccionario
diccionario = {i: i**2 for i in range(1, 6)}
print(diccionario)

#filtrar y transformar un diccionario
diccionario = {i: i**2 for i in range(1, 6) if i % 2 == 0}
print(diccionario)

palabras = ['hola', 'mundo', 'python']
longitudes = {palabra: len(palabra) for palabra in palabras}
print(longitudes)

print({len(palabra) for palabra in palabras})