package com.mascotas

import java.text.SimpleDateFormat

class PetController {

    def index() {
    }

    def New_Pet(){
        def map = [person: Person.get(params.id)]
        render(view:'New_Pet', model: map)
    }

    def Update_Pet(){
        def mascota = Pet.get(params.id)
        def bindingMap = [name: params.Nombre, birthDate: Date.parse("dd/MM/yyyy",params.Fecha_Nacimiento),
                          adoptDate: Date.parse("dd/MM/yyyy",  params.Fecha_Adopcion)]
        mascota.properties = bindingMap
        mascota.save(flush: true)
        redirect(controller:"person", action:"Detalle_Person", id: mascota.person.id)

    }

    def Edit_Pet(){
        def map = [pet: Pet.get(params.id)]
        render(view:'Edit_Pet', model: map)
    }
}
