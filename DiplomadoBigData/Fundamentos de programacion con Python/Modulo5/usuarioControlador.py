from usuario import Usuario
from flask import jsonify

class UsuarioControlador:
    def __init__(self):
        self.usuarios = [
            Usuario(1, 'Juan', 'juan@example.com', 'juan123'),
            Usuario(2, 'Karla', 'karla@example.com', 'karla123'),
            Usuario(3, 'Jhon', 'jhon@example.com', 'jhon123')
        ]

    def obtener_usuarios(self):
        usuarios = [usuario.__dict__ for usuario in self.usuarios]
        return jsonify(usuarios)        
    
    def buscar_usuario(self, id):
        for usuario in self.usuarios:
            if usuario.id == id:
                return jsonify(usuario.__dict__)
        return jsonify({'error': 'Usuario no encontrado.'})   
    
    def crear_usuario(self, usuario_entrada):
        id = usuario_entrada['id']
        nombre = usuario_entrada['nombre']
        correo = usuario_entrada['correo']
        contrasena = usuario_entrada['contrasena']
        nuevo_usuario = Usuario(id, nombre, correo, contrasena)
        self.usuarios.append(nuevo_usuario)
        return jsonify(nuevo_usuario.__dict__)

    def actualizar_usuario(self, id, usuario_actualizado):
        for usuario in self.usuarios:
            if usuario.id == id:
                usuario.nombre = usuario_actualizado['nombre']
                usuario.correo = usuario_actualizado['correo']
                usuario.contrasena = usuario_actualizado['contrasena']
                return jsonify(usuario.__dict__)
        return jsonify({'error': 'Usuario no encontrado.'})            

    def eliminar_usuario(self, id):
        for usuario in self.usuarios:
            if usuario.id == id:
                nombre = usuario.nombre
                self.usuarios.remove(usuario)   
                return jsonify({'mensaje': f'Usuario {nombre} ha sido eliminado correctamente.'})  
        return jsonify({'error': 'Usuario no encontrado.'})               