<!doctype html>
<html lang="es">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="layout" content="main"/>
    <meta name="layout" content="main"/>
    <title>Editar Registro</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
    <body>
        </br></br>
        <g:form action="update" id="${person.id}">
            <div class="form-group">
               <label for="Nombre" class="col-sm-2 control-label">Nombre:</label>
               <div class="col-sm-10">
                <g:field type="text" name="Nombre" maxlength="255" required="" value="${person.name}"/>
               </div>
            </div>
            <div class="form-group">
               <label for="Apellido_Paterno" class="col-sm-2 control-label">Apellido Paterno:</label>
               <div class="col-sm-10">
                <g:field type="text" name="Apellido_Paterno" maxlength="255" required="" value="${person.lastName}"/>
               </div>
            </div>
            <div class="form-group">
               <label for="Apellido_Materno" class="col-sm-2 control-label">Apellido Materno:</label>
               <div class="col-sm-10">
                <g:field type="text" name="Apellido_Materno" maxlength="255" value="${person.secondLastName}"/>
               </div>
            </div>
            <div class="form-group">
               <label for="Telefono" class="col-sm-2 control-label">Telefono:</label>
               <div class="col-sm-10">
                <g:field type="text" name="Telefono" maxlength="255" required="" value="${person.phoneNumber}"/>
               </div>
            </div>
            <div class="form-group">
               <label for="Direccion" class="col-sm-2 control-label">Direccion:</label>
               <div class="col-sm-10">
                <g:field type="text" name="Direccion" maxlength="255" required="" value="${person.address}"/>
               </div>
            </div>
            <div class="form-group">
                <label for="actualizar" class="col-sm-2 control-label"/>    </label>
                <div class="col-sm-10">
                   <g:submitButton name="actualizar" value="Actualizar"/>
                </div>
            </div>
        </g:form>
    </body>
</html>