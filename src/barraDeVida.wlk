import wollok.game.*

class Vida {
	
	var property image
	var property position
	
	method position(x,y){ position = game.at(x,y) }
	method actualizar(personaje){
   		game.removeVisual(self)
   		const cantidad = personaje.vida()
	   	personaje.posicionarVida()
	   	image = cantidad.toString() + "vidas.png"
	   	game.addVisual(self)
	}
	method interactuarElemento(elem)
	
}
