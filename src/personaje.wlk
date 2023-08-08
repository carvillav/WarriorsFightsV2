import wollok.game.*
import arma.*
import areaImagen.*
import barraDeVida.*

class Personaje {
	
	var property image
	var property position
	var property vida
	var property arma
	var property barraVida
	var property posicionBarraVida
	var property miArea
	var property audioAtaque
	
	method agregarArma()/*= pantallaPrincipal.mostrar(self.arma()) */
	method atacar() {arma.movimiento()} 
	method posicionarArma()
	method recibeAtaque(personaje){
		if(personaje.arma().colisionoConPersonaje(self) && self.vida()>=personaje.arma().poderLetalidad()){
			self.restarVida(personaje.arma().poderLetalidad())
			//pantallaPrincipal.emitirMensaje(self.mensaje(), self)
			personaje.posicionarArma()
		}
	}
	
	method moverse()
	
	method posicionarVida() {
		const x = self.posicionBarraVida().x()
		const y = self.posicionBarraVida().y()
		self.barraVida().position(self.position().x() + x, self.position().y() + y)
	}
	method agregarVida(){
		self.posicionarVida()
		//pantallaPrincipal.mostrar(self.barraVida())
	}
	method restarVida(cantidad){
		vida -= cantidad
		self.barraVida().actualizar(self)
	}
	method meQuedeSinVida() = self.vida() == 0
	
	method interactuarElemento(elemento)
	
}
