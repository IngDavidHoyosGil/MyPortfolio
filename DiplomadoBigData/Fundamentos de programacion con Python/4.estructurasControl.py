#condicionales: if, elif, else

#ejemplo 1: usuario y contraseña
"""
user = "david"
password = "123"

user_input = input("Ingrese usuario: ")
password_input = input("Ingrese contraseña: ")

if (user_input == user and password_input == password):
    print("Bienvenido a la plataforma")
else:
    print("Usuario o contraseña incorrecta")
"""

#ejemplo 2: elif
"""
nota = int(input("Ingrese nota:"))

if (nota >= 90):
    print("A")
elif (nota >= 80):
    print("B")
elif (nota >= 70):
    print("C")
else:
    print("F")
"""

#ciclos repeticiones for y while
"""
#Ejemplo de while
contador = 1
while contador < 11:
    print(contador)
    contador += 1

 #Ejemplo de for
for i in range(1,11):
    print(i)   
"""

usuario = "david"
password = "123"
intentos = 3

while intentos > 0:
    user_input = input("Ingrese usuario: ")
    password_input = input("Ingrese contraseña: ")

    if (user_input == usuario and password_input == password):
        print("Bienvenido a la plataforma")
        break
    else:
        intentos -= 1
        print(f"Usuario o contraseña incorrecta. {intentos} intentos restantes")
        if (intentos == 0):
            print("Ha superado el numero de intentos permitidos")