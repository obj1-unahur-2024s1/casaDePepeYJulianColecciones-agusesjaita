import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)
import cuentasBancarias.*

object casaDePepeYJulian {
	const cosas = []
	var cuentaQuePaga
	var dineroAGastar = 0
	
	method quienPaga(cuenta) {cuentaQuePaga = cuenta}
	
	method gastar(cantidad) {cuentaQuePaga.extraer(cantidad)}

	method dineroDisponible() = cuentaQuePaga.saldo()
	
	method comprar(cosa) {cosas.add(cosa)
		dineroAGastar = dineroAGastar + cosa.precio()
	}
	
	method cantidadDeCosasCompradas() = cosas.size()
	
	method tieneComida() = cosas.any({cosa => cosa.esComida()})
	
	method vieneDeEquiparse() {return cosas.last().esElectrodomestico() or cosas.last().precio() > 50000}
	
	method esDerrochona() = cosas.sum({cosa => cosa.precio()}) > 90000
	
	method compraMasCara() = cosas.max({cosa => cosa.precio()})
	
	method electrodomesticosComprados() = cosas.filter({cosa => cosa.esElectrodomestico()})

	method malaEpoca() = cosas.all({cosa => cosa.esComida()})
	
	method queFaltaComprar(lista) = lista.difference(cosas)
	
	method faltaComida() = cosas.filter({cosa => cosa.esComida()}).size() < 2
	
	
}
