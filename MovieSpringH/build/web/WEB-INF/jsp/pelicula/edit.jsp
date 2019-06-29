<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Edit Pelicula</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
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
                               
                                
                            </p>
                            <table>
                                <tbody>
                                    <tr>
                                        <td>
                                               <form:label path="pelNombre">Nombre:</form:label>
                                               <form:input path="pelNombre" cssClass="form-control" />
                                        </td>
                                    <tr/>
                                    <form:form method="post" commandName="director">
                                      <tr>
                                        <td>
                                               <form:label  path="dirNombre">Director:</form:label>
                                               <form:input path="dirNombre" cssClass="form-control" />
                                        </td>
                                    <tr/>
                                    </form:form>
                                    
                                    <form:form method="post" commandName="genero">
                                      <tr>
                                        <td>
                                               <form:label path="genNombre">Genero:</form:label>
                                               <form:input path="genNombre" cssClass="form-control" />
                                        </td>
                                    <tr/>  
                                    </form:form>
                                    
                                     <form:form method="post" commandName="formato">
                                      <tr>
                                        <td>
                                               <form:label path="forNombre">Formato:</form:label>
                                               <form:input path="forNombre" cssClass="form-control" />
                                        </td>
                                    <tr/>
                                    </form:form>
                                     
                                    
                                    <tr>
                                        <td>
                                                <form:label path="pelFechaEstreno">Fecha Estreno: </form:label>
                                                <form:input path="pelFechaEstreno" id="datepicker" cssClass="form-control" />
                                        </td>
                                    <tr/>  
                                    <tr>
                                        <td>
                                               <form:label path="pelCosto">Costo</form:label>
                                               <form:input path="pelCosto" id="datepicker" cssClass="form-control" />
                                        </td>
                                    <tr/>  
                                </tbody>
                            <table/>
                            
                            <hr />
                            <input type="submit" value="Enviar" class="btn btn-danger" />
                        </form:form>
                        
                </div>
            </div>
        </div>
    </body>
</html>
