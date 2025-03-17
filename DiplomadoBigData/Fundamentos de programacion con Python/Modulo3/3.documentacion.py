'''
Documentación y anotaciones de tipo
'''

def suma(numero1:int, numero2:int)->int:
    '''
    Esta función recibe dos parámetros enteros y retorna una suma
    '''
    return numero1 + numero2 

print(suma(1 , 2))

print(suma.__doc__)

#help(suma)


def calcular_salario(salario_base:float, horas_extras:int, horas_faltadas:int)->float:
    '''
    Esta función calcula el salario de un empleado, teniendo en cuenta las horas extras y las horas faltadas
    '''
    salario_total = salario_base + (horas_extras * 10) - (horas_faltadas * 5)
    return salario_total

print(calcular_salario.__doc__)
help(calcular_salario)

def resta(numero1:str, numero2:str)->float:
    '''
    Esta función recibe dos números y retorna la resta de los valores
    '''
    return numero1 - numero2

print(resta(1, 2))
