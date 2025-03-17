'''
El alcance o Scope es el contexto en el que se define una variable.
Las variables locales solo son accesibles dentro de la función.

Las variables globales son accesibles dentro y fuera de la función.
Las variables globales se definen fuera de la función. 

El alcance se refiere a la región del programa donde un espacio de nombres es directamente accesible. 

Local: La variable se busca primero en el espacio de nombre local.
Enclosing (intermedio): Si no se encuentra, se busca en los espacios de cualquier función envolvente.
Global: Si no se encuentra en los dos anteriores, se busca en el espacio de nombres globales.
Built-in: Finalmente, si no se encuentra en ninguno de los anteriores, se busca en el espacio de nombres incorporado.
'''

variable_global = 'Soy una variable_global.'

def mi_funcion():
    variable_local = 'Soy una variable local.'
    print(variable_local)  
    print(variable_global)  


contador = 0

def incrementar():
    global contador 
    contador += 1
    return contador

print(incrementar()) 
print(contador)

def funcion_exterior():
    variable_exterior = 'Variable exterior'

    def funcion_interior():
        variable_interior = 'Variable interior'
        print(variable_exterior)
        print(variable_interior)

    funcion_interior()        

funcion_exterior()

lista = [1,2,3,4,5,6,7,8,9,10]
for valor in lista: 
    numero = valor * 10
    print(valor)

print(numero)    