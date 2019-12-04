<%-- 
    Document   : CrearUsuarios
    Created on : 04-dic-2019, 19:49:22
    Author     : Alex
--%>

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
            <div id="principal">
                
                <form action="IngresoPredio" method="POST">        
                    <table border="0" cellspacing="0" cellpadding="2" align="center">
                        <tr> 
                            <td colspan="2" align="center">
                                <h3>Creacion de Usuario</h3>
                            </td>
                        </tr>

                        <td><div class="">Nombre</div></td>
                        <td> 
                            <input type="text" name="Nombre" class="form-control" style="width: 200px">
                        </td>
                        </tr>

                        <tr>
                            <td><div class="tituloChico">Rut</div></td>
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

                        <tr>
                            <td><div class="tituloChico">Tipo:</div></td>
                            <td> 
                                <input type="text" name="txtTipo" class="form-control" style="width: 200px" autocomplete="off">
                            </td>
                        </tr>

                        <td colspan="2" align="center">
                            <button class="btn btn-primary" type="button" onclick="submit()">Guardar</button> 
                        </td>       


                        <tr> 
                            <td colspan="2" align="center">
                                <a href="DatosPropietario.jsp"><button class="btn btn-primary" type="button" onclick="submit()">Continuar</button></a>    </td>
                        </tr>
                    </table>   
                </form>        
            </div>
        </div>
    </body>
</html>
