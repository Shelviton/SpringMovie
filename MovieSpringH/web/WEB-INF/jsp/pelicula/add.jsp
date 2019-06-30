<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Agregar Pelicula</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    </head>
    <body>
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="<c:url value="/pelicula/index.htm" />">Pelicula</a></li>
                <li class="active">Agregar</li>
            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">Formulario</div>
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
                                               <form:label   path="pelNombre">Nombre:</form:label>
                                               <form:input path="pelNombre" cssClass="form-control" />
                                        </td>
                                    <tr/>
                                    <tr>
                                        <td>
                                               <form:label path="director.dirNombre">Director:</form:label>
                                               <form:input path="director.dirNombre" cssClass="form-control" />
                                        </td>
                                    <tr/>
                                    <tr>
                                        <td>
                                               <form:label path="genero.genNombre">Genero:</form:label>
                                               <form:input path="genero.genNombre" cssClass="form-control" />
                                        </td>
                                    <tr/>  
                                    
                                    <tr>
                                        <td>
                                               <form:label path="formato.forNombre">Formato:</form:label>
                                               <form:input path="formato.forNombre" cssClass="form-control" />
                                        </td>
                                    <tr/>
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
        </div
             
    </body>
   
</html>
 <script>
    $(function () {
        $("#datepicker").datepicker();
    });
 </script>  