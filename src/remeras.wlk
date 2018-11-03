import empresa.*

class Remera {

	var property tipoDeRemera = null

	method costo() {
		return tipoDeRemera.costo()
	}

	method descuento() {
		tipoDeRemera.descuento()
	}

}

class Lisa {

	var property talle = 0
	var property colorEsBasico = false
	var costoBase = 80

	method costo() {
		if (colorEsBasico) {
			if (self.talleEsChico()) {
				return costoBase
			}
			if (self.talleEsGrande()) {
				return costoBase + 20
			}
		} else {
		}
		return costoBase * 0.10
	}

	method talleEsChico() {
		return talle >= 32 and talle <= 40
	}

	method talleEsGrande() {
		return talle >= 41 and talle <= 48
	}

	method descuento() {
		return 0.10
	}

}

class Bordada {

	var property cantidadDeColores = 0
	var costoBordado = cantidadDeColores * 10

	method costoBordado() {
		if (costoBordado < 20) {
			return costoBordado
		} else {
			return 20
		}
	}

	method costo() {
		return self.costoBordado()
	}

	method descuento() {
		return 0
	}

}

class Sublimada {

	var property alto = 0
	var property ancho = 0
	var superficie = alto * ancho

	method costoSublimado() {
		return superficie * 0.50
	}

	method costo() {
		return self.costoSublimado()
	}

	method descuento() {
		return 0.10
	}

}

