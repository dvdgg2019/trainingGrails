package com.mascotas

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class PetSpec extends Specification implements DomainUnitTest<Pet> {

    def setup() {
    }

    def cleanup() {
    }

    /*void "test something"() {
        expect:"fix me"
            true == false
    }*/

    void "Verificar valores en blanco para las variables"(){
        when:
        domain.name = ''

        then:
        !domain.validate(['name'])
    }

    void "Verificar valores nulos para las variables"(){
        when:
        domain.owner = null
        domain.name = null
        domain.birthDate = null
        domain.adoptDate = null

        then:
        !domain.validate(['owner'])
        !domain.validate(['name'])
        domain.validate(['birthDate'])
        !domain.validate(['adoptDate'])
    }

    void "Verificar valores mayores para las variables"(){
        when:
        String str = 'a' * 256
        Date date = new Date() + 1
        domain.name = str
        domain.birthDate = date
        domain.adoptDate = date

        then:
        !domain.validate(['name'])
        !domain.validate(['birthDate'])
        !domain.validate(['adoptDate'])
    }

    void "Verificar fechas "(){
        when:
        domain.birthDate = new Date()
        domain.adoptDate = new Date() - 1

        then:
        domain.validate(['birthDate'])
        !domain.validate(['adoptDate'])
    }

    void "Verificar valores correctos para las variables"(){
        when:
        String str = 'a' * 255
        domain.name = str
        domain.birthDate = new Date() - 10
        domain.adoptDate = new Date()

        then:
        domain.validate(['name'])
        domain.validate(['birthDate'])
        domain.validate(['adoptDate'])
    }

}
