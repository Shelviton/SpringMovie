<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page  import="Model.DAO.DropDownDAO" %>
<%@page  import="Model.POJO.Actor" %>
<%@page  import="Model.POJO.Pelicula" %>
<%@page  import="java.util.Vector" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Editar Actor Pelicula</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        
    </head>
      <% Vector Actores = DropDownDAO.getViewDataActor();
          Vector Peliculas = DropDownDAO.getViewDataPelicula();
      %>
    <body>
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="<c:url value="/actorpelicula/index.htm" />">Actor Pelicula</a></li>
                <li class="active">Editar</li>
            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">Editar</div>
                <div class="panel-body">
                   
                     
                        <form:form method="post" commandName="actor_pelicula">
                            <h1>Complete el formulario</h1>
                            
                            <form:errors path="*" element="div" cssClass="alert alert-danger" />
                            <p style="display:none;">
                                 <form:input path="aplId" cssClass="form-control" />
                                 <form:select path="actor.actId" id="selectAid" items="<%= Actores.get(0) %>" itemsLabel="actores"  cssClass="form-control" />
                                 <form:select path="pelicula.pelId" id="selectPid" items="<%= Peliculas.get(0) %>" itemsLabel="peliculas"  cssClass="form-control" />
                            <p/>

                            <p>
                                <form:label path="aplPapel">Papel Pelicula: </form:label>
                                <form:input path="aplPapel" cssClass="form-control" />
                                <form:label path="actor.actNombre">Actor</form:label>
                                <form:select path="actor.actNombre" id="selectAN" items="<%= Actores.get(1) %>" itemsLabel="peliculas"  cssClass="form-control" />
                                <form:label path="pelicula.pelNombre">Pelicula:</form:label>
                                <form:select path="pelicula.pelNombre" id="selectPN" items="<%= Peliculas.get(1) %>" itemsLabel="peliculas"  cssClass="form-control" />
                            </p>
                            
                            <hr />
                            <input type="submit" value="Enviar" class="btn btn-danger" />
                        </form:form>
                </div>
            </div>
        </div>
    </body>
        
    <script>
   $("#selectAN" ) .change(function () {    
           $("#selectAid")[0].selectedIndex=$("#selectAN")[0].selectedIndex;
           
    });  
   $("#selectPN" ) .change(function () {    
           $("#selectPid")[0].selectedIndex=$("#selectPN")[0].selectedIndex;
           
    });    
   
 </script>  
</html>
