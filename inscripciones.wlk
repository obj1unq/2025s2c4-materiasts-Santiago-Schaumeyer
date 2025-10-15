class MateriaAprobada {
    var property materia 
    var property nota  

}

class Estudiante {
    const property materiasAprobadas = #{}
    const property carreras = #{}

    method inscribirCarrera(carrera) {
        carreras.add(carrera)
    }

    method aprobar(_materia, _nota) {
        materiasAprobadas.add(new MateriaAprobada(materia=_materia, nota=_nota))
    }  

    method validarSiAproboMateria(_materia){
        if(not self.materiasAprobadas().any({m => m.materia() == _materia})){
            self.error("No aprobaste la materia")
        }
    }
}

class Carrera{
    var property nombre
    var property materias = #{}
  
    method agregarMateria(materia) {
        materias.add(materia)
    }
}

class Materia {
    var property nombre
}