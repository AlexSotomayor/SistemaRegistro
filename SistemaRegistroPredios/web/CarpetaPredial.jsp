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
        <title>Registro de plan de Manejo</title>
    </head>
    <body>
        <form action="" method="POST">
                
                    <%@include  file="Menu.jsp" %>
                    <table border="0" cellspacing="0" cellpadding="2" align="center">
                        <tr> 
                            <td colspan="2" align="center"><br>
                                <h3>Ingreso Carpeta Predial</h3>
                            </td>
                        </tr>
                    <td><div class="tituloChico">Número Resolución</div></td>
                        <td>
                            <input type="text" name="NumeroResolucion" class="autorut" style="width: 200px" autocomplete="off">
                        </td>
                        <tr>
                            <td><div class="tituloChico">Fecha</div></td>
                            <td>
                                <input type="date" name="fecha" class="autorut" style="width: 200px" autocomplete="off">
                            </td>
                        </tr>
                        <tr>
                            <td><div class="tituloChico">Infracción</div></td>
                            <td> 
                                <input type="text" name="Infraccion" class="autorut" style="width: 200px" autocomplete="off">    </td>
                        </tr>
                        <tr>
                            <td><div class="tituloChico">Estado Resolución:</div></td>
                            <td> 
                                <label>Aprobada
                                    <input type="radio" value="aprobada" name="Estado">

                                    Denegada
                                    <input type="radio" value="denegada" name="Estado">
                                </label>
                        </tr>

                        <tr>
                            <td><div class="tituloChico">Número Carpeta Predial</div></td>
                            <td> 
                                <input type="text" name="Infraccion" class="autorut" style="width: 200px" autocomplete="off">    </td>
                        </tr>

                        <tr> 
                            <td colspan="2" align="center">
                                <button class="button10" type="button" onclick="submit()">Guardar</button>    </td>
                        </tr>
                        
                        <tr> 
                        <td colspan="2" align="center">
                            <a href="PlanDeManejo.jsp"><button class="button10" type="button" onclick="submit()">Continuar</button></a></td>
                        </tr>
                        
                    </table>              
        </form>
    </body>
</html>
