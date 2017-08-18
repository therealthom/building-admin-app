package xyz.tech.nuup

class TipoDeIngreso {

    String nombre

    static constraints = {
        nombre blank: false
    }

    String toString() {
        nombre
    }
}
