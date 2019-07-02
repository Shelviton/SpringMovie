<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Actor Pelicula</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>
        <div class="container">
            <div class="row">
                <h1>Actor Pelicula</h1>
                <p>
                    <a href="<c:url value="/actorpelicula/add.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Agregar</a>
                </p>
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Actor</th>
                            <th>Pelicula</th>
                            <th>Papel</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${actor_pelicula}" var="datos">
                            <tr>
                               
                                <td><c:out value="${datos.getAplId()}" /></td>
                                <td><c:out value="${datos.getActor().getActNombre()}" /></td>
                                <td><c:out value="${datos.getPelicula().getPelNombre()}" /></td>
                             
                                
                                 <td><c:out value="${datos.getAplPapel()}" /></td>
                                 
                               
                                <td>
                                    <a href="<c:url value="edit.htm?id=${datos.getAplId()}" />"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                                    <a href="<c:url value="delete.htm?id=${datos.getAplId()}" />"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            
        </div>
    </body>
</html>
