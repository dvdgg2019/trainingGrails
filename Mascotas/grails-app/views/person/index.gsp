<!doctype html>
<html lang="es">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="layout" content="main"/>
    <meta name="layout" content="main"/>
    <title>Menu Personas</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
    <body>
    </br></br>
        <g:form>
            </br>
            <p class="text-center">
              <button type="button" class="btn btn-info btn-lg"><g:link controller="Person" action="create">Registrar nueva persona</g:link></button>
            </p>
            <p class="text-center">
              <button type="button" class="btn btn-info btn-lg"><g:link controller="Person" action="list">Mostrar lista de personas</g:link></button>
            </p>
        </g:form>
    </body>
</html>