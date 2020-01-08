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
        <form action="UpdatePropietario" method="POST"> 
            <div>   
                <%
                    conexion cnx = new conexion();
                    String id = request.getParameter("id");
                    String users = "select * from VW_Vista_Propietario where Id =" + id;
                    ResultSet rs = cnx.consultar(users);
                    while (rs.next()) {
                        String rut = rs.getString(1);
                        String nombres = rs.getString(2);
                        String apellidoP = rs.getString(3);
                        String apellidoM = rs.getString(4);
                        String direccion = rs.getString(5);
                        String telefono = rs.getString(6);
                        String email = rs.getString(7);
                %>
                <table border="0" cellspacing="0" cellpadding="2" align="center">
                    <tr> 
                        <td colspan="2" align="center">
                            <h3>Edición de Propietario</h3>
                        </td>
                    </tr>
                    <input type="hidden" name="id" value="<%out.println(id);%>">
                    
                    <tr>
                        <td><div class="tituloChico">Rut anterior: <%out.println(rut);%></div></td>
                        <td> 
                            <input type="text" name="Id_RutPropietario" class="form-control" style="width: 200px" value="<%out.println(rut);%>">
                        </td>
                    </tr>

                    <tr>
                        <td><div class="tituloChico">Nombres anteriores: <%out.println(nombres);%></div></td>
                        <td> 
                            <input type="text" name="Nombres" class="form-control" style="width: 200px" value="<%out.println(nombres);%>" autocomplete="off">    </td>
                    </tr>

                    <tr>
                        <td><div class="tituloChico">Apellido Paterno anterior: <%out.println(apellidoP);%></div></td>
                        <td> 
                            <input type="text" name="ApellidoPaterno" class="form-control" style="width: 200px" value="<%out.println(apellidoP);%>" autocomplete="off">
                        </td>
                    </tr>

                    <tr>
                        <td><div class="tituloChico">Apellido Materno anterior: <%out.println(apellidoM);%></div></td>
                        <td> 
                            <input type="text" name="ApellidoMaterno" class="form-control" style="width: 200px" value="<%out.println(apellidoM);%>" autocomplete="off">
                        </td>
                    </tr>

                    <tr>
                        <td><div class="tituloChico">Dirección anterior: <%out.println(direccion);%></div></td>
                        <td> 
                            <input type="text" name="Direccion" class="form-control" style="width: 200px" value="<%out.println(direccion);%>" autocomplete="off">
                        </td>
                    </tr>

                   <tr>
                        <td><div class="tituloChico">Teléfono anterior: <%out.println(telefono);%></div></td>
                        <td> 
                            <input type="text" name="Telefono" class="form-control" style="width: 200px" value="<%out.println(telefono);%>" autocomplete="off">
                        </td>
                    </tr>

                    <tr>
                        <td><div class="tituloChico">Correo eletrónico anterior: <%out.println(email);%></div></td>
                        <td> 
                            <input type="text" name="CorreoElectronico" class="form-control" style="width: 200px" value="<%out.println(email);%>" autocomplete="off">
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
</body>
</html>
