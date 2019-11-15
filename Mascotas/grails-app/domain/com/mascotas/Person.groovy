package com.mascotas

class Person {

    String name
    String lastName
    String secondLastName
    String phoneNumber
    String address
    Date dateCreated
    Date lastUpdated
    Integer petCount = 0
    static hasMany = [pets:Pet]


    Integer getPetCount() {
        pets?.size()?:0
    }

    void beforeUpdate(){
        petCount = getPetCount()
    }


    static constraints = {
        name blank: false, maxSize: 255
        lastName blank: false, maxSize: 255
        secondLastName blank: true, nullable: true, maxSize: 255
        phoneNumber maxSize: 10, blank: false, matches: /\d{10}/
        address maxSize: 255, blank: false
    }

}
