package mascotas

import com.mascotas.Person
import com.mascotas.Pet

class BootStrap {

    def init = { servletContext ->
/*        if (Person.count() == 0) {
            new Person(name: 'Diana', last_name: 'Robles', second_last_name: 'Sanchez', phone_number: '0231456897', address: 'la casa de las chelas').save()
            new Person(name: 'Jose', last_name: 'Jose', second_last_name: '', phone_number: '0123654789', address: 'la casa de los tragos').save()
            new Person(name: 'Juan', last_name: 'Lopez', second_last_name: 'Lopez', phone_number: '1236540789', address: 'la casa de los tulipanes').save()
        }
        if(Pet.count() == 0){
            new Pet(owner: '1', name: 'Fiera', birth_date: new Date(), adopt_date: new Date()).save()
            new Pet(owner: '2', name: 'Fantasma', birth_date: new Date(), adopt_date: new Date()).save()
            new Pet(owner: '3', name: 'Pantera', birth_date: new Date(), adopt_date: new Date()).save()
            new Pet(owner: '4', name: 'Solovino', birth_date: new Date(), adopt_date: new Date()).save()
        }*/
    }
    def destroy = {
    }
}
