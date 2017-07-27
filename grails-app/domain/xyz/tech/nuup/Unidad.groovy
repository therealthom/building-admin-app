package xyz.tech.nuup

class Unidad {

    String nombre
    String detalles
    User administrador
    TipoDeUnidad tipoDeUnidad

    static constraints = {
        nombre blank:false
        detalles blank:false
        administrador nullable:false
        tipoDeUnidad nullable:false
    }

    String toString() {
        nombre
    }
}
