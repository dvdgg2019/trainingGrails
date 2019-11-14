package com.mascotas

import java.text.SimpleDateFormat

class PetController {

    def index() {
        def map = [person: Person.get(params.id)]
        render(view:'New_Pet', model: map)
    }


    def Update_Pet(){
        def mascota = Pet.get(params.id)
        mascota.name = params.Nombre
        mascota.birthDate = Date.parse("dd/MM/yyyy", params.Fecha_Nacimiento)
        mascota.adoptDate = Date.parse("dd/MM/yyyy", params.Fecha_Adopcion)
        mascota.save(flush: true)
        redirect(controller:"person", action:"Detalle_Person", id: mascota.person.id)

    }

    def Edit_Pet(){
        def map = [pet: Pet.get(params.id)]
        render(view:'Edit_Pet', model: map)
    }
}
