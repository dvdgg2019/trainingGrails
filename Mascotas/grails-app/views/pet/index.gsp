<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="header" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

<body>
<g:if test="${flash.message}">
    <div class="message" style="display: block">${flash.message}</div>
</g:if>
<div class="container">
    <div class="row col-md-6 col-md-offset-2">
        <h1 class="p-4">Lista de mascotas</h1>

    </div>

    <div class="row col-md-12 register register-right">
        <table class="table">
            <thead>
            <tr class="table-light">
                <th>Nombre</th>
                <th>Cumpleaños</th>
                <th>Adopcion</th>
                <th>Dueño</th>

            </tr>
            </thead>
            <g:each var="pet" in="${petList}">
                <tr class="table-light">
                    <td>${pet?.name}</td>
                    <td><g:formatDate format="yyyy-MM-dd" date="${pet?.birthDate}"/></td>
                    <td><g:formatDate format="yyyy-MM-dd" date="${pet?.adoptDate}"/></td>
                    <td>${pet?.person?.name} ${pet?.person?.lastName} ${pet?.person?.secondLastName}</td>
                </tr>
            </g:each>
        </table>
    </div>
</div>
</body>
</html>