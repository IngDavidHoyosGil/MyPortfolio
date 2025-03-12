"""reto: Simular una máquina expendedora de comida"""

"""
1. Ingresar el dinero
2. Seleccionar el producto
3. Comprar el producto
4. Devolver el cambio
5. Salir
"""

dinero = 0
gaseosa = 1000
papas = 2000
chocolates = 3000

print('Bienvenido a la máquina expendedora de comida')

menu = """
1. Ingresar el dinero
2. Seleccionar el producto
3. Comprar el producto
4. Devolver el cambio
5. Salir
"""

bandera = True

while bandera:

    print(menu)

    opcion = int(input('Ingrese una opción: '))

    if opcion == 1:
        dinero = int(input('Ingrese el dinero: \n'))
        print(f'💰 El dinero ingresado ha sido {dinero} pesos.')
    elif opcion == 2:
        print('Lista de productos')
        print('1. 🥤 gaseosa = $1.000 pesos')
        print('2. 🍟 papas = $2.000 pesos')
        print('3. 🍫 chocolates = $3.000 pesos')
    elif opcion == 3:
        opcion_producto = int(input('Ingrese el producto que desea comprar: '))   
        if opcion_producto == 1:
            if dinero >= gaseosa:
                dinero -= gaseosa
                print(f'Gracias por su compra. Su cambio es: {dinero} pesos.')
            else:
                print(' ❌ No tiene suficiente dinero.')
        elif opcion_producto == 2:
            if dinero >= papas:
                dinero -= papas
                print(f'Gracias por su compra. Su cambio es: {dinero} pesos.')
            else:
                print('❌ No tiene suficiente dinero.')
        elif opcion_producto == 3:
            if dinero >= chocolates:
                dinero -= chocolates
                print(f'Gracias por su compra. Su cambio es: {dinero} pesos.')
            else:
                print('❌ No tiene suficiente dinero.')
    elif opcion == 4:
        print(f'Su cambio es: {dinero} pesos.')
        dinero = 0
    elif opcion == 5:
        bandera = False
        print('Gracias por usar nuestra máquina expendedora de comida.')                        