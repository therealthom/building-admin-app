package xyz.tech.nuup

import grails.plugin.springsecurity.annotation.Secured
import grails.converters.JSON
import xyz.tech.nuup.beans.AcumuladoPorMesBean

@Secured('ROLE_ADMIN')
class MainController {

    BalanceGeneralService balanceGeneralService

    def index() {

        int acumulador = 0

        def ingresosList = new ArrayList()
        def egresosList = new ArrayList()

        def ingresosPorMes = balanceGeneralService.ingresosPorMesSql(2017)

        for (int x = 1; x <= 12; x++) {
            if (ingresosPorMes*.mon.contains(x)) {
                println " Si"
                ingresosList.add(ingresosPorMes.get(acumulador).monto)
                acumulador++
            } else {
                println " No"
                ingresosList.add(0)
            }
        }

        acumulador = 0

        def egresosPorMes = balanceGeneralService.egresosPorMesSql(2017)
        for (int x = 1; x <= 12; x++) {
            if (egresosPorMes*.mon.contains(x)) {
                egresosList.add(egresosPorMes.get(acumulador).monto)
                acumulador++
            } else {
                egresosList.add(0)
            }
        }

        def ingresosJSON = ingresosList as JSON
        def egresosJSON = egresosList as JSON

        println ingresosJSON
        println egresosJSON

        [ingresosJSON: ingresosJSON, egresosJSON: egresosJSON]
    }
}
