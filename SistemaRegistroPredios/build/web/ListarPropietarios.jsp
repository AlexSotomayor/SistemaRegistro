<%-- 
    Document   : ListarPredios
    Created on : 18-dic-2019, 18:42:47
    Author     : Marta
--%>
<%@page import="cl.aiep.conexion.conexion"%>
<%@page import="cl.aiep.controller.GuardarDatosPredio"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado Propietario</title>
        <link href="Css/EstiloGillaPropietarios.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        
        <div id="Marcotexto">
            <%
                conexion cnx = new conexion();
            %>
            <table border="1" class="table table-bordered table-write">
                <tr>
                    <td><div class="tituloChico">RUT</div></td>
                    <td><div class="tituloChico">NOMBRES</div></td>
                    <td><div class="tituloChico">APELLIDO PATERNO</div></td>
                    <td><div class="tituloChico">APELLIDO MATERNO</div></td>
                    <td><div class="tituloChico">DIRECCION</div></td>
                    <td><div class="tituloChico">TELEFONO</div></td>
                    <td><div class="tituloChico">CORREO ELECTRONICO</div></td>
                </tr>
                <%
                    String usuarios = "SELECT * FROM VW_Vista_Propietario";

                    ResultSet rs = cnx.consultar(usuarios);

                    while (rs.next()) {


                %>

                <tr>
                    <td class="text-center"><%= rs.getString(1)%></td>
                    <td class="text-center"><%= rs.getString(2)%></td>
                    <td class="text-center"><%= rs.getString(3)%></td>
                    <td class="text-center"><%= rs.getString(4)%></td>
                    <td class="text-center"><%= rs.getString(5)%></td>
                    <td class="text-center"><%= rs.getString(6)%></td>
                    <td class="text-center"><%= rs.getString(7)%></td>
                    <td class="text-center">
                        <a href="EditarPropietarios.jsp?id=<%= rs.getString(1)%>" class="btn btn-warning btn-sm">Editar</a>
                        <a href="EliminarPropietarios.jsp?id=<%= rs.getString(1)%>" class="btn btn-danger btn-sm">Eliminar</a>
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
    </body>
</html>
