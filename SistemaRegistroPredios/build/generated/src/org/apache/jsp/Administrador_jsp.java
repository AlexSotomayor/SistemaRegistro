package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Administrador_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("        \n");
      out.write("        <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Menu Administrador</title>\n");
      out.write("\n");
      out.write("        <link href=\"Css/EstiloHome.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          <form action=\"\" method=\"\">\n");
      out.write("\n");
      out.write("            <nav class=\"navbar navbar-dark bg-dark\">\n");
      out.write("                <a style=\"color: white\" class=\"navbar-toggler\"><span class=\"navbar-toggler-icon\"></span>Home</a>\n");
      out.write("                <div class=\"dropdown\">\n");
      out.write("                    <a style=\"color: white\" href=\"#\" class=\"nav-link dropdown-toggle\" data-toggle =\"dropdown\">Usuario - Cerrar Sesión</a>\n");
      out.write("                    <div class=\" dropdown-menu text-center\">\n");
      out.write("                        <a><image src=\"http://blog.aulaformativa.com/wp-content/uploads/2016/08/consideraciones-mejorar-primera-experiencia-de-usuario-aplicaciones-web-perfil-usuario.jpg\" height=\"80\" width=\"80\"></a><br>\n");
      out.write("                        <li class=\"user-header\">\n");
      out.write("                            <p>\n");
      out.write("                                ");
out.print(session.getAttribute("user"));
      out.write(" \n");
      out.write("                                - \n");
      out.write("                                ");
out.print(session.getAttribute("Nivel"));
      out.write("  \n");
      out.write("                            </p>\n");
      out.write("                        </li> \n");
      out.write("                        <div class=\"dropdown-divider\"></div>\n");
      out.write("                        <a href=\"Login.jsp\"   class=\"dropdown-item\">Salir</a> \n");
      out.write("                    </div>  \n");
      out.write("                </div>  \n");
      out.write("                </div>\n");
      out.write("          \n");
      out.write("            </nav>\n");
      out.write("            <div>\n");
      out.write("          <h1>Sesión Administrador</h1>\n");
      out.write("                <ul id=\"menu\">\n");
      out.write("                    <li><a href=\"CrearUsuarios.jsp\"  title=\"\">Ingreso Usuarios </a></li>\n");
      out.write("                    <li><a href=\"\"  title=\"\"></a></li>\n");
      out.write("                    \n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"container mt-4\">\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("            <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n");
      out.write("            <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("\n");
      out.write("</form>\n");
      out.write("</body>\n");
      out.write("     \n");
      out.write("        \n");
      out.write("      \n");
      out.write("  </html>\n");
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