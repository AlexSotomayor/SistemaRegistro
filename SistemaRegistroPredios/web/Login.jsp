<%-- 
    Document   : Login
    Created on : 14-nov-2019, 15:07:39
    Author     : Alex
--%>

<%@page import="cl.aiep.acceso.AccesoUsuario"%>
<%@page import="cl.aiep.conexion.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Css/EstiloLogin.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Inicio de sesion</title>
    </head>
    <body>
        
        <div class="container mt-5 col-lg-4">
            <div class="card col-sm-10">
                <div align="center" class="tituloPagina">Ingreso al Sistema</div> 
                <div align="center" class="tituloChico"></div> 
                <form action="Login.jsp" method="POST">

                    <table border="0" cellspacing="0" cellpadding="2" align="center">
                        <tr> 
                            <td colspan="2" align="center">
                                <b></b>
                            </td>
                        </tr>
                        <tr>
                            <td><div class="tituloChico">N o m b r e:</div></td>
                            <td> 
                                <input type="text" name="txtUsuario" class="autorut" style="width: 150px" autocomplete="off">    </td>
                        </tr>
                        <tr> 
                            <td>
                                <div class="tituloChico">C o n t r a s e ñ a:
                                </div>
                            </td>
                            <td height="49"> 
                                <input type="password" name="txtPassword" style="width: 150px" autocomplete="off">
                            </td>
                        </tr>
                        <tr> 
                            <td colspan="2" align="center">
                                <button class="btn btn-success" type="Submit" name="btnIngresar" onclick="submit()">Ingresar</button>    </td>
                        </tr>
                    </table>
            </div>
        </div>    
    </form>   

    <%
        AccesoUsuario aUser = new AccesoUsuario();
        
        if (request.getParameter("btnIngresar") != null) {
            
            String nombre = request.getParameter("txtUsuario");
            String contra = request.getParameter("txtPassword");

            HttpSession sesion = request.getSession();
            
            String[] usuario = new String[5];
            usuario = aUser.loguear(nombre, contra);
            System.out.println("Ingreso datos = "+usuario);
            
            if ( usuario != null ) {//si encontro algo
                sesion.setAttribute("user", usuario[0]);//id
                sesion.setAttribute("nombre", usuario[1]);//nombre
                sesion.setAttribute("Tipo", usuario[4]);//Tipo 

                int nivel = Integer.parseInt( usuario[3] );
                switch (nivel) {
                   case 1:
                       response.sendRedirect("MenuAdministrador.jsp"); 
                       break; 
                   case 2: 
                       response.sendRedirect("MenuAdministrativo.jsp");
                       break; 
                   case 3: 
                       response.sendRedirect("MenuConsultasPredio.jsp");
                       break; 
                   default:
                       response.sendRedirect("Login.jsp");
                       break;
                }   
            }
        }
        
        if(request.getParameter("cerrar")!=null){
            session.invalidate();
        }
    %>
</body>
</html>
