package xyz.tech.nuup

import grails.transaction.Transactional
import xyz.tech.nuup.beans.AcumuladoPorMesBean
import groovy.sql.Sql

@Transactional
class BalanceGeneralService {

    def dataSource

    List<AcumuladoPorMesBean> ingresosPorMesSql(final int anio) {

        def sql = Sql.newInstance(dataSource)
        def rows = sql.rows("""select extract(month from fecha) as mon, sum(monto) as monto from ingreso_por_construccion group by mon order by mon""" )
        rows.collect{
            new AcumuladoPorMesBean(it)
        }
    }

    List<AcumuladoPorMesBean> egresosPorMesSql(final int anio) {

        def sql = Sql.newInstance(dataSource)
        def rows = sql.rows("""select extract(month from fecha) as mon, sum(monto) as monto from egreso_por_unidad group by mon order by mon""" )
        rows.collect{
            new AcumuladoPorMesBean(it)
        }
    }
}
