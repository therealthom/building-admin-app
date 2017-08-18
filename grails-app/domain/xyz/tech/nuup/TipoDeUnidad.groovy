package xyz.tech.nuup

class TipoDeUnidad {

    String nombre

    static constraints = {
        nombre blank:false
    }

    String toString() {
        nombre
    }
}
