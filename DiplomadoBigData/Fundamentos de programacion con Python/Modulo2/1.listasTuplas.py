"""
Colecciones en python
> listas y las tuplas

"""

# listas en python
lista = [1, 2, 3, 4, 5]
lista_con_elementos_diferentes = ["hola", 2, True, 3.14, [1, 2, 3]]
print(lista)
print(lista_con_elementos_diferentes)

# acceso a los elementos de la lista
print(lista[0])  
print(lista_con_elementos_diferentes[1])  # 
print(lista_con_elementos_diferentes[4][1])
print(lista_con_elementos_diferentes[-1][0])
print(lista[0:3])
print(lista_con_elementos_diferentes[1:])
print(lista_con_elementos_diferentes[:3])
print(lista_con_elementos_diferentes[1:4])
print(lista_con_elementos_diferentes[1:4:2])

#modificar elementos de la lista

lista[0] = 10
print(lista)
lista[1] = 100
print(lista) 

lista.insert(0, 50)
print(lista)
lista.append(60)
print(lista)
lista.extend([70, 80, 90])
print(lista)
lista.remove(100)

lista.pop()
lista.sort()
lista.reverse()
lista.clear()

del lista

# tuplas en python - inmutables

tupla = (1, 2, 3, 4, 5)

# manipulacion de tuplas

tupla = (1, 2, 3)

tupla = tupla + (4, 5, 6)
print(tupla) 
tupla = tupla[:3] + (7, 8, 9)
print(tupla)

tupla = (1, 2, 3)
tupla2 = (4, 5, 6)
tupla3 = tupla + tupla2

# recorrer listas y tuplas

lista = [1, 2, 3, 4, 5]

for elemento in lista:
    if elemento == 3:
        break
    print(elemento)

tupla = (1, 2, 3, 4, 5)

for elemento in tupla:
    if elemento == 3:
        break
    print(elemento)    

nombre = 'Juan'

for letra in nombre:
    print('letra: ', letra)

nombres = ['Juan', 'Pedro', 'Maria']

for nombre in nombres:
    for letra in nombre:
        print(letra, end = ' - ')
