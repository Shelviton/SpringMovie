<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page  import="Model.DAO.DropDownDAO" %>
<%@page  import="Model.POJO.Sexo" %>
<%@page  import="java.util.Vector" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Agregar Actor</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        
    </head>
      <% Vector Sexos = DropDownDAO.getViewDataSexo(); %>
    
    <body>
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="<c:url value="/actor/index.htm" />">Actor</a></li>
                <li class="active">Agregar</li>
            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">Formulario</div>
                <div class="panel-body">
                   
                        <form:form method="post" commandName="actor">
                            <h1>Complete el formulario</h1>
                            
                            <form:errors path="*" element="div" cssClass="alert alert-danger" />
                            <p style="display:none;">
                                 <form:select path="sexo.sexId" id="selectSid" items="<%= Sexos.get(0) %>" itemsLabel="Sexo"  cssClass="form-control" />
                            <p/>

                            <p>
                                <form:label path="actNombre">Nombre:</form:label>
                                <form:input path="actNombre" cssClass="form-control" />
                                <form:label path="sexo.sexNombre">Nombre:</form:label>
                                <form:select path="sexo.sexNombre" id="selectSN" items="<%= Sexos.get(1) %>" itemsLabel="Sexo"  cssClass="form-control" />
                            </p>
                            
                            <hr />
                            <input type="submit" value="Enviar" class="btn btn-danger" />
                        </form:form>
                </div>
            </div>
        </div>
    </body>
    
    <script>
   $("#selectSN" ) .change(function () {    
           $("#selectSid")[0].selectedIndex=$("#selectSN")[0].selectedIndex;
           
    });  
   
 </script>  
</html>
