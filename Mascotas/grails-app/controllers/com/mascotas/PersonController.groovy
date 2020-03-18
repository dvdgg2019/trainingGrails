package com.mascotas

class PersonController {

    def index() {
    }

    def create(){
        render(view:'Nueva_Person')
    }

    def list(){
        def persons = Person.list()
        render(view:'List_Person',model:[persons:persons])

    }

    def details(){
        def map = [person: Person.get(params.id)]
        render(view:'Detalle_Person.gsp', model: map)
    }

    def edit(){
        def map = [person: Person.get(params.id)]
        render(view:'Editar_Person.gsp', model: map)
    }

    def save(){
        def bidingMap = [name:params.Nombre,
                         lastName:params.Apellido_Paterno,
                         secondLastName:params.Apellido_Materno,
                         phoneNumber:params.Telefono,
                         address:params.Direccion]
        def person = new Person(bidingMap)
        if(!person.validate()){
            render( view:'Nueva_Person',model:[person:person])
            return
        }
        person.save()
        redirect(controller:"person", action:"index")
    }

    def update(){
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
