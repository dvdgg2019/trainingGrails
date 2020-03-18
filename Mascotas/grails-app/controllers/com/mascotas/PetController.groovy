package com.mascotas

class PetController {

    def index() {
        render(view:'index',model:[petList:Pet.list()])
    }

    def New_Pet(){
        def map = [person: Person.get(params.id)]
        render(view:'New_Pet', model: map)
    }

    def Update_Pet(){
        def mascot = Pet.get(params.id)
        def bindingMap = [name: params.Nombre, birthDate: Date.parse("dd/MM/yyyy",params.Fecha_Nacimiento),
                          adoptDate: Date.parse("dd/MM/yyyy",  params.Fecha_Adopcion)]
        mascot.properties = bindingMap
        mascot.save(flush: true)
        redirect(controller:"person", action:"Detalle_Person", id: mascot.person.id)

    }

    def Edit_Pet(){
        def map = [pet: Pet.get(params.id)]
        render(view:'Edit_Pet', model: map)
    }
}
