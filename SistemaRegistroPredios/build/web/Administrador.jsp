<%-- 
    Document   : Administrador
    Created on : 29-nov-2019, 17:23:48
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Administrador</title>

        <link href="Css/EstiloHome.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
          <form action="" method="">

            <nav class="navbar navbar-dark bg-dark">
                <a style="color: white" class="navbar-toggler"><span class="navbar-toggler-icon"></span>Home</a>
                <div class="dropdown">
                    <a style="color: white" href="#" class="nav-link dropdown-toggle" data-toggle ="dropdown">Usuario - Cerrar Sesión</a>
                    <div class=" dropdown-menu text-center">
                        <a><image src="http://blog.aulaformativa.com/wp-content/uploads/2016/08/consideraciones-mejorar-primera-experiencia-de-usuario-aplicaciones-web-perfil-usuario.jpg" height="80" width="80"></a><br>
                        <li class="user-header">
                            <p>
                                <%out.print(session.getAttribute("user"));%> 
                                - 
                                <%out.print(session.getAttribute("Tipo"));%>  
                            </p>
                        </li> 
                        <div class="dropdown-divider"></div>
                        <a href="Login.jsp"   class="dropdown-item">Salir</a> 
                    </div>  
                </div>  
                </div>
          
            </nav>
            <div>
          <h1>Sesión Administrador</h1>
                <ul id="menu">
                    <li><a href="CrearUsuarios.jsp"  title="">Ingreso Usuarios </a></li>
                    <li><a href="ListarUsuarios.jsp"  title="">Lista de Usuarios</a></li>
                    
                </ul>
            </div>
            <div class="container mt-4">

            </div>

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>


</form>
</body>
     
        
      
  </html>
