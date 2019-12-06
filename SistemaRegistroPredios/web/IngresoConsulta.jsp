<%-- 
    Document   : IngresoConsulta
    Created on : 03-dic-2019, 16:06:46
    Author     : Marta
--%>

<%@page import="cl.aiep.conexion.conexion"%>
<%
    conexion cnx = new conexion();
    cnx.getConnection();
%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%@include  file="MenuConsultasPredio.jsp" %>

            <tr align="center"><td>
                    <form name="f" enctype="multipart/form-data" method="post" action="/fichaPredial/buscarAction.php">

                        <table border="0" cellspacing="0" cellpadding="0" align="center" class="sin_estilo">
                            <tr> 
                                <td colspan="2" align="center">
                                    <h3>Fichas Prediales</h3>
                                </td>
                            </tr>
                            <tr valign="top"> 
                                <td> 
                                    Nombre del Predio:
                                </td>
                                <td> 
                                    <input type="text" name="nomPredio" class="form-control" style="width: 200px">
                                </td>
                            </tr>
                            <tr valign="top"> 
                                <td> 
                                    Rol de Aval&uacute;o:
                                </td>
                                <td> 
                                    <input type="text" name="rol" class="form-control" style="width: 200px">
                                </td>
                            </tr>

                            <tr> 
                                <td valign="top"> 
                                    RUT:
                                </td>
                                <td> 
                                    <input type="text" name="rut" size="13" onblur="checkRutField(this);" class="form-control" style="width: 200px">
                                </td>
                            </tr>

                            <tr valign="top"> 
                                <td>Comuna:</td>
                                <td>
                                    <select name="Comuna" style="width: 250px" class="form-control">
                                        <option  value='-1'>-- Seleccione una comuna --</option>
                                        <%ResultSet comuna = cnx.EntregaDatos("SELECT Id_Comuna,Nombre FROM Comuna");
                                            while (comuna.next()) {
                                                out.println("<option value='" + comuna.getInt(1) + "'>" + comuna.getString(2) + "</option>");
                                            }
                                        %> 
                                    </select>
                                </td>
                            </tr>

                            <tr> 
                                <td colspan="2" align="center">
                                    <button class="btn btn-primary success" type="button" onclick="submit()">Buscar</button>  </td>
                            </tr>
                        </table>  
        </div>
    </body>
</html>
