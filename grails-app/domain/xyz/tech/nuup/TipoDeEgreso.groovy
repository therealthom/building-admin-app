package xyz.tech.nuup

class TipoDeEgreso {

    String nombre

    static constraints = {
        nombre blank:false
    }

    String toString() {
        nombre
    }
}
