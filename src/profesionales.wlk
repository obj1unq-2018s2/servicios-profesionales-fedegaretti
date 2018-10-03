import universidades.*
import asociacion.*
// esta clase está completa, no necesita nada más
class ProfesionalAsociado {

	var property universidad = null

	method provinciasDondePuedeTrabajar() = #{ "Entre Ríos", "Corrientes", "Santa Fe" }

	method honorariosPorHora() = 3000
	
	method cobrar()	{ universidad.recibirDonacion(self.honorariosPorHora())}
}

// a esta clase le faltan métodos
class ProfesionalVinculado {

	var property universidad = null
	
	method provinciasDondePuedeTrabajar() = #{universidad.provincia()}

	method honorariosPorHora() = universidad.honorarios()
	
	method cobrar()	{ universidad.recibirDonacion(self.honorariosPorHora()/2)}
}

// a esta clase le faltan atributos y métodos
class ProfesionalLibre {

	var property universidad = null
	var property provinciasDondePuedeTrabajar = null
	var property honorariosPorHora = null
	var  totalCobrado = null
	
	method cobrar() {totalCobrado += self.honorariosPorHora()}
	
	method pasarDinero(profesional,monto) {
		profesional.recibirDinero(monto)
		totalCobrado -= monto
	}
	
	method recibirDinero(monto) {totalCobrado += monto}
} 	

	



