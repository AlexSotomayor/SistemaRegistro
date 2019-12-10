
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
        <form action="GuardarPlanDeManejo" metod="POST">
            <div class="Principal">
                <%@include  file="MenuAdministrativo.jsp" %>
                <table border="0" cellspacing="0" cellpadding="2" align="center">
                    <tr> 
                        <td colspan="2" align="center">
                            <h3>Registro Plan de Manejo:</h3>
                        </td>
                    </tr>

                    <tr valign="top"> 
                        <td>Estudio Técnico:</td>
                        <td>
                            <select name="estudiotecnico" style="width: 250px" class="form-control">
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
                         
                        <td colspan="2" align="center">
                            <button class="btn btn-primary" type="button" onclick="submit()">Guardar</button>  
                        </td>
                    </tr>
               
                    <td colspan="2" align="center">
                        <a href="IngresoPredial.jsp"><button class="btn btn-primary" type="button" onclick="submit()">Ingresar Nuevo Predio</button></a>
                        </td>  
                    
                    <tr> 
                        <td colspan="2" align="center">
                            <a href="MenuAdministrativo.jsp"><button class="btn btn-primary" type="button"  onclick="submit()">Salir</button></td></a>
                    </tr>
                       
                    
                    
                </table>
            </div>
        </form>
    </body>
</html>