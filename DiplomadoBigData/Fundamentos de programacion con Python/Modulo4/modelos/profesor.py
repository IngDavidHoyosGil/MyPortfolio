from modelos.persona import Persona

class Profesor(Persona):
    def __init__(self, nombre, edad, especialidad):
        super().__init__(nombre, edad)
        self.especialidad = especialidad

    def __str__(self):
        return f'{super().__str__()}, Especialidad: {self.especialidad}'