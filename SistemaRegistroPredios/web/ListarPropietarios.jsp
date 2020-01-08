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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
            <%
                conexion cnx = new conexion();
            %>
        <table border="0" cellspacing="0" cellpadding="2" align="center">
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
                
                while(rs.next()){
                        out.println("<tr>");
                        out.println("<td>"+rs.getString(1)+"</td>");
                        out.println("<td>"+rs.getString(2)+"</td>");
                        out.println("<td>"+rs.getString(3)+"</td>");
                        out.println("<td>"+rs.getString(4)+"</td>");
                        out.println("<td>"+rs.getString(5)+"</td>");
                        out.println("<td>"+rs.getString(6)+"</td>");
                        out.println("<td>"+rs.getString(7)+"</td>");
                        out.println("<td><a href=EditarPropietarios.jsp?id="+rs.getInt(1)+">Editar</a></td>");
                        out.println("<td><a href=EliminarPropietarios.jsp?id="+rs.getInt(1)+">Eliminar</a></td>");
                        out.println("</tr>");
                    }
            %>
            <tr>
                <td colspan="2" align="center">
                            <a href="MenuAdministrador.jsp"><button class="btn btn-primary" type="button" onclick="submit()">Volver al Menu</button></a>
                </td>
            </tr>
        </table>
    </body>
</html>
