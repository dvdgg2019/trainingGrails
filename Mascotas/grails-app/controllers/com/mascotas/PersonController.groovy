package com.mascotas

class PersonController {

    def index() {
        render(view:'Principal_Person')
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
        def p = new Person(name: params.Nombre, last_name: params.Apellido_Paterno, second_last_name: params.Apellido_Materno, phone_number: params.Telefono, address: params.Direccion)
        p.save()
        index()
    }

    def Actualizar_Person(){
        def p = Person.get(params.id)
        p.name = params.Nombre
        p.last_name = params.Apellido_Paterno
        p.second_last_name = params.Apellido_Materno
        p.phone_number = params.Telefono
        p.address = params.Direccion
        p.save(flush: true)
        index()
    }

    def Save_Pet(){
        Date date = new Date()
        def pet = Person.get(params.id)
        pet.addToPets(new Pet(name: params.Nombre, birthDate: date.parse("yyyy-MM-dd",params.Fecha_Nacimiento),
                              adoptDate: date.parse("yyyy-MM-dd",  params.Fecha_Adopcion))).save(flush: true)
        index()
    }
}
