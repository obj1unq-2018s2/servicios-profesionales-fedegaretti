import profesionales.*
import universidades.*

class Empresa {

	var profesionales = #{}
	var property honorariosRef = null

	method profesionalesCaros() = profesionales.filter{ profesional => profesional.honorariosPorHora() > honorariosRef }

	method universidadesFormadoras() = profesionales.map{ profesional => profesional.universidad() }
	
	method profesionalMasBarato() = profesionales.min{ profesional => profesional.honorariosPorHora() }

	method provinciaCubierta(provincia) = profesionales.any{ profesional => profesional.provinciasDondePuedeTrabajar().contains(provincia)}
	
	method cantProfesionalesEstudiaronEn(universidad) = profesionales.count{ profesional => profesional.universidad() == universidad}

	//ACA FLASHIE CUALQUIERA.
	//method profesionalPocoAtractivo(unProfesional) = 
	//	unProfesional.provinciasDondePuedeTrabajar().forEach{ provincia => self.provinciaCubierta(provincia) and unProfesional.honorariosPorHora() >profesionales.}
	
	
}	


