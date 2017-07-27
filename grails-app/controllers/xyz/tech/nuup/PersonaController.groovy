package xyz.tech.nuup

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class PersonaController {

    static scaffold = Persona
}
