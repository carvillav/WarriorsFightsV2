import wollok.game.*
import personaje.*

class PersonajePrincipal inherits Personaje {
	
	var property energia
	var property posicionArmaX
	var property posicionArmaY
	
	override method posicionarArma(){
		const x = self.position().x() + self.posicionArmaX()
		const y = self.position().y() + self.posicionArmaY()
		self.arma().position(x, y)
	}
	override method agregarArma(){
		super()
		self.posicionarArma()	
	}
	override method atacar(){
			self.agregarArma()
			///sonido.reproducir(self.audioAtaque())
			self.restarEnergia(self.arma().energiaRequerida()) //pierde energia		
			self.arma().movimiento()
			game.schedule(50, {self.arma().desaparece()})
	}

	method poseeEnergiaRequerida(arma) = energia >= arma.energiaRequerida()	
	method restarEnergia(cantidad){ if(energia > 0) energia -= cantidad }
	method regenerarEnergia(){
		if(energia < 100){ 
			energia += 50
			game.say(self, "+50 energy")
		}		
	}
	
	method aumentarVida(cantidad){
		if (vida<10){
			if(vida+cantidad>10){
				vida = 10
				self.barraVida().actualizar(self)
			}else{
			vida = vida + cantidad
			self.barraVida().actualizar(self)
			game.say(self, "10+ life")
			}
		}
	}
	
	
}
