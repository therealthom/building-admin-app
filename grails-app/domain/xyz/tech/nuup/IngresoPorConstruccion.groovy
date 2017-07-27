package xyz.tech.nuup

class IngresoPorConstruccion {

    Persona titular
    Construccion construccion
    Date fecha
    double monto
    TipoDeIngreso tipoDeIngreso

    static constraints = {
        titular nullable: false
        construccion nullable: false
        fecha nullable: false
        monto blank:false
        tipoDeIngreso nullable: false
    }
}
