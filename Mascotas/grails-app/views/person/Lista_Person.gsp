<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Personas Registradas</title>
</head>
<body>
    <g:each in="${persons}" var="person" status="i">
                <g:link action="Detalle_Person" id="${person.id}">${person.id}. ${person.name} ${person.last_name} ${person.second_last_name}</g:link>
                <p>
                    Telefono: ${person.phone_number}
                </p>
                <p>
                    Numero de Mascotas: ${person.petCount}
                </p>
                <br/>
            </g:each>
</body>
</html>