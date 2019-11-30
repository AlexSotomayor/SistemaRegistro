
<%@page import="cl.aiep.conexion.conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    conexion cnx = new conexion();
    cnx.getConnection();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingreso de predio</title>
    </head>
    <body>
        <div>
            <form action="GuardarPredio" method="POST">
                <div id="principal">
                    <%@include  file="Menu.jsp" %>
                    <table border="0" cellspacing="0" cellpadding="2" align="center">
                        <tr> 
                            <td colspan="2" align="center">
                                <h3>Ingreso Predio</h3>
                            </td>
                        </tr>
                        
                        <td><div class="tituloChico">Nombre</div></td>
                        <td> 
                            <input type="text" name="Nombre" class="autorut" style="width: 200px" autocomplete="off">
                        </td>
                        </tr>

                        <tr>
                            <td><div class="tituloChico">Superficie</div></td>
                            <td> 
                                <input type="text" name="Superficie" class="autorut" style="width: 200px" autocomplete="off">    </td>
                        </tr>

                        <tr>
                            <td><div class="tituloChico">Rol Avalúo</div></td>
                            <td> 
                                <input type="text" name="rolAvaluo" class="autorut" style="width: 200px" autocomplete="off">    </td>
                        </tr>

                        <tr>
                            <td><div class="tituloChico">Coordenada UTM N</div></td>
                            <td> 
                                <input type="text" name="coordenadaUTMN" class="autorut" style="width: 200px" autocomplete="off">
                            </td>
                        </tr>

                        <tr>
                            <td><div class="tituloChico">Coordenada UTM E</div></td>
                            <td> 
                                <input type="text" name="coordenadaUTME" class="autorut" style="width: 200px" autocomplete="off">
                            </td>
                        </tr>
                        
                        <tr valign="top" style="width: 200px"> 
                            <td>Comuna:</td>
                            <td>
                                <select name="Comuna">
                                    <option  value='-1'>-- Seleccione una comuna --</option>
                                    <%ResultSet puntero = cnx.EntregaDatos("SELECT Id_Comuna,Nombre FROM Comuna");
                                        while (puntero.next()) {
                                            out.println("<option value='" + puntero.getInt(1) + "'>" + puntero.getString(2) + "</option>");
                                        }
                                    %> 
                                </select>
                            </td>
                        </tr>
                        
                        <br>
                        <tr> 
                            <td colspan="2" align="center">
                                <button class="button10" type="button" onclick="submit()">Guardar</button>    </td>
                        </tr>
                        <tr> 
                            <td colspan="2" align="center">
                                <a href="DatosPropietario.jsp"><button class="button10" type="button" onclick="submit()">Continuar</button></a>    </td>
                        </tr>
                    </table>   
                    
                </div>
            </form>
        </div>

</html>
