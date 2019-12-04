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

        <div class="tituloPagina" align="center">Fichas Prediales</div><div class="contenedor"></div>
    <tr align="center"><td>
            <form name="f" enctype="multipart/form-data" method="post" action="/fichaPredial/buscarAction.php">
               
                    <br>
                    <table border="0" cellspacing="0" cellpadding="0" align="center" class="sin_estilo">
                        <tr valign="top"> 
                            <td> 
                                Nombre del Predio:
                            </td>
                            <td> 
                                <input type="text" name="nomPredio">
                            </td>
                        </tr>
                        <tr valign="top"> 
                            <td> 
                                Rol de Aval&uacute;o:
                            </td>
                            <td> 
                                <input type="text" name="rol">
                            </td>
                        </tr>

                        <tr> 
                            <td valign="top"> 
                                RUT:
                            </td>
                            <td> 
                                <input type="text" name="rut" size="13" onblur="checkRutField(this);">
                            </td>
                        </tr>

                        <tr valign="top" style="width: 200px"> 
                            <td>Comuna:</td>
                            <td>
                                <select name="Comuna">
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
                    </body>
                    </html>
