package xyz.tech.nuup

import grails.plugin.springsecurity.annotation.Secured
import grails.converters.JSON

@Secured('ROLE_ADMIN')
class MainController {

    def index() {

        def bgList = new ArrayList()
        def ingresosList = new ArrayList()
        def egresosList = new ArrayList()

        for (int x = 1; x <= 12; x++) {
            def bgBean = new BalanceGeneralBean()
            bgBean.mes = x
            bgBean.ingresos = 200
            bgBean.egresos = 200
            bgList.add(bgBean)

            ingresosList.add(200)
            egresosList.add(200)
        }

        def converter = bgList as JSON

        def ingresosJSON = ingresosList as JSON
        def egresosJSON = egresosList as JSON

        println ingresosJSON
        println egresosJSON

        [ ingresosJSON : ingresosJSON, egresosJSON : egresosJSON]
    }
}
