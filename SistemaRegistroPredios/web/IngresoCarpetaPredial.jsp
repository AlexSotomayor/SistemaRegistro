<%@page import="cl.aiep.conexion.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>


<%
    conexion cnx = new conexion(); 
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de plan de Manejo</title>
    </head>
    <body>
        <form action="GuardarCarpetaPredial" method="POST">
            <%@include  file="MenuAdministrativo.jsp" %>
            <table border="0" cellspacing="0" cellpadding="2" align="center">
                <tr> 
                    <td colspan="2" align="center"><br>
                        <h3>Ingreso Carpeta Predial</h3>
                    </td>
                </tr>
                <td><div class="tituloChico">Número Resolución:</div></td>
                <td>
                    <input type="text" class="form-control" name="NumeroResolucion" class="autorut" style="width: 200px" autocomplete="off">
                </td>
                <tr>
                    <td><div class="tituloChico">Fecha:</div></td>
                    <td>
                        <input type="date" name="fecha" class="form-control" style="width: 200px" autocomplete="off">
                    </td>
                </tr>
                <tr>
                    <td><div class="tituloChico">Infracción:</div></td>
                    <td> 
                        <input type="text" name="Infraccion" class="form-control" style="width: 200px" autocomplete="off">    </td>
                </tr>
                <tr>
                    <td><div class="tituloChico">Estado Resolución:</div></td>
                    <td>
                        <label class="radio-inline"><input type="radio" name="optradio">Aprobada</label>
                        <label class="radio-inline"><input type="radio" name="optradio">Denegada</label>
                    </td> 
                </tr>
                <tr>
                    <td><div class="tituloChico">Número Carpeta Predial:</div></td>
                    <td> 
                        <input type="text" name="NumeroCarpeta" class="form-control" style="width: 200px" autocomplete="off">    </td>
                </tr>
                <tr valign="top"> 
                    <td>Estudio Técnico:</td>
                    <td>
                        <select name="estudiotecnico" style="width: 250px" class="form-control">
                            <option  value='-1'>Seleccione tipo de estudio</option>
                            <%ResultSet puntero = cnx.consultar("SELECT Id_TipoPlanDeManejo,EstudioTecnico FROM TipoPlanDeManejo");
                                while (puntero.next()) {
                                    out.println("<option value='" + puntero.getInt(1) + "'>" + puntero.getString(2) + "</option>");
                                }
                            %> 
                        </select>
                    </td>
                </tr>
                <tr> 
                    <td colspan="2" align="center">
                        <button class="btn btn-primary" type="button" onclick="submit()">Guardar</button>    </td>
                </tr>
                <td colspan="2" align="center">
                    <a href="IngresoPredial.jsp"><button class="btn btn-primary" type="button" onclick="submit()">Ingresar Nuevo Predio</button></a>
                </td>  
                <tr> 
                    <td colspan="2" align="center">
                        <a href="MenuAdministrativo.jsp"><button class="btn btn-primary" type="button"  onclick="submit()">Salir</button></td></a>
                </tr>

            </table>              
        </form>
    </body>
</html>
