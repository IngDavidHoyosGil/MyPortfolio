'''
Herencia es un concepto en el que una clase puede heredar atributos y métodos de otra clase.
Esto permite reutilizar código y crear clases más específicas a partir de una clase base.
'''

class vehiculo:
    def __init__(self, marca, modelo):
        self.marca = marca
        self.modelo = modelo

    def arrancar(self):
        raise NotImplementedError('Las subclases deben implementar este método.')     

    def detenerse(self):
        raise NotImplementedError('Las subclases deben implementar este método.')

class carro(vehiculo):
    def __init__(self, marca, modelo, tipo_combustible):
        super().__init__(marca, modelo)
        self.tipo_combustible = tipo_combustible   

    def arrancar(self):
        print('El carro ha arrancado.')         

    def detenerse(self):
        print('El carro se ha detenido.')               

class moto(vehiculo):
    def __init__(self, marca, modelo, tipo_motor):
        super().__init__(marca, modelo)
        self.tipo_motor = tipo_motor

    def arrancar(self):
        print('La moto ha arrancado.')         

    def detenerse(self):
        print('La moto se ha detenido.')     

carro1 = carro('Toyota', 'Hilux', 'Gasolina')        
carro1.arrancar()
carro1.detenerse()
print(carro1.marca, carro1.modelo, carro1.tipo_combustible)

moto1 = moto('Honda', 'CBR600R', '4 tiempos')
moto1.arrancar()
moto1.detenerse()
print(moto1.marca, moto1.modelo, moto1.tipo_motor)