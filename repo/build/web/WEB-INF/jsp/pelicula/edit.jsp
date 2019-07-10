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
        <title>Edit Pelicula</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    </head>
    <% Vector Generos = DropDownDAO.getViewDataGenero();
       Vector Directores = DropDownDAO.getViewDataDirector();
       Vector Formatos = DropDownDAO.getViewDataFormato();
    %>
    <body>
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="<c:url value="/pelicula/index.htm" />">Listado de Peliculas</a></li>
                <li class="active">Editar</li>
            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">Editar</div>
                <div class="panel-body">
                 <form:form method="post" commandName="pelicula">
                            <h1>Complete el formulario</h1>
                            
                            <form:errors path="*" element="div" cssClass="alert alert-danger" />
                            

                              <p>
                                     <form:label   path="pelNombre">Nombre:</form:label>
                                     <form:input path="pelNombre" cssClass="form-control" />
                              </p>
                              <p>
                                     <form:label path="director.dirNombre">Director:</form:label>
                                     <form:select path="director.dirNombre" id="selectDN" items="<%= Directores.get(1) %>" itemsLabel="Director"  cssClass="form-control" />
                              </p>
                              <p>
                                     <form:label path="genero.genNombre">Genero:</form:label>
                                     <form:select path="genero.genNombre" id="selectGN" items="<%= Generos.get(1) %>" itemsLabel="Generos"  cssClass="form-control" />
                              </p>
                              <p>
                                     <form:label path="formato.forNombre">Formato:</form:label>
                                     <form:select path="formato.forNombre" id="selectFN" items="<%= Formatos.get(1) %>" itemsLabel="Formato"  cssClass="form-control" />
                              </p>
             
                            <table>
                                <tbody>
                                    <tr style="display:none;" name="ids">
                                        <td>
                                             <form:input path="pelId" cssClass="form-control"  />
                                             <form:select path="director.dirId" id="selectDid" items="<%= Directores.get(0) %>" itemsLabel="Director"  cssClass="form-control" />
                                             <form:select path="genero.genId" id="selectGid" items="<%= Generos.get(0) %>" itemsLabel="Generos"  cssClass="form-control" />
                                             <form:select path="formato.forId" id="selectFid" items="<%= Formatos.get(0) %>" itemsLabel="Formato"  cssClass="form-control" />
                                        </td>
                                    <tr/>
                                    
                                    <tr>
                                        <td>
                                                <form:label path="pelFechaEstreno" >Fecha Estreno: </form:label>
                                                <form:input path="pelFechaEstreno" id="datepicker" cssClass="form-control" />
                                        </td>
                                    <tr/>  
                      
                                </tbody>
                            <table/>
                              <p>
                                     <form:label path="pelCosto">Costo</form:label>
                                     <form:input path="pelCosto" id="datepicker" cssClass="form-control" />
                              </p>
                            <hr />
                            <input type="submit" value="Enviar" class="btn btn-danger" />
                        </form:form>
                        
                </div>
            </div>
        </div>
    </body>
</html>
 <script>
   $( "#selectDN" ) .change(function () {    
           $("#selectDid")[0].selectedIndex=$("#selectDN")[0].selectedIndex;
           
    });  
     $( "#selectGN" ) .change(function () {    
           $("#selectGid")[0].selectedIndex=$("#selectGN")[0].selectedIndex;
           
    });  
     $( "#selectFN" ) .change(function () {    
           $("#selectFid")[0].selectedIndex=$("#selectFN")[0].selectedIndex;
           
    });  
    
    $(function () {
        $("#datepicker").datepicker();
        
    });
 </script>  