<!doctype html>
<html lang="es">
<head>
    <meta name="layout" content="main"/>
    <title>Nuevo Registro</title>
</head>
<body>

    <g:form action="Guardar_Person">
    </br></br>
    Nombre: <g:field type="text" name="Nombre" maxlength="255" required="" value="${Nombre}"/><br/><br/>
    Apellido Paterno: <g:field type="text" name="Apellido_Paterno" maxlength="255" required="" value="${Apellido_Paterno}"/><br/><br/>
    Apellido Materno: <g:field type="text" name="Apellido_Materno" maxlength="255" value="${Apellido_Materno}"/><br/><br/>
    Telefono: <g:field type="text" name="Telefono" maxlength="10" required="" value="${Telefono}"/><br/><br/>
    Direccion: <g:field type="text" name="Direccion" maxlength="255" required="" value="${Direccion}"/></br></br>
    <g:submitButton name="guardar" value="Guardar"/>
    </br></br>
    </g:form>

</body>
</html>