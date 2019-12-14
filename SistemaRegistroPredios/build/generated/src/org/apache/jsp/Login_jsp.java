package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import cl.aiep.acceso.AccesoUsuario;
import cl.aiep.conexion.conexion;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"Css/EstiloLogin.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Inicio de sesion</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div class=\"container mt-5 col-lg-4\">\n");
      out.write("            <div class=\"card col-sm-10\">\n");
      out.write("                <div align=\"center\" class=\"tituloPagina\">Ingreso al Sistema</div> \n");
      out.write("                <div align=\"center\" class=\"tituloChico\"></div> \n");
      out.write("                <form action=\"Login.jsp\" method=\"POST\">\n");
      out.write("\n");
      out.write("                    <table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" align=\"center\">\n");
      out.write("                        <tr> \n");
      out.write("                            <td colspan=\"2\" align=\"center\">\n");
      out.write("                                <b></b>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><div class=\"tituloChico\">N o m b r e:</div></td>\n");
      out.write("                            <td> \n");
      out.write("                                <input type=\"text\" name=\"txtUsuario\" class=\"autorut\" style=\"width: 150px\" autocomplete=\"off\">    </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr> \n");
      out.write("                            <td>\n");
      out.write("                                <div class=\"tituloChico\">C o n t r a s e ñ a:\n");
      out.write("                                </div>\n");
      out.write("                            </td>\n");
      out.write("                            <td height=\"49\"> \n");
      out.write("                                <input type=\"password\" name=\"txtPassword\" style=\"width: 150px\" autocomplete=\"off\">\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr> \n");
      out.write("                            <td colspan=\"2\" align=\"center\">\n");
      out.write("                                <button class=\"btn btn-success\" type=\"Submit\" name=\"btnIngresar\" onclick=\"submit()\">Ingresar</button>    </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("            </div>\n");
      out.write("        </div>    \n");
      out.write("    </form>   \n");
      out.write("\n");
      out.write("    ");

        AccesoUsuario aUser = new AccesoUsuario();
        
        if (request.getParameter("btnIngresar") != null) {
            
            String nombre = request.getParameter("txtUsuario");
            String contra = request.getParameter("txtPassword");

            HttpSession sesion = request.getSession();
            
            String[] usuario = new String[5];
            usuario = aUser.loguear(nombre, contra);
            
            if ( usuario != null){//si encontro algo
                    sesion.setAttribute("user", usuario[0]);//id
                    sesion.setAttribute("nombre", usuario[1]);//nombre
                    sesion.setAttribute("Tipo", usuario[4] );//Tipo 
                    
                    int nivel =Integer.parseInt( usuario[3]);
                    
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
    
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
