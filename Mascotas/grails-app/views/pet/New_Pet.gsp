<!doctype html>
<html lang="es">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="layout" content="main"/>
    <meta name="layout" content="main"/>
    <title>Nueva Mascota</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
    <body>
        </br></br>
        <g:form controller="Person" action="Save_Pet" id="${person.id}">
            <div class="form-group">
               <label for="Nombre" class="col-sm-2 control-label">Nombre:</label>
               <div class="col-sm-10">
                <g:field type="text" name="Nombre" maxlength="255" required="" value="${Nombre}"/>
               </div>
            </div>
            <div class="form-group">
               <label for="Fecha_Nacimiento" class="col-sm-2 control-label">Fecha de Nacimiento:</label>
               <div class="col-sm-10">
                <g:field type="date" name="Fecha_Nacimiento" value="${Fecha_Nacimiento}"/>
               </div>
            </div>
            <div class="form-group">
               <label for="Fecha_Adopcion" class="col-sm-2 control-label">Fecha de Adopción:</label>
               <div class="col-sm-10">
                <g:field type="date" name="Fecha_Adopcion" required="" value="${Fecha_Adopcion}"/>
               </div>
            </div>
            <div class="form-group">
                <label for="guardar" class="col-sm-2 control-label"></label>
                <div class="col-sm-10">
                   <g:submitButton name="guardar" value="Guardar"/>
                </div>
            </div>
        </g:form>
    </body>
</html>