import wollok.game.*
import personaje.*

class PersonajePrincipal inherits Personaje {
	
	var energia
	var  posicionArmaX
	var  posicionArmaY
	
	method miEnergia(unaEnergia) {energia = unaEnergia}
	
	override method posicionarArma(){
		/*const x = self.position().x() + self.posicionArmaX()
		const y = self.position().y() + self.posicionArmaY()
		self.arma().position(x, y)*/
	}
	override method agregarArma(){
		super()
		self.posicionarArma()	
	}
	/*override method atacar(){
			self.agregarArma()
			sonido.reproducir(self.audioAtaque())
			self.restarEnergia(self.arma().energiaRequerida()) //pierde energia		
			self.arma().movimiento()
			game.schedule(50, {self.arma().desaparece()})
	}*/
}
