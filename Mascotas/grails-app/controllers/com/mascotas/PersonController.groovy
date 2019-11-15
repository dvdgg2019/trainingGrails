package com.mascotas

class PersonController {

    def index() {
    }

    def Nueva_Person(){
        render(view:'Nueva_Person.gsp')
    }

    def Lista_Person(){
        def persons = Person.list()
        [persons:persons]
    }

    def Detalle_Person(){
        def map = [person: Person.get(params.id)]
        render(view:'Detalle_Person.gsp', model: map)
    }

    def Editar_Person(){
        def map = [person: Person.get(params.id)]
        render(view:'Editar_Person.gsp', model: map)
    }

    def Guardar_Person(){
        def person = new Person(name: params.Nombre, lastName: params.Apellido_Paterno, secondLastName: params.Apellido_Materno, phoneNumber: params.Telefono, address: params.Direccion)
        person.save()
        redirect(controller:"person", action:"index")
    }

    def Actualizar_Person(){
        def person = Person.get(params.id)
        def bindeingMap = [name: params.Nombre, lastName: params.Apellido_Paterno, secondLastName: params.Apellido_Materno, phoneNumber: params.Telefono, address: params.Direccion]
        person.properties = bindeingMap
        person.save(flush: true)
        redirect(controller:"person", action:"index")
    }

    def Save_Pet(){
        def pet = Person.get(params.id)
        pet.addToPets(new Pet(name: params.Nombre, birthDate: Date.parse("yyyy-MM-dd",params.Fecha_Nacimiento),
                              adoptDate: Date.parse("yyyy-MM-dd",  params.Fecha_Adopcion)))
        pet.save(flush: true)

        redirect(controller:"person", action:"index")
    }
}
