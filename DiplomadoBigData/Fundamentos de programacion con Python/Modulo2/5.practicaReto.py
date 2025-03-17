"""
Crear un programa que permita registrar clientes con la siguiente información:
cédula, nombre, apellido, edad, email, teléfono, dirección.
Guardar la información en un diccionario.
El programa debe permitir:
1. registrar un cliente
2. eliminar un cliente
3. buscar un cliente
4. listar todos los clientes
5. listar clientes preferenciales
6. salir

reto: realizar el programa mediante archivos json
"""


clientes = {}

opcion = 0

while opcion != 6:
    menu = """
    Menu de opciones
    1. Registrar cliente
    2. Eliminar cliente
    3. Buscar cliente
    4. Listar todos los clientes
    5. Listar clientes preferenciales
    6. Salir
    """
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
        
    if opcion == 2:
        print('---Eliminar cliente---❌')
        cedula = input('Ingrese la cédula del cliente a eliminar: ')
        if cedula in clientes:
            del clientes[cedula]
            print('Cliente eliminado correctamente.')
    if opcion == 3:
        print('---Buscar cliente---')
        cedula = input('Ingrese la cédula del cliente a buscar: ')
        if cedula in clientes:
            cliente = clientes[cedula]
            print(f'Cédula: {cedula}, Nombre: {cliente["nombre"]}, Apellido: {cliente["apellido"]}, Edad: {cliente["edad"]}, Email: {cliente["email"]}, Teléfono: {cliente["telefono"]}, Dirección: {cliente["direccion"]}, Es preferencial: {cliente["preferencial"]} \n')
    if opcion == 4:
        print('---Listar todos los clientes---')
        for cedula, cliente in clientes.items():
            print(f'🙋‍♂️ Cédula: {cedula}, Nombre: {cliente['nombre']}, Apellido: {cliente['apellido']}, Edad: {cliente['edad']}, Email: {cliente['email']}, Teléfono: {cliente['telefono']}, Dirección: {cliente['direccion']}, Es preferencial: {cliente['preferencial']} \n')
        print('---Fin de la lista---')
    if opcion == 5:
        print('Listar clientes preferenciales')
        for cedula, cliente in clientes.items():
            if cliente['preferencial'] == 's':
                print(f'🙋‍♂️ Cédula: {cedula}, Nombre: {cliente["nombre"]}, Apellido: {cliente["apellido"]}, Edad: {cliente["edad"]}, Email: {cliente["email"]}, Teléfono: {cliente["telefono"]}, Dirección: {cliente["direccion"]}, Es preferencial: {cliente["preferencial"]} \n')
    if opcion == 6:                          
        print('Saliendo...')
