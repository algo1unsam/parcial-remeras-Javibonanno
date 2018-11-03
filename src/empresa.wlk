import pedidos.*

class Empresa {

	var property pedidos = []
	var property marcasComerciales = []

	method hacerPedidos(unPedido) {
		pedidos.add(unPedido)
	}

	method agregarMarcaComercial(unaMarcaComercial) {
		marcasComerciales.add(unaMarcaComercial)
	}

	method tieneConvenioComercial(unaMarcaComercial) {
		return marcasComerciales.any{ unaMarca => unaMarca.costoDerechosDeAutor() == unaMarcaComercial }
	}

	method descuento(unaMarcaComercial) {
		if (self.tieneConvenioComercial(unaMarcaComercial)) {
			return pedidos.remeras().tipoDeDescuento() * 2
		} else return pedidos.remeras().tipoDeDescuento()
	}

	method aplicarDescuento(unaMarcaComercial) {
		if (pedidos.sucursales().haceDescuento()) 
		pedidos.remeras().forEach{ unaRemera => unaRemera.costo() + (unaRemera.costo() * self.descuento(unaMarcaComercial)) }
	}

}

class MarcaComercial {

	var property costoDerechosDeAutor = 0

}

