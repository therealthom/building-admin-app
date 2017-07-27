package xyz.tech.nuup

class EgresoPorUnidad {

    Unidad unidad
    TipoDeEgreso tipoDeEgreso
    double monto
    Date fecha

    static constraints = {
        unidad nullable: false
        tipoDeEgreso nullable: false
        monto blank:false
        fecha nullable: false
    }

}
