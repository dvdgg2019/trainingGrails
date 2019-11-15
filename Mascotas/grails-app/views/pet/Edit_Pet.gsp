<!doctype html>
<html lang="es">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="layout" content="main"/>
    <meta name="layout" content="main"/>
    <title>Editar Mascota</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
</head>
    <body>
        </br></br>
        <g:form action="Update_Pet" id="${pet.id}">
            <g:set var="birth"><g:formatDate format="dd/MM/yyyy" date="${pet.birthDate}"/></g:set>
            <g:set var="adopt"><g:formatDate format="dd/MM/yyyy" date="${pet.adoptDate}"/></g:set>
            <div class="form-group">
               <label for="Nombre" class="col-sm-2 control-label">Nombre:</label>
               <div class="col-sm-10">
                <g:field type="text" name="Nombre" maxlength="255" required="" value="${pet.name}"/>
               </div>
            </div>
            <div class="form-group">
               <label for="Fecha_Nacimiento" class="col-sm-2 control-label">Fecha de Nacimiento:</label>
               <div class="col-sm-10">
                <g:field type="text" name="Fecha_Nacimiento" value="${birth}"/>
               </div>
            </div>
            <div class="form-group">
               <label for="Fecha_Adopcion" class="col-sm-2 control-label">Fecha de Adopción:</label>
               <div class="col-sm-10">
                <g:field type="text" name="Fecha_Adopcion" required="" value="${adopt}"/>
               </div>
            </div>
            <div class="form-group">
                <label for="actualizar" class="col-sm-2 control-label"></label>
                <div class="col-sm-10">
                   <g:submitButton name="actualizar" value="Actualizar"/>
                </div>
            </div>
        </g:form>
    </body>
</html>