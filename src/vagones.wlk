class VagonPasajero{
	const property largo
	const property ancho
	var property ordenado= true
	const property banio= true
	
	method cantPasajeros()= largo * if(ancho<=3){8} else{10} - if(ordenado){0}else {15}
	
	method cantMaximaCarga() = if(banio){300}else{800}
	
	method pesoMaximo() = 2000+ 800 * self.cantPasajeros() + self.cantMaximaCarga()
	
	method esPopular()= self.cantPasajeros()>50
	
	method esCarguero()= self.cantMaximaCarga()>=1000
	
	method mantenimiento() {
		ordenado= true
	}
}

class VagonCarga {
	const property cargaMaximaIdeal
	var property maderasSueltas
	
	method cantPasajeros()= 0
	
	method cantMaximaCarga() = cargaMaximaIdeal - 400 * maderasSueltas
	
	method pesoMaximo() = 1500 + self.cantMaximaCarga()
	
	method banio()=false
	
	method esPopular()= self.cantPasajeros()>50
	
	method esCarguero()= self.cantMaximaCarga()>=1000
	
	method mantenimiento() {
		maderasSueltas = 0.max(maderasSueltas - 2)
	}
}

class VagonDormitorio {
	const property compartimientos
	const property camasXCompartimiento
	
	method cantPasajeros() = compartimientos * camasXCompartimiento
	
	method cantMaximaCarga() = 1200
	
	method pesoMaximo()= 4000 + 80 * self.cantPasajeros() + self.cantMaximaCarga()
	
	method banio()= true
	
	method esPopular()= self.cantPasajeros()>50
	
	method esCarguero()= self.cantMaximaCarga()>=1000
	
	method mantenimiento() {}
}


