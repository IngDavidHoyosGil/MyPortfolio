from modelos.persona import Persona

class Estudiante(Persona):
    def __init__(self, nombre, edad, grado):
        super().__init__(nombre, edad)
        self.grado = grado

    def __str__(self):
        return f'{super().__str__()}, Grado: {self.grado}'
    
    def mostrar_informacion(self):
        print(f'{super().__str__()}, Grado: {self.grado}')
    
