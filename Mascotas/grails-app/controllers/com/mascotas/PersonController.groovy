package com.mascotas

class PersonController {

    def index() {
    }

    def New_Person(){
        render(view:'Nueva_Person.gsp')
    }

    def List_Person(){
        def persons = Person.list()
        [persons:persons]
    }

    def Detail_Person(){
        def map = [person: Person.get(params.id)]
        render(view:'Detalle_Person.gsp', model: map)
    }

    def Edit_Person(){
        def map = [person: Person.get(params.id)]
        render(view:'Editar_Person.gsp', model: map)
    }

    def Save_Person(){
        def bidingMap = [name:params.Nombre,
                         lastName:params.Apellido_Paterno,
                         secondLastName:params.Apellido_Materno,
                         phoneNumber:params.Telefono,
                         address:params.Direccion]
        def person = new Person(bidingMap)
        person.save()
        redirect(controller:"person", action:"index")
    }

    def Update_Person(){
        def person = Person.get(params.id)
        def bindingMap = [name: params.Nombre, lastName: params.Apellido_Paterno, secondLastName: params.Apellido_Materno, phoneNumber: params.Telefono, address: params.Direccion]
        person.properties = bindingMap
        person.save(flush: true)
        redirect(controller:"person", action:"index")
    }

    def Save_Pet(){
        def pet = Person.get(params.id)
        def bindMap = [name: params.Nombre, birthDate: Date.parse("yyyy-MM-dd",params.Fecha_Nacimiento),
                       adoptDate: Date.parse("yyyy-MM-dd",  params.Fecha_Adopcion)]
        pet.addToPets(new Pet(bindMap))
        pet.save(flush: true)
        redirect(controller:"person", action:"index")
    }
}
