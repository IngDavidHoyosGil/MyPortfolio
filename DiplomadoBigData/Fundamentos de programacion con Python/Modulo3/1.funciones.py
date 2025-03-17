'''
Las funciones en python son bloques de código reutilizables que realizan una tarea especifica
'''

def saludo(mensaje):
    print(mensaje)

saludo('Hola, cómo están?')    

def mensaje():
    return 'Hola mundo'

print(mensaje())

def greeting():
    print('Holi')

greeting()    

def suma(numero1, numero2):
    resultado = numero1 + numero2
    return resultado

resultado = suma(5, 7)
print(resultado)
print(suma(2, 3))
print(suma(6, 9))

def resta(numero1, numero2 = 2):
    return numero1 - numero2

print(f'Resta 5 y 3: {resta(5, 3)}')
print(f'Resta 5: {resta(5)}')

def mostrar_mensaje(mensaje = 'Hola mundo python'):
    print(mensaje)

mostrar_mensaje('Hola grupo de python')

def calcular_area(base, altura):
    area = base * altura
    return area

print(calcular_area(2, 3))     