package com.mascotas

class PetController {

    def index() {
        def map = [person: Person.get(params.id)]
        render(view:'New_Pet', model: map)
    }


    def Update_Pet(){
        def m = Pet.get(params.id)
        m.name = params.Nombre
        m.birthDate = params.Fecha_Nacimiento
        m.adoptDate = params.Fecha_Adopcion
        m.save(flush: true)
    }

    def Edit_Pet(){
        def map = [pet: Pet.get(params.id)]
        render(view:'Edit_Pet', model: map)
    }
}
