<%@page import="cl.aiep.conexion.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.ResultSet"%>
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Datos del Propietario</title>
    </head>
    <body>
        <div>
            <form action="GuardarDatosPropietarios" method="POST">
          
              <%@include  file="MenuAdministrativo.jsp" %>
                <table border="0" cellspacing="0" cellpadding="2" align="center">
                    <tr> 
                        <td colspan="2" align="center">
                            <h3>Ingreso Propietario</h3>
                        </td>
                    </tr>
                    
                    <tr>
                        <td><div class="tituloChico">Rut:</div></td>
                        <td> 
                            <input type="text" name="Rut" class="form-control" style="width: 200px" autocomplete="off">    
                        </td>
                    </tr>
                    
                    <tr>
                        <td><div class="tituloChico">Nombre:</div></td>
                        <td> 
                            <input type="text" name="Nombre" pattern="[a-zA-Z]" class="form-control" style="width: 200px" autocomplete="off">
                        </td>
                    </tr>
                    
                    <tr>
                        <td><div class="tituloChico">Apellido Paterno:</div></td>
                        <td> 
                            <input type="text" name="ApellidoPaterno" class="form-control" style="width: 200px" autocomplete="off">    </td>
                    </tr>
                    
                    <tr>
                        <td><div class="tituloChico">Apellido Materno:</div></td>
                        <td> 
                            <input type="text" name="ApellidoMaterno" class="form-control" style="width: 200px" autocomplete="off">    </td>
                    </tr>
                    
                    <tr>
                        <td><div class="tituloChico">Dirección:</div></td>
                        <td> 
                            <input type="text" name="Direccion" class="form-control" style="width: 200px" autocomplete="off">    </td>
                    </tr>
                    
                    <tr>
                        <td><div class="tituloChico">Teléfono:</div></td>
                        <td> 
                            <input type="text" name="Telefono" class="form-control" style="width: 200px" autocomplete="off">    </td>
                    </tr>
                    
                    <tr>
                        <td><div class="tituloChico">Correo electrónico:</div></td>
                        <td> 
                            <input type="email" name="Correo" class="form-control" style="width: 200px" autocomplete="off">    </td>
                    </tr>
                    
                    <tr> 
                        <td colspan="2" align="center">
                            <button class="btn btn-primary" type="button" onclick="submit()">Guardar</button>
                            <a href="IngresoCarpetaPredial.jsp"><button class="btn btn-primary" type="button" onclick="submit()">Continuar</button></a>
                        </td>
                    </tr>
                    
                </table>
            </form>
        </div>
    </body>
</html>
