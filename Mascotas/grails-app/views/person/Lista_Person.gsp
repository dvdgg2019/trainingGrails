<!doctype html>
<html lang="es">
<head>
    <meta name="layout" content="main"/>
    <title>Personas Registradas</title>
</head>
<body>
    <g:each in="${persons}" var="person" status="i">
                <g:link action="Detalle_Person" id="${person.id}">${person.id}. ${person.name} ${person.lastName} ${person.secondLastName}</g:link>
                <p>
                    Telefono: ${person.phoneNumber}
                </p>
                <p>
                    Numero de Mascotas: ${person.petCount}
                </p>
                <br/>
            </g:each>
</body>
</html>