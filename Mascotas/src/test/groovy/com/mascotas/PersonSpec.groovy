package com.mascotas

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification
import sun.security.x509.OtherName

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
        domain.last_name = ''
        domain.phone_number = ''
        domain.address = ''

        then:
        !domain.validate(['name'])
        !domain.validate(['last_name'])
        !domain.validate(['phone_number'])
        !domain.validate(['address'])

    }

    void "El nombre, apellido paterno, telefono, direccion no pueden ser nulos"(){

        when:
        domain.name = null
        domain.last_name = null
        domain.phone_number = null
        domain.address = null

        then:
        !domain.validate(['name'])
        !domain.validate(['last_name'])
        !domain.validate(['phone_number'])
        !domain.validate(['address'])

    }

    void "Comprobando las maximas longitudes de las cadenas"(){

        when: 'Excediendo los valores maximos'
        String str = 'a' * 256
        String number = '1' * 11
        domain.name = str
        domain.last_name = str
        domain.phone_number = number
        domain.address = str

        then:
        !domain.validate(['name'])
        domain.errors['name'].code == 'maxSize.exceeded'
        !domain.validate(['last_name'])
        domain.errors['last_name'].code == 'maxSize.exceeded'
        !domain.validate(['phone_number'])
        domain.errors['phone_number'].code == 'maxSize.exceeded'
        !domain.validate(['address'])
        domain.errors['address'].code == 'maxSize.exceeded'

    }

    void "comprobando que el numero telefonico sean solo digitos"(){
        when:
        String str = 'a' * 10
        domain.phone_number = str

        then:
        !domain.validate(['phone_number'])
    }

    void "comprobando que el numero no sea menor a 10 digitos"(){
        when:
        String str = '1' * 9
        domain.phone_number = str

        then:
        !domain.validate(['phone_number'])
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
