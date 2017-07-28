package xyz.tech.nuup

class TitularDeConstruccion {

    Date fechaDeOcupacion
    Persona titular
    Construccion construccion
    static constraints = {
        fechaDeOcupacion nullable:true
        titular nullable: false
        construccion nullable: false
    }

}
