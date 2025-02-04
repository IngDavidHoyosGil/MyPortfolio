"""variables: representación simbolica de algún elemento"""

# ejemplos
variable = 10
nombre = "jhon"
edad = 30
es_estudiante = True

# nomenclatura de variables 
"""
camel case: nombreEstudiante
snake case: nombre_estudiante, _nombre_estudiante
pascal case: NombreEstudiante
lower case: nombreestudiante
UPPER CASE: NOMBREESTUDIANTE
snake case uppercase: NOMBRE_ESTUDIANTE
"""

# ejemplo de representacion de variables
valor_hora = 100
cantidad_hora = 2
salario = valor_hora * cantidad_hora
print(salario)  

#tipos de datos en python

#string
nombre = 'jhon'
ciudad = "medellin"

#int
edad = 30
temperatura = -10

#float
salario = 100.5
estatura = 1.75

#boolean
es_estudiante = True
tiene_trabajo = False
es_pensionado = True

print(nombre, ciudad, edad, salario, estatura, es_estudiante, tiene_trabajo, es_pensionado)

"""
apellido = input("ingrese su apellido: ")
print(apellido)
print(type(apellido))

numero2 = input("ingrese un número: ")
print(type(numero2))

print(type(es_estudiante))
print(type(estatura))

"""

#ejercicio: ingresar dos números por la consola y sumarlos

primer_numero = int(input("ingrese el primer numero: "))
segundo_numero = int(input("ingrese el segundo numero: "))
resultado = primer_numero + segundo_numero
print(resultado)

numero = "hola"
print(type(numero))
numero = 10
print(type(numero))
print(numero)

#convertir boleano a string
es_estudiante = True
print(type(es_estudiante))
es_estudiante = str(es_estudiante)
print(type(es_estudiante))

#convertir numero a string
numero1 = 10
numero2 = 20
print(type(numero1))
print(type(numero2))
resultado = str(numero1) + str(numero2)
print(resultado)

#convertir entero a flotante
numero = 10
print(type(numero))
print(float(numero))
