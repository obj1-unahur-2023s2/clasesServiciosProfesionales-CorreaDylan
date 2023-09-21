// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var property universidad
		
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	method honorariosPorHora() { return 3000 }
	method trabajaEnAloSumo3Provincias() = true
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method honorariosPorHora() {return universidad.cuantoRecomendasCobrarPorHora()}
	method provinciasDondePuedeTrabajar() = universidad.provinciaDondeEstas()
	method trabajaEnAloSumo3Provincias() = true
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var property universidad
	var property honorariosPorHora
	var property provinciasDondePuedeTrabajar
	method trabajaEnAloSumo3Provincias() = provinciasDondePuedeTrabajar.size() <= 3
}

class Universidad {
	var cobroRecomendado = 5000
	const provinciaDondeEstas 
	
	method cuantoRecomendasCobrarPorHora() = cobroRecomendado
	method provinciaDondeEstas() = provinciaDondeEstas
	method inflacion(porc){
		cobroRecomendado *= 1+porc
	}
}

class Empresa {
	const profesionales = []
	var honorarioDeReferencia
	
	method contratar(p){
		return profesionales.add(p)
	}
	method cuantosEstudiaronEn(uni) = profesionales.count{p=>p.estudioEn(uni)}
	method profesionalesCaros() = profesionales.filter{p=>p.honorariosPorHora() > honorarioDeReferencia}
	method unversidadesFormadoras() = profesionales.map{p=>p.universidad()}.asSet()
	method profesionalMasBarato() = profesionales.min{p=>p.honorariosPorHora()}
	method esDeGenteAcotada() = profesionales.all{p=>p.trabajaEnAloSumo3Provincias()}
}

class Persona {
	var provinciaDondeVive
	
	method 

}

class Institucion{
	
}

class Club{
	
}




