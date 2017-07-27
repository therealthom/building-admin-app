package xyz.tech.nuup

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class ConstruccionController {

    static scaffold = Construccion
}
