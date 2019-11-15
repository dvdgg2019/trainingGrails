<!doctype html>
<html lang="es">
<head>
    <meta name="layout" content="main"/>
    <title>Nueva Mascota</title>
</head>
<body>

    <g:form controller="Person" action="Save_Pet" id="${person.id}">
    </br></br>

    Nombre: <g:field type="text" name="Nombre" maxlength="255" required="" value="${Nombre}"/><br/><br/>
    Fecha de Nacimiento: <g:field type="date" name="Fecha_Nacimiento" maxlength="255" value="${Fecha_Nacimiento}"/><br/><br/>
    Fecha de Adopción: <g:field type="date" name="Fecha_Adopcion" maxlength="255" required="" value="${Fecha_Adopcion}"/><br/><br/>
    <g:submitButton name="guardar" value="Guardar"/>
    </br></br>
    </g:form>

</body>
</html>