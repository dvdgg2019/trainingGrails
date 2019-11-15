package com.mascotas

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class PersonSpec extends Specification implements DomainUnitTest<Person> {

    def setup() {
    }

    def cleanup() {
    }

    /*void "test something"() {
     *   expect:"fix me"
     *      true == false
    }*/

    void "El nombre, apellido paterno, telefono, direccion no pueden estar vacios"(){



        when:
        domain.name = ''
        domain.lastName = ''
        domain.phoneNumber = ''
        domain.address = ''

        then:
        !domain.validate(['name'])
        !domain.validate(['last_name'])
        !domain.validate(['phoneNumber'])
        !domain.validate(['address'])

    }

    void "El nombre, apellido paterno, telefono, direccion no pueden ser nulos"(){

        when:
        domain.name = null
        domain.lastName = null
        domain.phoneNumber = null
        domain.address = null

        then:
        !domain.validate(['name'])
        !domain.validate(['last_name'])
        !domain.validate(['phoneNumber'])
        !domain.validate(['address'])

    }

    void "Comprobando las maximas longitudes de las cadenas"(){

        when: 'Excediendo los valores maximos'
        String str = 'a' * 256
        String number = '1' * 11
        domain.name = str
        domain.lastName = str
        domain.phoneNumber = number
        domain.address = str

        then:
        !domain.validate(['name'])
        domain.errors['name'].code == 'maxSize.exceeded'
        !domain.validate(['last_name'])
        domain.errors['last_name'].code == 'maxSize.exceeded'
        !domain.validate(['phoneNumber'])
        domain.errors['phoneNumber'].code == 'maxSize.exceeded'
        !domain.validate(['address'])
        domain.errors['address'].code == 'maxSize.exceeded'

    }

    void "comprobando que el numero telefonico sean solo digitos"(){
        when:
        String str = 'a' * 10
        domain.phoneNumber = str

        then:
        !domain.validate(['phoneNumber'])
    }

    void "comprobando que el numero no sea menor a 10 digitos"(){
        when:
        String str = '1' * 9
        domain.phoneNumber = str

        then:
        !domain.validate(['phoneNumber'])
    }

    void "Comprobando las fechas"(){

        when:'Introduciendo fechas'
        Date date = new Date(113,11,1)
        domain.dateCreated = date
        domain.lastUpdated = date

        then:
        domain.validate(['dateCreated'])
        domain.validate(['lastUpdated'])

    }

}
