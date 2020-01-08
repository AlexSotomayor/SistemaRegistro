

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Css/EstiloHome.css" rel="stylesheet" type="text/css"/>
        <link href="Css/EstiloMenu.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Menu Administrador</title>
    </head>
    <body>
          <nav class="navbar navbar-dark bg-dark">
                <a style="color: white" class="navbar-toggler"><span class="navbar-home-icon"></span>Home</a>
                
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
           
           
  <div class="wrapper">
    <!-- Sidebar -->
    <nav id="sidebar">
        <div class="sidebar-header">
            <h3>Sistema de Consulta Predios</h3>
        </div>

        <ul class="list-unstyled components">
            <p>Sección Administrador</p>
            <li class="active">
                <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Menú</a>
                <ul class="collapse list-unstyled" id="homeSubmenu">
                    
                   <li><a href="CrearUsuarios.jsp?status=False" title=" "style="color: white">Ingreso Usuario</a></li>
                   <li><a href="ListarUsuarios.jsp" title=" "style="color: white">Lista de Usuarios</a></li>
                   <li><a href="ListarPredios.jsp" title=" "style="color: white">Lista de Predios</a></li>
                   <li><a href="ListarPropietarios.jsp" title=" "style="color: white">Lista de Propietarios</a></li>
                   <li><a href="IngresoPredioAdministrador.jsp" title=" "style="color: white">Ingreso Predio</a></li>
                   <li><a href="IngresoPropietariosAdministrador.jsp" title=" "style="color: white">Ingreso Propietario</a></li>

                   
                </ul>
            </li>
         
        </ul>
    </nav>


            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>
