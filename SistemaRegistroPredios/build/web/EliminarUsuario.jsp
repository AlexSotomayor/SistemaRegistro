<%@page import="cl.aiep.conexion.conexion"%>
<%@page import="cl.aiep.controller.GuardarDatosPredio"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Usuario</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <%
            conexion cnx = new conexion();
            String id = request.getParameter("id");
            String users = "select * from Usuario where Id_Usuario ="+id;
            ResultSet rs1 = cnx.consultar(users);
            while (rs1.next()) {
                String nombre = rs1.getString(2);
        %>
        <form action="DeleteUsuario" method="POST">
        <table border="0" cellspacing="0" cellpadding="2" align="center">
            <tr>
                <td>¿Seguro de eliminar a usuario "<%out.println(nombre);%>"?</td>
                    <input type="hidden" name="id" value="<%out.println(id);%>">
                    </tr>
                    <tr>
                <td colspan="2" align="center">
                    <button class="btn btn-primary" type="button" onclick="submit()">Confirmar</button>
                    <a href="ListarUsuarios.jsp"><button class="btn btn-primary" type="button" onclick="submit()">Volver al Listado</button></a>
                </td>
            </tr>
        </table>
        </form>
        <%}%>
    </body>
</html>
