// Como ya sabemos crear objetos y definir algunos métodos simples, 
// algunos los tenemos parcialmente definidos. Completar todo los demás
// para satisfacer lo que pide el enunciado.

object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloDeMilanesasRebozadas {
	method precio() { return 2600 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object botellaDeSalsaDeTomate {
	method precio() { return 900 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object microondas {
	method precio() { return 42000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloDeCebolla {
	method precio() { return 250 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object compu {
	method precio() { return dolar.precioDeVenta() * 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object dolar {
	method precioDeVenta() { return 1000 }	
}

object packDeComida {
	method precio() { return self.plato().precio() + self.aderezo().precio() }
	method plato() {
	const comida = [kiloDeMilanesasRebozadas, tiraDeAsado, paqueteDeFideos]
	comida.add(comida.first())
	comida.remove(comida.first())
	return comida.first()
	}
	method aderezo() {
	const acompaniamiento = [kiloDeCebolla, botellaDeSalsaDeTomate]
	acompaniamiento.add(acompaniamiento.first())
	acompaniamiento.remove(acompaniamiento.first())
	return acompaniamiento.first()
	}
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}








