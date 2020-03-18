<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="layout" content="main"/>
    <title>Personas Registradas</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
    <body>
        </br></br>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col" class="col-md-1 hidden-md"></th>
                    <th scope="col" class="col-md-1 text-center">ID</th>
                    <th scope="col" class="col-md-2 text-center">Nombre</th>
                    <th scope="col" class="col-md-2 text-center">Apellido Paterno</th>
                    <th scope="col" class="col-md-2 text-center">Apellido Materno</th>
                    <th scope="col" class="col-md-2 text-center">Telefono</th>
                    <th scope="col" class="col-md-1 text-center"># de Mascotas</th>
                    <th scope="col" class="col-md-1 hidden-md"></th>
                </tr>
            </thead>
            <tbody>
                <g:each in="${persons}" var="person">
                    <tr>
                        <td> </td>
                        <td class="text-center">${person.id}</td>
                        <td class="text-center"><g:link action="details" id="${person.id}">${person.name}</g:link></td>
                        <td class="text-center">${person.lastName}</td>
                        <td class="text-center">${person.secondLastName}</td>
                        <td class="text-center">${person.phoneNumber}</td>
                        <td class="text-center">${person.petCount}</td>
                    </tr>
                </g:each>
            </tbody>
        </table>
    </body>
</html>