package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import cl.aiep.conexion.conexion;
import java.sql.ResultSet;

public final class IngresoPredial_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/MenuAdministrativo.jsp");
  }

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

    conexion cnx = new conexion();
    cnx.getConnection();

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Ingreso de predio</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div> \n");
      out.write("            <form action=\"GuardarPredio\" method=\"POST\"> \n");
      out.write("                ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Menu</title>\n");
      out.write("        <link href=\"Css/EstiloMenu.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"Css/CssEstiloM.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script defer src=\"https://use.fontawesome.com/releases/v5.0.13/js/solid.js\" integrity=\"sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script defer src=\"https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js\" integrity=\"sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar navbar-dark bg-dark\">\n");
      out.write("            <a style=\"color: white\" class=\"navbar-toggler\"><span class=\"navbar-home-icon\"></span></a>\n");
      out.write("\n");
      out.write("            <div class=\"dropdown\">\n");
      out.write("                <a style=\"color: white\" href=\"#\" class=\"nav-link dropdown-toggle\" data-toggle =\"dropdown\">Usuario - Cerrar Sesión</a>\n");
      out.write("                <div class=\" dropdown-menu text-center\">\n");
      out.write("                    <a><image src=\"http://blog.aulaformativa.com/wp-content/uploads/2016/08/consideraciones-mejorar-primera-experiencia-de-usuario-aplicaciones-web-perfil-usuario.jpg\" height=\"80\" width=\"80\"></a><br>\n");
      out.write("                    <li class=\"user-header\">\n");
      out.write("                        <p>\n");
      out.write("                            ");
out.print(session.getAttribute("user"));
      out.write(" \n");
      out.write("                            - \n");
      out.write("                            ");
out.print(session.getAttribute("Tipo"));
      out.write("  \n");
      out.write("                        </p>\n");
      out.write("                    </li> \n");
      out.write("                    <div class=\"dropdown-divider\"></div>\n");
      out.write("                    <a href=\"Login.jsp\"   class=\"dropdown-item\">Salir</a> \n");
      out.write("                </div>  \n");
      out.write("            </div>  \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <div class=\"wrapper\">\n");
      out.write("        <!-- Sidebar -->\n");
      out.write("        <nav id=\"sidebar\">\n");
      out.write("            <div class=\"sidebar-header\">\n");
      out.write("                <h3>Sistema de Consulta Predios</h3>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <ul class=\"list-unstyled components\">\n");
      out.write("                <p>Sección Administrativo</p>\n");
      out.write("                <li class=\"active\">\n");
      out.write("                    <a href=\"#homeSubmenu\" data-toggle=\"collapse\" aria-expanded=\"false\" class=\"dropdown-toggle\">Recepción de Ingresos</a>\n");
      out.write("                    <ul class=\"collapse list-unstyled\" id=\"homeSubmenu\" >\n");
      out.write("                        <li><a href=\"IngresoPredial.jsp\"   title=\"\" style=\"color: white\">Ingreso Predio</a></li>\n");
      out.write("                        <li><a href=\"IngresoDatosPropietario.jsp\" title=\"\" style=\"color: white\">Ingreso Propietario</a></li>\n");
      out.write("                        <li><a href=\"IngresoCarpetaPredial.jsp\"   title=\"\" style=\"color: white\">Ingreso Carpeta Predial</a></li>\n");
      out.write("                        <li><a href=\"IngresoPlanDeManejo.jsp\"     title=\"\" style=\"color: white\">Ingreso Plan de Manejo</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("    \n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("    \n");
      out.write("                <table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" align=\"center\">\n");
      out.write("                    <tr> \n");
      out.write("                        <td colspGuardarPredioan=\"2\" align=\"center\">\n");
      out.write("                            <h3>Ingreso Predio</h3>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    <td><div class=\"\">Nombre:</div></td>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" name=\"Nombre\" class=\"form-control\" style=\"width: 200px\">\n");
      out.write("                    </td>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td><div class=\"tituloChico\">Superficie:</div></td>\n");
      out.write("                        <td> \n");
      out.write("                            <input type=\"text\" name=\"Superficie\" class=\"form-control\" style=\"width: 200px\" autocomplete=\"off\">    </td>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td><div class=\"tituloChico\">Rol Avalúo:</div></td>\n");
      out.write("                        <td> \n");
      out.write("                            <input type=\"text\" name=\"rolAvaluo\" class=\"form-control\" style=\"width: 200px\" autocomplete=\"off\">    </td>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td><div class=\"tituloChico\">Coordenada UTM N:</div></td>\n");
      out.write("                        <td> \n");
      out.write("                            <input type=\"text\" name=\"coordenadaUTMN\" class=\"form-control\" style=\"width: 200px\" autocomplete=\"off\">\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td><div class=\"tituloChico\">Coordenada UTM E:</div></td>\n");
      out.write("                        <td> \n");
      out.write("                            <input type=\"text\" name=\"coordenadaUTME\" class=\"form-control\" style=\"width: 200px\" autocomplete=\"off\">\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    <tr valign=\"top\"> \n");
      out.write("                        <td>Comuna:</td>\n");
      out.write("                        <td>\n");
      out.write("                            <select name=\"Comuna\" style=\"width: 250px\">\n");
      out.write("                                <option  value='-1'>-- Seleccione una comuna --</option>\n");
      out.write("                                ");
ResultSet puntero = cnx.EntregaDatos("SELECT Id_Comuna,Nombre FROM Comuna");
                                    while (puntero.next()) {
                                        out.println("<option value='" + puntero.getInt(1) + "'>" + puntero.getString(2) + "</option>");
                                    }
                                
      out.write(" \n");
      out.write("                            </select>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    <td colspan=\"2\" align=\"center\">\n");
      out.write("                        <button class=\"btn btn-primary\" type=\"button\" onclick=\"submit()\">Guardar</button> \n");
      out.write("                    </td>       \n");
      out.write("                   \n");
      out.write("                    <tr> \n");
      out.write("                        <td colspan=\"2\" align=\"center\">\n");
      out.write("                            <a href=\"DatosPropietario.jsp\"><button class=\"btn btn-primary\" type=\"button\" onclick=\"submit()\">Continuar</button></a>    </td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>   \n");
      out.write("            </form>        \n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
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