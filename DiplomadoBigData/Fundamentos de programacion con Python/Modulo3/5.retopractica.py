'''
Realizar el juego de piedra, papel o tijeras haciendo uso de funciones.
'''
import random

JUGADAS = ['Piedra', 'Papel', 'Tijeras']

def jugada_maquina():
    return random.choice(JUGADAS)

def jugada_usuario():
    return int(input('Ingresa una opción: '))

def menu():
    print('--- Juego de Piedra, Papel o Tijeras ---')
    print('1. Piedra')
    print('2. Papel')
    print('3. Tijeras')
    opcion_usuario = JUGADAS[jugada_usuario() - 1]
    print('Tu jugada es: ', opcion_usuario)
    opcion_maquina = jugada_maquina()
    print('La jugada de la máquina es: ', opcion_maquina)

    if opcion_usuario == opcion_maquina:
        print('Empate!')

    elif (opcion_usuario == 'Piedra' and opcion_maquina == 'Tijeras') or (opcion_usuario == 'Papel' and opcion_maquina == 'Piedra') or (opcion_usuario == 'Tijeras' and opcion_maquina == 'Papel'):
        print('Ganaste!')

    else:
        print('Perdiste!')

menu()

pregunta = input('¿Quieres jugar de nuevo? si/no: ')

while pregunta == 'si':
    menu()
    pregunta = input('¿Quieres jugar de nuevo? si/no: ')    

print('Gracias por jugar!')    