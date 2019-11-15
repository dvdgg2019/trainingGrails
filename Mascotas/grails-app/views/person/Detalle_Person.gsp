<!doctype html>
<html lang="es">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="layout" content="main"/>
    <meta name="layout" content="main"/>
    <title>Detalle de Registro</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
    <body>
        </br></br>
        <g:form>
            <g:set var="start"><g:formatDate format="dd/MM/yyyy" date="${person.dateCreated}"/></g:set>
            <g:set var="update"><g:formatDate format="dd/MM/yyyy" date="${person.lastUpdated}"/></g:set>
            <dl class="dl-horizontal">
              <dt>Nombre:</dt>
              <dd>${person.name}</dd>
              <dt>Apellido Paterno:</dt>
              <dd>${person.lastName}</dd>
              <dt>Apellido Materno:</dt>
              <dd>${person.secondLastName}</dd>
              <dt>Telefono:</dt>
              <dd>${person.phoneNumber}</dd>
              <dt>Direccion:</dt>
              <dd>${person.address}</dd>
              <dt>Fecha de Alta:</dt>
              <dd>${start}</dd>
              <dt>Ultima Modificacion:</dt>
              <dd>${update}</dd>
              <dt>Mascotas:</dt>
              <dd><table class="table">
                          <thead>
                              <tr>
                                  <th scope="col" class="col-md-1 text-center">ID</th>
                                  <th scope="col" class="col-md-1 text-center">Nombre</th>
                                  <th scope="col" class="col-md-10"></th>
                              </tr>
                          </thead>
                          <tbody>
                              <g:each in="${person.pets}" var="pet">
                                  <tr>
                                      <td class="text-center">${pet.id}</td>
                                      <td class="text-center"><g:link controller= "Pet" action="Edit_Pet" id="${pet.id}">${pet.name}</g:link></td>
                                  </tr>
                              </g:each>
                          </tbody>
                      </table>
              </dd>
            </dl>
             <button type="button" class="btn btn-default"><g:link action="Editar_Person" id="${person.id}">Editar</g:link></button>
             <button type="button" class="btn btn-default"><g:link controller="Pet" action="New_Pet" id="${person.id}">Agregar Mascota</g:link></button>
        </g:form>
    </body>
</html>