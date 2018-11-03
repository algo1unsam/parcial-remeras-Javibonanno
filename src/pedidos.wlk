import remeras.*

class Pedido {

	var property remeras = []
	var property sucursales = []

	method agregarRemerasAlPedido(unaRemera) {
		return remeras.add(unaRemera)
	}

	method agregarSucursal(unaSucursal) {
		sucursales.add(unaSucursal)
	}

	method costoBase() {
		return remeras.costo() * sucursales.cantidadRemeras()
	}

	method costo() {
		return self.costoBase()
	}

}

