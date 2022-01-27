<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:directive.page pageEncoding="UTF-8" contentType="text/html" />

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado</title>
        <link rel="stylesheet" type="text/css" href="${estilo}" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    </head>
    <body>
        <br>
        <h2>Listado de profesores</h2>
        <div class="row justify-content-center" >
            <table class="table table-striped" style="width: 500px">
                <tr>
                    <th>Datos Personales</th>
                    <th>Direccion</th>
                </tr>

                <c:forEach var="profesor" items="${listado}">
                    <tr>
                        <td>${profesor.nombre}  ${profesor.ape1} ${profesor.ape2}</td>

                        <td>${profesor.direccion.calle} N ${profesor.direccion.numero}, ${profesor.direccion.poblacion} ${profesor.direccion.provincia}</td>
                    </tr>   
                </c:forEach>
            </table>
        </div>
        <p class="boton"><a href="${contexto}/" class="enlace">Men&uacute; inicial</a></p>

    </body>
</html>