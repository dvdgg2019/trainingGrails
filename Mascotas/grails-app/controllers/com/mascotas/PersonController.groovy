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
        def p = new Person(name: params.Nombre, lastName: params.Apellido_Paterno, secondLastName: params.Apellido_Materno, phoneNumber: params.Telefono, address: params.Direccion)
        p.save()
        redirect(controller:"person", action:"index")
    }

    def Actualizar_Person(){
        def p = Person.get(params.id)
        p.name = params.Nombre
        p.lastName = params.Apellido_Paterno
        p.secondLastName = params.Apellido_Materno
        p.phoneNumber = params.Telefono
        p.address = params.Direccion
        p.save(flush: true)
        redirect(controller:"person", action:"index")
    }

    def Save_Pet(){
        Date date = new Date()
        def pet = Person.get(params.id)
        pet.addToPets(new Pet(name: params.Nombre, birthDate: date.parse("dd/MM/yyyy",params.Fecha_Nacimiento),
                              adoptDate: date.parse("dd/MM/yyyy",  params.Fecha_Adopcion))).save(flush: true)
        redirect(controller:"person", action:"index")
    }
}
