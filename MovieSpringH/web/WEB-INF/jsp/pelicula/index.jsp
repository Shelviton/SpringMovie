<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Pelicula</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>
        <div class="container">
            <div class="row">
                <h1>Pelicula</h1>
                <p>
                    <a href="<c:url value="/pelicula/add.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Agregar</a>
                </p>
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Genero</th>
                            <th>Director</th>
                            <th>Formato</th>
                            <th>Fecha Estreno</th>
                            <th>Costo</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${pelicula}" var="datos">
                            <tr>
                                <td><c:out value="${datos.getPelId()}" /></td>
                                <td><c:out value="${datos.getPelNombre()}" /></td>
                                <td><c:out value="${datos.getGenero().getGenNombre()}" /></td>
                                <td><c:out value="${datos.getFormato().getForNombre()}" /></td>
                                <td><c:out value="${datos.getDirector().getDirNombre()}" /></td>
                                <td><c:out value="${datos.getPelFechaEstreno()}" /></td>
                                <td><c:out value="${datos.getPelCosto()}" /></td>
                                <td>
                                    <a href="<c:url value="edit.htm?id=${datos.getPelId()}" />"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                                    <a href="<c:url value="delete.htm?id=${datos.getPelId()}" />"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
                                </td>
                                
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            
        </div>
    </body>
</html>
