<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Creación de Usuario</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div>
            <%
                String estado = request.getParameter("status");
            %>
            <form action="GuardarUsuario" method="POST">   
                <%@include  file="MenuAdministrador.jsp" %>

                <table border="0" cellspacing="0" cellpadding="2" align="center">
                    <tr> 
                        <td colspan="2" align="center">
                            <h3>Creación de Usuario</h3>
                        </td>
                    </tr>
                    
                    <tr>
                    <td><div class="">Nombre:</div></td>
                    <td> 
                        <input type="text" name="Nombre" class="form-control" style="width: 200px">
                    </td>
                    </tr>
                    
                    <tr>
                        <td><div class="tituloChico">Rut:</div></td>
                        <td> 
                            <input type="text" name="txtRut" class="form-control" style="width: 200px" autocomplete="off">    </td>
                    </tr>

                    <tr>
                        <td><div class="tituloChico">Clave:</div></td>
                        <td> 
                            <input type="text" name="txtClave" class="form-control" style="width: 200px" autocomplete="off">    </td>
                    </tr>

                    <tr>
                        <td><div class="tituloChico">Nivel:</div></td>
                        <td> 
                            <input type="text" name="txtNivel" class="form-control" style="width: 200px" autocomplete="off">
                        </td>
                    </tr>

                    <td colspan="2" align="center">
                        <button class="btn btn-primary" type="button" onclick="submit()">Guardar</button>                     
                        <a href="MenuAdministrador.jsp"><button class="btn btn-primary" type="button" onclick="submit()">Volver al Menu</button></a>
                    </td>
                    
                    <%
                    if (estado.equals("True")) {
                    %>
                    <tr>
                        <td colspan="2" align="center">
                            <div class="alert alert-success" role="alert">
                                Usuario ingresado.
                            </div>
                        </td>
                    </tr>
                <%
                    }
                    if (estado.equals("Error")) {
                %>
                    <tr>
                        <td colspan="2" align="center">
                            <div class="alert alert-danger" role="alert">
                                Usuario ya existe.
                            </div>
                        </td>
                    </tr>
                <%
                    }
                    if (estado.equals("Verified")) {
                %>
                    <tr>
                        <td colspan="2" align="center">
                            <div class="alert alert-warning" role="alert">
                                Usuario no está registrado.
                            </div>
                        </td>
                    </tr>
                <%
                    }
                %>    
                </table>
                <br>
            </form>
          
                
        </div>
    </body>
</html>
