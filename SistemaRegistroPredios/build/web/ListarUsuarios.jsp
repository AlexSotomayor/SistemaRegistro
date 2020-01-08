<%@page import="cl.aiep.conexion.conexion"%>
<%@page import="cl.aiep.controller.UpdateUsuario"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Usuarios</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="Css/EstiloGrilla.css" rel="stylesheet" type="text/css"/>
    </head>
    
    <div>   
        <%
            conexion cnx = new conexion();
        %>
        <div id="Marcotexto">
            
            <table border="1"  class="table table-bordered table-write" >
                <tr>
                    <td><div class="tituloChico">NOMBRE</div></td>
                    <td><div class="tituloChico">RUT</div></td>
                    <td><div class="tituloChico">NIVEL</div></td>
                    <td><div class="tituloChico">TIPO</div></td>
                </tr>
                <%
                    String usuarios = "select * from Usuario";
                    
                    ResultSet rs = cnx.consultar(usuarios);
                    
                    while(rs.next()){
                   
               %>
            <tr>
                <td class="text-center"><%= rs.getString(2)%></td>
                <td class="text-center"><%= rs.getString(3)%></td>
                <td class="text-center"><%= rs.getString(5)%></td>
                <td class="text-center"><%= rs.getString(6)%></td>
                <td class="text-center">
                    <a href="EditarUsuario.jsp?id=<%= rs.getString(1)%>" class="btn btn-warning btn-sm">Editar</a>
                    <a href="EliminarUsuario.jsp?id=<%= rs.getString(1)%>" class="btn btn-danger btn-sm">Eliminar</a>
                </td>
            </tr>
            <%}%>
  
                    
           
                <tr>
                    <td colspan="2" align="center">
                        <a href="MenuAdministrador.jsp"><button class="btn btn-primary" type="button" onclick="submit()">Volver al Menu</button></a>
                    </td>
                </tr>
            </table>
        </div>
    </div>

</html>