package org.postgresql

import groovy.sql.Sql
import grails.converters.JSON

class JsonController {

    def sessionFactory

    def index() {
        Sql sql = new Sql(sessionFactory.openSession().connection())
        def foo = sql.rows('''select pg_database.oid, datname, pg_authid.rolname, pg_encoding_to_char(encoding) as encoding, datallowconn, datacl
                 from pg_database join pg_authid on (datdba=pg_authid.oid)''')
        log.debug foo
        model:[databases:foo]

    }

}

