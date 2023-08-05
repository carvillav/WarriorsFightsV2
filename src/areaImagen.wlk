
class AreaImagen {
    var property ancho
    var property alto

    method colisionan(colisionador, colisionado) {
        const colisionadorArea = colisionador.miArea()
        const colisionadoArea = colisionado.miArea()

        return !(colisionador.position().x() >= colisionado.position().x() + colisionadoArea.ancho() ||
                 colisionado.position().x() >= colisionador.position().x() + colisionadorArea.ancho() ||
                 colisionador.position().y() >= colisionado.position().y() + colisionadoArea.alto() ||
                 colisionado.position().y() >= colisionador.position().y() + colisionadorArea.alto())
    }
}
