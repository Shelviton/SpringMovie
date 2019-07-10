<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />

        <title>Alquiler</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />


    </head>

    <body>
        <%@include file="../header-form.jsp"%>
        <%@include file="../bg-form.jsp"%>
        <div class="container">
            <div class="row">
                <h1>Alquiler</h1>
                <p>
                    <a href="<c:url value="/alquiler/add.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Agregar</a>
                </p>
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Socio</th>
                            <th>Pelicula</th>
                            <th>Fecha Alquiler</th>
                            <th>Fecha Vencimiento</th>
                            <th>Fecha Entrega</th>
                            <th>Costo</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${alquiler}" var="datos">
                            <tr>
                                <td><c:out value="${datos.getAlqId()}" /></td>
                                <td><c:out value="${datos.getSocio().getSocNombre()}" /></td>
                                <td><c:out value="${datos.getPelicula().getPelNombre()}" /></td>
                                <td><c:out value="${datos.getAlqFechaDesde()}" /></td>
                                <td><c:out value="${datos.getAlqFechaHasta()}" /></td>
                                <td><c:out value="${datos.getAlqFechaEntrega()}" /></td>
                                <td><c:out value="${datos.getAlqValor()}" /></td>
                                <td>
                                    <a href="<c:url value="edit.htm?id=${datos.getAlqId()}" />"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                                    <a href="<c:url value="delete.htm?id=${datos.getAlqId()}" />"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

        </div>
    </body>
</html>
