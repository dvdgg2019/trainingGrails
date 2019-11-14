package com.mascotas

class Pet {


    String name
    Date birthDate
    Date adoptDate
    Date dateCreated
    Date lastUpdated
    static belongsTo = [person: Person]

    static constraints = {

        name blank: false, maxSize: 255
        birthDate   blank: true, nullable: true, validator: { Date birthDate ->
                        if (birthDate > new Date()) return 'is.future'
                    }
        adoptDate   blank:false, validator: { Date adoptDate, Pet pet ->
                        if (adoptDate > new Date()) return 'is.future'
                        if(pet.birthDate != null && adoptDate.before(pet.birthDate)) {
                            return 'is.beforebirthDate'
                        }
                    }
    }
}
