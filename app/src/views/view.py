from flask import render_template

class DepartamentoView:
    @staticmethod
    def ver_departamentos(data):
        return render_template('departamentos.html',data=data)
    
    @staticmethod
    def formulario_departamento():
        return render_template('formulario_departamento.html')
    
    @staticmethod
    def editar_departamento(dep,id):
        return render_template('editar_departamento.html',dep=dep,id=id)
