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
    <body>
        <div>   
            <%
                conexion cnx = new conexion();
            %>
            <table border="0" cellspacing="0" cellpadding="2" align="center">
                <tr>
                    <td><div class="tituloChico">NOMBRE</div></td>
                    <td><div class="tituloChico">RUT</div></td>
                    <td><div class="tituloChico">NIVEL</div></td>
                    <td><div class="tituloChico">TIPO</div></td>
                </tr>
                <%
                    String users = "select * from Usuario";
                    String editar = "Editar";
                    String eliminar = "Eliminar";
                    
                    ResultSet rs = cnx.consultar(users);
                    
                    while(rs.next()){
                        out.println("<tr>");
                        out.println("<td>"+rs.getString(2)+"</td>");
                        out.println("<td>"+rs.getString(3)+"</td>");
                        out.println("<td>"+rs.getString(5)+"</td>");
                        out.println("<td>"+rs.getString(6)+"</td>");
                        out.println("<td><a href=EditarUsuario.jsp?id="+rs.getInt(1)+">Editar</a></td>");
                        out.println("<td><a href=EliminarUsuario.jsp?id="+rs.getInt(1)+">Eliminar</a></td>");
                        out.println("</tr>");
                    }
                %>
                
            </table>
        </div>
    </body>
</html>