<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Edit Genero</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="<c:url value="/genero/index.htm" />">Listado de Generos</a></li>
                <li class="active">Editar</li>
            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">Editar</div>
                <div class="panel-body">
                   
                        <form:form method="post" commandName="genero">
                            <h1>Complete el formulario ${genero.getGenId()}</h1>
                            
                            <form:errors path="*" element="div" cssClass="alert alert-danger" />
                            <p style="display:none;">
                                 <form:label path="genId">ID</form:label>
                                
                                <form:input path="genId" cssClass="form-control" hidden="false"/>
                            </p>

                            <p>
                                
                               
                                <form:label path="genNombre">Nombre:</form:label>
                                
                                <form:input path="genNombre" cssClass="form-control" />
                            </p>
                           
                            <hr />
                            <input type="submit" value="Enviar" class="btn btn-danger" />
                        </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
