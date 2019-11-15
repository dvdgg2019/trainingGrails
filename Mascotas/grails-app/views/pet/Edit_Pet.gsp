<!doctype html>
<html lang="es">
<head>
    <meta name="layout" content="main"/>
    <title>Editar Mascota</title>
</head>
<body>

    <g:form action="Update_Pet" id="${pet.id}">
    </br></br>
        <g:set var="birth"><g:formatDate format="dd/MM/yyyy" date="${pet.birthDate}"/></g:set>
        <g:set var="adopt"><g:formatDate format="dd/MM/yyyy" date="${pet.adoptDate}"/></g:set>
        Nombre: <g:field type="text" name="Nombre" maxlength="255" required="" value="${pet.name}"/><br/><br/>
        Fecha de Nacimiento: <g:field type="text" name="Fecha_Nacimiento" maxlength="255" value="${birth}"/><br/><br/>
        Fecha de Adopción: <g:field type="text" name="Fecha_Adopcion" maxlength="255" required="" value="${adopt}"/><br/><br/>
        <g:submitButton name="guardar" value="Guardar"/>
    </br></br>
    </g:form>

</body>
</html>