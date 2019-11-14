package com.mascotas

class Person {

    String name
    String last_name
    String second_last_name
    String phone_number
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
        last_name blank: false, maxSize: 255
        second_last_name blank: true, nullable: true, maxSize: 255
        phone_number maxSize: 10, blank: false, matches: /\d{10}/
        address maxSize: 255, blank: false
    }

}
