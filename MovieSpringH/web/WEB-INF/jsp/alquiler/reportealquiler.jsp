
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<html>
    <head>
   
        <title>Alquiler</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>
        
         <%@include file="../templateheader.jsp"%>
        <div class="hero common-hero">
            <div class="container">
                    <div class="row">
                            <div class="col-md-12">
                                    <div class="hero-ct">
                                            <h1>Alquiler</h1>
                                            <ul class="breadcumb">
                                                    <li class="active"><a href="/MovieSpringH/alquiler/index.htm">Alquiler</a></li>
                                                    <li> <span class="ion-ios-arrow-right"></span> Alquiler Listing</li>
                                            </ul>
                                              <a href="<c:url value="/alquiler/add.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Agregar</a>
                                    </div>
                            </div>
                    </div>
            </div>
        </div>
        <% String []img ={"",""}; %>
      <div class="page-single movie_list">
	<div class="container">
		<div class="row ipad-width2">
		
			<div class="col-md-8 col-sm-12 col-xs-12">
				<div class="topbar-filter">
					<p>Found <span>${alquiler.size()}</span> in total</p>
					
                                </div>
				
				<div class="row">
                <h1>Reporte Alquiler</h1>
                <p>
                    <form action="reportealquiler.htm" method="POST">
                    valor: <input type="text" step="any" name="valor"/>
                    <input type="submit" value="calcular"/>
                    </form>

                </p>
                <table class="table table-bordered table-striped table-hover">
                    
                        <tr>
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
                
         <%@include file="../templatefoot.jsp"%>
    </body>
            <script src="<c:url value="/resources/js/jquery.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins2.js"/>"></script>
        <script src="<c:url value="/resources/js/custom.js"/>"></script>
</html>
