package xyz.tech.nuup

class TipoDeConstruccion {

    String nombre

    static constraints = {
        nombre blank:false
    }

    String toString() {
        nombre
    }

}
