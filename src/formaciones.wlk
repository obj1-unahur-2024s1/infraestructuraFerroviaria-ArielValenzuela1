import vagones.*

class Formacion {
	const property vagones = []
	
	method cantPasajeros()= vagones.sum({v=> v.cantPasajeros()})
	method cantPopulares()= vagones.count({v=> v.esPopular()})
	method esCarguera()= vagones.all({v=> v.esCarguero()})
	method dispersionPeso()=
	self.vagonMasPesado().pesoMaximo()- self.vagonMasLiviano().pesoMaximo()
	
	method vagonMasPesado()= vagones.max({v=> v.pesoMaximo()})
	method vagonMasLiviano()= vagones.min({v=> v.pesoMaximo()})
	
	method cantidadConBanios()= vagones.filter({v=>v.banio()}).size()
	
	method mantenimiento() {
		vagones.forEach({v=> v.mantenimiento()})
	} 
	
	method estaOrganizada() { 
		vagones.forEach({v=> calculoOrganizacion.procesarVagon(v)}) return calculoOrganizacion.hayOrden()
		}
}

object calculoOrganizacion {
	var property hayOrden=true
	var property todosConPasajeros=true
	
	method procesarVagon(vagon){
		if (vagon.cantPasajeros() > 0){
			if(not todosConPasajeros) {hayOrden= false}
		} else {
			todosConPasajeros=false
		}
	}
}