package xyz.tech.nuup

class Construccion {

    String nombre
    String detalles
    Unidad unidad
    TipoDeConstruccion tipoDeConstruccion

    static constraints = {
        nombre blank:false
        detalles blank:false
        unidad nullable:false
        tipoDeConstruccion nullable:false
    }

    String toString() {
        nombre + " - " + detalles
    }
}
