<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.util.List" %>
<%@page  import="java.util.Vector" %>
<%@page  import="Model.POJO.Formato" %>
<%@page  import="Model.DAO.FormatoDAO" %>
<%@page  import="Model.POJO.Genero" %>
<%@page  import="Model.DAO.GeneroDAO" %>
<%@page  import="Model.DAO.DropDownDAO" %>
<%@page  import="Model.POJO.Director" %>
<%@page  import="Model.DAO.DirectorDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Reporte Pelicula</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js">
            
        </script>
    </head>
        <% Vector Generos = DropDownDAO.getViewDataGenero();
       Vector Directores = DropDownDAO.getViewDataDirector();
       Vector Formatos = DropDownDAO.getViewDataFormato();
       %>
    <body>
   <%@include file="../templateheader.jsp"%>
        <div class="hero common-hero">
            <div class="container">
                    <div class="row">
                            <div class="col-md-12">
                                    <div class="hero-ct">
                                            <h1>Pelicula</h1>
                                            <ul class="breadcumb">
                                                    <li class="active"><a href="/MovieSpringH/pelicula/index.htm">Pelicula</a></li>
                                                    <li> <span class="ion-ios-arrow-right"></span> Agregar</li>
                                            </ul>
                                            
                                    </div>
                            </div>
                    </div>
            </div>
        </div>
        <div class="page-single">
	<div class="container">
		<div class="row ipad-width">
			
			<div class="col-md-9 col-sm-12 col-xs-12">
				<div class="form-style-1 user-pro" action="#">
                                    
                                    
<h1>Pelicula</h1>
                <p>
                    <form action="reportevalor.htm" method="POST">
                    valor: <input type="number" step="any" name="valor"/>
                    <input type="submit" value="calcular"/>
                    </form>

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
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                                    
                                </div>
                                    </div>
                            </div>
                    </div>
            </div>
         <div class="col-md-8 col-sm-12 col-xs-12">
				
        </div>

         <%@include file="../templatefoot.jsp"%>
    </body>
</html>
