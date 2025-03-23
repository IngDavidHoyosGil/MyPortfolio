from flask import Flask 
from usuarioControlador import UsuarioControlador
from flask import request

app = Flask(__name__)
usuarioControlador = UsuarioControlador()

print(__name__)

@app.route('/usuarios', methods=['GET'])
def obtener_usuarios():
    usuarios = usuarioControlador.obtener_usuarios()
    return usuarios

@app.route('/usuarios/<int:id>', methods=['GET'])
def buscar_usuario(id):
    usuario = usuarioControlador.buscar_usuario(id)
    return usuario 

@app.route('/usuarios', methods=['POST'])
def crear_usuario():
    usuario_entrada = request.get_json()
    usuario = usuarioControlador.crear_usuario(usuario_entrada)
    return usuario

@app.route('/usuarios/<int:id>', methods=['PUT'])
def actualizar_usuario(id):
    usuario_entrada = request.get_json()
    usuario = usuarioControlador.actualizar_usuario(id, usuario_entrada)
    return usuario

@app.route('/usuarios/<int:id>', methods=['DELETE'])
def eliminar_usuario(id):
    usuario = usuarioControlador.eliminar_usuario(id)
    return usuario


if __name__ == '__main__':
    app.run(debug=True)

