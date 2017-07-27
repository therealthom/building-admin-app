package xyz.tech.nuup

class Persona {

    String nombre

    static constraints = {
        nombre blank:false
    }

    String toString() {
        nombre
    }
}
