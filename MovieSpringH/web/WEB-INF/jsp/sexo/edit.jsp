<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Edit Sexo</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="<c:url value="/sexo/index.htm" />">Listado de Genero-Sexo</a></li>
                <li class="active">Editar</li>
            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">Editar</div>
                <div class="panel-body">
                   
                        <form:form method="post" commandName="sexo">
                            <h1>Complete el formulario ${sexo.getSexId()}</h1>
                            
                            <form:errors path="*" element="div" cssClass="alert alert-danger" />
                            

                            <p>
                                
                                
                                <form:input path="sexId" cssClass="form-control" type="hidden"/>
                                <form:label path="sexNombre">Nombre:</form:label>
                                
                                <form:input path="sexNombre" cssClass="form-control" />
                            </p>
                           
                            <hr />
                            <input type="submit" value="Enviar" class="btn btn-danger" />
                        </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
