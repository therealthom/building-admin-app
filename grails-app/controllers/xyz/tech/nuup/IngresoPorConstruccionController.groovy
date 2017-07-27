package xyz.tech.nuup

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class IngresoPorConstruccionController {

    static scaffold = IngresoPorConstruccion
}
