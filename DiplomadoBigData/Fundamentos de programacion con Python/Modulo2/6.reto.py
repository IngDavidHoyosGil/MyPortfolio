'''
Crear un programa que permita registrar clientes con la siguiente información:
cédula, nombre, apellido, edad, email, teléfono, dirección.
Guardar la información en un json.
El programa debe permitir:
1. Registrar un cliente
2. Eliminar un cliente
3. Buscar un cliente
4. Listar todos los clientes
5. Listar clientes preferenciales
6. Salir
'''

import json
import os

archivo_url = 'retoClientes.json'
try:
    # Verificar si el archivo existe y no está vacío
    if os.path.isfile(archivo_url) and os.path.getsize(archivo_url) > 0:
        with open(archivo_url, 'r') as file:
            clientes = json.load(file)
        # Si el archivo contiene una lista, lo convertimos en un diccionario vacío
        if isinstance(clientes, list):
            clientes = {}
    else:
        clientes = {}
except (json.JSONDecodeError, FileNotFoundError):
    print("El archivo tiene un formato no válido o está corrupto. Reiniciando como diccionario.")
    clientes = {}

opcion = 0

menu = '''
    Menú de opciones
    1. Registrar cliente
    2. Eliminar cliente
    3. Buscar cliente
    4. Listar todos los clientes
    5. Listar clientes preferenciales
    6. Salir
    '''

while opcion != 6:
    
    print(menu)
    opcion = int(input("Ingrese una opción: "))

    if opcion == 1:
        print('---Registrar cliente---🙋‍♂️')

        cedula = input('Ingrese la cédula: ')
        nombre = input('Ingrese el nombre: ')
        apellido = input('Ingrese el apellido: ')
        edad = int(input('Ingrese la edad: '))
        email = input('Ingrese el email: ')
        telefono = input('Ingrese el teléfono: ')
        direccion = input('Ingrese la dirección: ')
        preferencial = input('¿Es cliente preferencial? (s/n)').lower()

        cliente = {
            'nombre': nombre,
            'apellido': apellido,
            'edad': edad,
            'email': email,
            'telefono': telefono,
            'direccion': direccion,
            'preferencial': preferencial
        }

        clientes[cedula] = cliente

        try:
            with open(archivo_url, 'w') as file:
                json.dump(clientes, file, indent=4)
            print("\nCliente guardado exitosamente.👍")
        except (OSError, IOError) as e:
            print(f"Error al guardar el archivo: {e}")

    if opcion == 2:
        print('---Eliminar cliente---❌')

        cedula = input('Ingrese la cédula del cliente a eliminar: ')
        if cedula in clientes:
            del clientes[cedula]
            try:
                with open(archivo_url, 'w') as file:
                    json.dump(clientes, file, indent=4)
                print("\nCliente eliminado correctamente.")
            except (OSError, IOError) as e:
                print(f"Error al guardar el archivo: {e}")

    if opcion == 3:
        print('---Buscar cliente---')

        cedula = input('Ingrese la cédula del cliente a buscar: ')
        if cedula in clientes:
            cliente = clientes[cedula]
            print(f'\nCédula: {cedula}, Nombre: {cliente['nombre']}, Apellido: {cliente['apellido']}, Edad: {cliente['edad']}, Email: {cliente['email']}, Teléfono: {cliente['telefono']}, Dirección: {cliente['direccion']}, Es preferencial: {cliente['preferencial']}')

    if opcion == 4:
        print('---Listar todos los clientes---')

        for cedula, cliente in clientes.items():
            print(f'\n🙋Cédula: {cedula}, Nombre: {cliente['nombre']}, Apellido: {cliente['apellido']}, Edad: {cliente['edad']}, Email: {cliente['email']}, Teléfono: {cliente['telefono']}, Dirección: {cliente['direccion']}, Es preferencial: {cliente['preferencial']}')

    if opcion == 5:
        print('Listar clientes preferenciales')

        for cedula, cliente in clientes.items():
            if cliente['preferencial'] == 's':
                print(f'\n🙋Cédula: {cedula}, Nombre: {cliente['nombre']}, Apellido: {cliente['apellido']}, Edad: {cliente['edad']}, Email: {cliente['email']}, Teléfono: {cliente['telefono']}, Dirección: {cliente['direccion']}, Es preferencial: {cliente['preferencial']}')

    if opcion == 6:     
        print('Saliendo...')
