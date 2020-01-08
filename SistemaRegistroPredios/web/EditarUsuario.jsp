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
        <form action="UpdateUsuario" method="POST"> 
        <div>   
            <%
                conexion cnx = new conexion();
                String id = request.getParameter("id");
                String users = "select * from Usuario where Id_Usuario ="+id;
                ResultSet rs1 = cnx.consultar(users);
                while(rs1.next()){
                    String nombre = rs1.getString(2);
                    String rut = rs1.getString(3);
                    String nivel = rs1.getString(5);
            %>
            <table border="0" cellspacing="0" cellpadding="2" align="center">
                    <tr> 
                        <td colspan="2" align="center">
                            <h3>Edición de Usuario</h3>
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
                        <td><div class="tituloChico">Rut anterior: <%out.println(rut);%></div></td>
                        <td> 
                            <input type="text" name="txtRut" class="form-control" style="width: 200px" value="<%out.println(rut);%>" autocomplete="off">    </td>
                    </tr>
                    
                    <tr>
                        <td><div class="tituloChico">Nivel anterior: <%out.println(nivel);%></div></td>
                        <td> 
                            <input type="text" name="txtNivel" class="form-control" style="width: 200px" placeholder="<%out.println(nivel);%>" autocomplete="off">
                        </td>
                    </tr>

                    <td colspan="2" align="center">
                        <button class="btn btn-primary" type="button" onclick="submit()">Guardar</button> 
                            <a href="ListarUsuarios.jsp"><button class="btn btn-primary" type="button" onclick="submit()">Volver al Listado</button></a>    </td>
                    </tr>
                </table>
        </form>
        </div>
                    <%}%>
    </body>
</html>