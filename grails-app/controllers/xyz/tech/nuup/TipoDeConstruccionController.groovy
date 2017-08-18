package xyz.tech.nuup

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class TipoDeConstruccionController {

    static scaffold = TipoDeConstruccion
}
