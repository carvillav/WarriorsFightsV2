import wollok.game.*
import areaImagen.*

class Arma {
	
	var property image
	var property position
	var property poderLetalidad
	var property energiaRequerida
	var property miArea
	
	method movimiento()
	method recibeAtaque(armaPersonaje)
	method desaparece()/* = pantallaPrincipal.quitar(self)*/
	method colisionoConPersonaje(unPersonaje) = miArea.colisionan(unPersonaje, self)
	method position(x,y){ position = game.at(x,y) }
	
}
