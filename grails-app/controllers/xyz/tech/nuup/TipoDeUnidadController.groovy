package xyz.tech.nuup

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class TipoDeUnidadController {

    static scaffold = TipoDeUnidad
}
