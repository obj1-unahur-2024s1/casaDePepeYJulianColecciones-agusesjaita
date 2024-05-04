object cuentaCorriente {
	var saldo = 0
	
	method depositar(cantidad) {saldo = saldo + cantidad}
	
	method extraer(cantidad) {saldo = 0.max(saldo - cantidad)}

	method saldo() = saldo 	
}

object cuentaConGastos {
	var saldo = 0
	
	method depositar(cantidad) {saldo = saldo + (0.max(cantidad - 200))}
	
	method extraer(cantidad) {saldo = 0.max(saldo - if (cantidad <= 10000) (cantidad + 200)
													else cantidad + (cantidad * 0.02))}

	method saldo() = saldo 	
}

object cuentaCombinada {
	var cuentaPri 
	var cuentaSec
	
	method asignarCuentas(primera, segunda) {
		cuentaPri = primera
		cuentaSec = segunda
	}
	
	method depositar(cantidad) {cuentaPri.depositar(cantidad)}
	
	//method extraer(cantidad) {if (cuentaPri.saldo() >= cantidad) cuentaPri.extraer(cantidad) else cuentaSec.extraer(cantidad)}

	method extraer(cantidad) {
		const consumoCuentaPri = cuentaPri.saldo()
		if (cuentaPri.saldo() >= cantidad) cuentaPri.extraer(cantidad)
		else cuentaSec.extraer(cantidad - cuentaPri.saldo())
		cuentaPri.extraer(consumoCuentaPri)
	}
	
	method saldo() = cuentaPri.saldo() + cuentaSec.saldo() 	
}