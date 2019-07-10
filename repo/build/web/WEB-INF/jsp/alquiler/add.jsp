<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.util.Vector" %>
<%@page  import="Model.POJO.Socio" %>
<%@page  import="Model.POJO.Pelicula" %>
<%@page  import="Model.DAO.DropDownDAO" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Registrar Alquiler</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    </head>
    <% Vector Peliculas = DropDownDAO.getViewDataPelicula();
            Vector Socios = DropDownDAO.getViewDataSocio();%>
    <body>
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="<c:url value="/alquiler/index.htm" />">Pelicula</a></li>
                <li class="active">Agregar</li>
            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">Formulario</div>
                <div class="panel-body">
                    <form:form method="post" commandName="alquiler">
                        <h1>Nuevo Alquiler</h1>

                        <form:errors path="*" element="div" cssClass="alert alert-danger" />


                        <p>

                        </p>
                        <p>
                            <form:label path="socio.socNombre">Socio:</form:label>
                            <form:select path="socio.socNombre" id="selectSON" items="<%= Socios.get(1)%>" itemsLabel="Director"  cssClass="form-control" />
                        </p>
                        <p>
                            <form:label path="pelicula.pelNombre">Pelicula</form:label>
                            <form:select path="pelicula.pelNombre" id="selectPN" items="<%= Peliculas.get(1)%>" itemsLabel="Generos"  cssClass="form-control" />
                        </p>


                        <table>
                            <tbody>
                                <tr style="display:none;" name="ids">
                                    <td>
                                        <form:input path="alqId" cssClass="form-control"  />
                                        <form:select path="socio.socId" id="selectSOid" items="<%= Socios.get(0)%>" itemsLabel="Generos"  cssClass="form-control" />
                                        <form:select path="pelicula.pelId" id="selectPid" items="<%= Peliculas.get(0)%>" itemsLabel="Director"  cssClass="form-control" />


                                    </td>
                                <tr/>

                                <tr>
                                    <td>
                                        <form:label path="alqFechaDesde" >Fecha Alquiler: </form:label>
                                        <form:input path="alqFechaDesde" id="datepickerD" cssClass="form-control" />
                                    </td>
                                <tr/>  

                                <tr>
                                    <td>
                                        <form:label path="alqFechaHasta" >Fecha Vencimiento: </form:label>
                                        <fmt:formatDate var="fmtDate"  value="${form.bean.dateProperty}"  pattern="dd/MM/yyyy"/>
                                        <form:input name="bean.dateProperty" path="alqFechaHasta" id="datepickerH" cssClass="form-control"  value="${fmtDate}" />                                                
                                    </td>
                                <tr/>  
                                <tr>
                                    <td style="display:nonse;" >
                                        <form:label path="alqFechaEntrega" >Fecha Entrega: </form:label>
                                        <form:input path="alqFechaEntrega" id="datepickerE" cssClass="form-control" />
                                    </td>
                                <tr/>  

                            </tbody>
                            <table/>
                            <p>
                                <form:label path="alqValor">Valor Alquiler</form:label>
                                <form:input path="alqValor" id="datepicker" cssClass="form-control" />
                            </p>
                            <hr />
                            <input type="submit" value="Enviar" class="btn btn-danger" />
                        </form:form>
                </div>
            </div>
        </div

    </body>

</html>
<script>
    $("#selectPN").change(function () {
        $("#selectPid")[0].selectedIndex = $("#selectPN")[0].selectedIndex;

    });
    $("#selectSON").change(function () {
        $("#selectSOid")[0].selectedIndex = $("#selectSON")[0].selectedIndex;

    });


    $(function () {
        $("#datepickerD").datepicker();
        $("#datepickerH").datepicker();
        $("#datepickerE").datepicker();

    });
</script>  