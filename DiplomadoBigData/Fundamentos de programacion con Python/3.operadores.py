#operadores logicos, aritmeticos y booleanos

#operadores aritmeticos

suma = 5 + 5
resta = 5 - 5
multiplicacion = 5 * 5
division = 5 / 5
modulo = 5 % 5 
exponente = 5 ** 2
division_entera = 5 // 2

print(suma, resta,multiplicacion, division, modulo, exponente, division_entera)

#operadores relacionales

mayor_que = 5 > 5
menor_que = 1 < 5
mayor_igual = 5 >= 5
menor_igual = 5 <= 5
igual = 5 == 5
diferente = 5 != 5
print(mayor_que, menor_que, mayor_igual, menor_igual, igual, diferente)

#operadores booleanos

and_logico = True and True
or_logico = True or False
not_logico = not True

print(and_logico, or_logico, not_logico)

#ejemplo de usuario y contraseña

user = True
password = True
print("inicio de sesion", user and password)

#ejercicio 2
a = 10
b = 5
c = 7

resultado = (a > b) and (a > c)
resultado2 = (a + b) * c
print(resultado)
print(resultado2)

#ejercicio
es_adulto = False
es_pensionado = True

print("Es adulto y es pensionado", es_adulto and es_pensionado)