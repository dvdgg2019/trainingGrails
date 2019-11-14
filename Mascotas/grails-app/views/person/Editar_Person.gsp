<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Editar Registro</title>
</head>
<body>
        <g:form action="Actualizar_Person">
            </br></br>
            <g:set var="start"><g:formatDate format="dd/MM/yyyy" date="${person.dateCreated}"/></g:set>
            <g:set var="update"><g:formatDate format="dd/MM/yyyy" date="${person.lastUpdated}"/></g:set>
            ID: <g:field type="text" name="id" readonly="" value="${person.id}"/><br/><br/>
            Nombre: <g:field type="text" name="Nombre" maxlength="255" value="${person.name}"/><br/><br/>
            Apellido Paterno: <g:field type="text" name="Apellido_Paterno" maxlength="255" value="${person.last_name}"/><br/><br/>
            Apellido Materno: <g:field type="text" name="Apellido_Materno" maxlength="255" value="${person.second_last_name}"/><br/><br/>
            Teléfono: <g:field type="tel" name="Telefono" maxlength="10" value="${person.phone_number}"/><br/><br/>
            Dirección: <g:field type="text" name="Direccion" maxlength="255" value="${person.address}"/></br></br>
            Fecha de Alta: <g:field type="datetime" name="Fecha de Alta" readonly="" value="${start}"/><br/><br/>
            Ultima Modificacion: <g:field type="datetime" name="Ultima Modificacion" readonly="" value="${update}"/></br></br>
            <g:submitButton name="actualizar" value="Actualizar"/>
            </br></br>
            </g:form>
</body>
</html>