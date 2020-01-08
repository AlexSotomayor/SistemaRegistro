<%@page import="cl.aiep.conexion.conexion"%>
<%@page import="cl.aiep.controller.GuardarDatosPredio"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Usuarios</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    
        <form action="UpdatePredio" method="POST"> 
            <div>   
                <%
                    conexion cnx = new conexion();
                    String id = request.getParameter("id");
                    String users = "select * from VW_Vista_Predio where Id =" + id;
                    ResultSet rs = cnx.consultar(users);
                    while (rs.next()) {
                        String nombre = rs.getString(2);
                        String superficie = rs.getString(3);
                        String rolAvaluo = rs.getString(4);
                        String coordenadaN = rs.getString(5);
                        String coordenadaE = rs.getString(6);
                        String idcomuna = rs.getString(7);
                        String comuna = rs.getString(8);
                %>
                <table border="0" cellspacing="0" cellpadding="2" align="center">
                    <tr> 
                        <td colspan="2" align="center">
                            <h3>Edición de Predio</h3>
                        </td>
                    </tr>
                    <input type="hidden" name="id" value="<%out.println(id);%>">
                    <tr>
                        <td><div class="tituloChico">Nombre anterior: <%out.println(nombre);%></div></td>
                        <td> 
                            <input type="text" name="Nombre" class="form-control" style="width: 200px" value="<%out.println(nombre);%>">
                        </td>
                    </tr>

                    <tr>
                        <td><div class="tituloChico">Superficie anterior: <%out.println(superficie);%></div></td>
                        <td> 
                            <input type="text" name="Superficie" class="form-control" style="width: 200px" value="<%out.println(superficie);%>" autocomplete="off">    </td>
                    </tr>

                    <tr>
                        <td><div class="tituloChico">Rol Avaluo anterior: <%out.println(rolAvaluo);%></div></td>
                        <td> 
                            <input type="text" name="rolAvaluo" class="form-control" style="width: 200px" value="<%out.println(rolAvaluo);%>" autocomplete="off">
                        </td>
                    </tr>

                    <tr>
                        <td><div class="tituloChico">Coordenada UTM N anterior: <%out.println(coordenadaN);%></div></td>
                        <td> 
                            <input type="text" name="coordenadaUTMN" class="form-control" style="width: 200px" value="<%out.println(coordenadaN);%>" autocomplete="off">
                        </td>
                    </tr>

                    <tr>
                        <td><div class="tituloChico">Coordenada UTM E anterior: <%out.println(coordenadaE);%></div></td>
                        <td> 
                            <input type="text" name="coordenadaUTME" class="form-control" style="width: 200px" value="<%out.println(coordenadaE);%>" autocomplete="off">
                        </td>
                    </tr>

                   <tr valign="top"> 
                            <td>Comuna anterior: <%out.println(comuna);%></td>
                            <td>
                                <select name="Comuna" style="width: 250px" class="form-control">
                                    <option value=<%out.println(idcomuna);%>><%out.println(comuna);%></option>
                                    <%ResultSet puntero = cnx.consultar("SELECT Id_Comuna,Nombre FROM Comuna");
                                        while (puntero.next()) {
                                            out.println("<option value='" + puntero.getInt(1) + "'>" + puntero.getString(2) + "</option>");
                                        }
                                    %> 
                                </select>
                            </td>
                        </tr>

                    
                    <td colspan="2" align="center">
                        <button class="btn btn-primary" type="button" onclick="submit()">Guardar</button> 
                        <a href="ListarPredios.jsp"><button class="btn btn-primary" type="button" onclick="submit()">Volver al Listado</button></a>    </td>
                    </tr>
                </table>
        </form>
    </div>
    <%}%>

</html>