
<%@page import="cl.aiep.conexion.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>

<%
    conexion cnx = new conexion();
    cnx.getConnection();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Plan de Manejo</title>
    </head>
    <body>
        <form action="" metod="">
            <div class="Principal">
                <%@include  file="Menu.jsp" %>
                <table border="0" cellspacing="0" cellpadding="2" align="center">
                    <tr> 
                        <td colspan="2" align="center">
                            <h3>Registro Plan de Manejo</h3>
                        </td>
                    </tr>

                    <tr valign="top" class="tituloChico"> 
                        <td>Estudio Técnico:</td>
                        <td>
                            <select name="Comuna">
                                <option  value='-1'>Seleccione tipo de estudio</option>
                                <%ResultSet puntero = cnx.EntregaDatos("SELECT Id_TipoPlanDeManejo,EstudioTecnico FROM TipoPlanDeManejo");
                                    while (puntero.next()) {
                                        out.println("<option value='" + puntero.getInt(1) + "'>" + puntero.getString(2) + "</option>");
                                    }
                                %> 
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td><div class="tituloChico">Marco Legal:</div></td>
                        <td> 
                            <input class="tituloChico" type="text" name="marcolegal" class="autorut" style="width: 200px" autocomplete="off">
                        </td>
                    </tr>
                    
                    <tr> 
                        <td colspan="2" >
                            <a href="IngresoPredial.jsp"><button class="button10" type="button" onclick="submit()">Ingresar Nuevo Predio</button></td></a>
                    </tr>
                    
                    <tr> 
                        <td colspan="2" >
                            <a href="Menu.jsp"><button class="button10" type="button"  onclick="submit()">Salir</button></td></a>
                    </tr>
                    
                    
                </table>
            </div>
        </form>
    </body>
</html>
