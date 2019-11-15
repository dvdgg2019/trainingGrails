<!doctype html>
<html lang="es">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="layout" content="main"/>
    <meta name="layout" content="main"/>
    <title>Menu Personas</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
</head>
    <body>
    </br></br>
        <g:form>
            </br>
            <p class="text-center">
              <button type="button" class="btn btn-info btn-lg"><g:link controller="Person" action="Nueva_Person">Registrar nueva persona</g:link></button>
            </p>
            <p class="text-center">
              <button type="button" class="btn btn-info btn-lg"><g:link controller="Person" action="Lista_Person">Mostrar lista de personas</g:link></button>
            </p>
        </g:form>
    </body>
</html>