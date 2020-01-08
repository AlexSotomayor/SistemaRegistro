
<%@page import="cl.aiep.conexion.conexion"%>
<%@page import="cl.aiep.controller.GuardarDatosPredio"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    conexion cnx = new conexion(); 
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingreso de predio</title>
    </head>
    <body>
        <div> 
            <form action="GuardarDatosPredio" method="post"> 
                <%@include  file="MenuAdministrativo.jsp" %>
                <form action="GuardarPredio" method="POST"> 

                    <table border="0" cellspacing="0" cellpadding="2" align="center">
                        <tr> 
                            <td colspGuardarPredioan="2" align="center">
                                <h3>Ingreso Predio</h3>
                            </td>
                        </tr>

                        <td><div class="">Nombre:</div></td>
                        <td> 
                            <input type="text" name="Nombre" class="form-control" style="width: 200px">
                        </td>
                        </tr>

                        <tr>
                            <td><div class="tituloChico">Superficie:</div></td>
                            <td> 
                                <input type="text" name="Superficie" class="form-control" style="width: 200px" autocomplete="off">    </td>
                        </tr>

                        <tr>
                            <td><div class="tituloChico">Rol Avalúo:</div></td>
                            <td> 
                                <input type="text" name="rolAvaluo" class="form-control" style="width: 200px" autocomplete="off">    </td>
                        </tr>

                        <tr>
                            <td><div class="tituloChico">Coordenada UTM N:</div></td>
                            <td> 
                                <input type="text" name="coordenadaUTMN" class="form-control" style="width: 200px" autocomplete="off">
                            </td>
                        </tr>

                        <tr>
                            <td><div class="tituloChico">Coordenada UTM E:</div></td>
                            <td> 
                                <input type="text" name="coordenadaUTME" class="form-control" style="width: 200px" autocomplete="off">
                            </td>
                        </tr>

                        <tr valign="top"> 
                            <td>Comuna:</td>
                            <td>
                                <select name="Comuna" style="width: 250px" class="form-control">
                                    <option  value='-1'>-- Seleccione una comuna --</option>
                                    <%ResultSet puntero = cnx.consultar("SELECT Id_Comuna,Nombre FROM Comuna");
                                        while (puntero.next()) {
                                            out.println("<option value='" + puntero.getInt(1) + "'>" + puntero.getString(2) + "</option>");
                                        }
                                    %> 
                                </select>
                            </td>
                        </tr>

                        <td colspan="2" align="center">
                            <button class="btn btn-primary" type="submit" onclick="submit()">Guardar</button> 
                        </td>       

                        <tr> 
                            <td colspan="2" align="center">
                                <a href="IngresoDatosPropietario.jsp"><button class="btn btn-primary" type="button" onclick="submit()">Continuar</button></a>    </td>
                        </tr>
                    </table>   
                </form>        

        </div>
    </body>
</html>
