<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Editar Registro</title>
</head>
<body>
        <g:form action="Actualizar_Person" id="${person.id}">
            </br></br>
            Nombre: <g:field type="text" name="Nombre" maxlength="255" value="${person.name}"/><br/><br/>
            Apellido Paterno: <g:field type="text" name="Apellido_Paterno" maxlength="255" value="${person.last_name}"/><br/><br/>
            Apellido Materno: <g:field type="text" name="Apellido_Materno" maxlength="255" value="${person.second_last_name}"/><br/><br/>
            Teléfono: <g:field type="tel" name="Telefono" maxlength="10" value="${person.phone_number}"/><br/><br/>
            Dirección: <g:field type="text" name="Direccion" maxlength="255" value="${person.address}"/></br></br>
            <g:submitButton name="actualizar" value="Actualizar"/>
            </br></br>
            </g:form>
</body>
</html>