package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import cl.aiep.conexion.conexion;
import java.sql.ResultSet;

public final class IngresoConsulta_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    conexion cnx = new conexion();
    cnx.getConnection();

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"tituloPagina\" align=\"center\">Fichas Prediales</div><div class=\"contenedor\"></div>\n");
      out.write("    <tr align=\"center\"><td>\n");
      out.write("            <form name=\"f\" enctype=\"multipart/form-data\" method=\"post\" action=\"/fichaPredial/buscarAction.php\">\n");
      out.write("               \n");
      out.write("                    <br>\n");
      out.write("                    <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" class=\"sin_estilo\">\n");
      out.write("                        <tr valign=\"top\"> \n");
      out.write("                            <td> \n");
      out.write("                                Nombre del Predio:\n");
      out.write("                            </td>\n");
      out.write("                            <td> \n");
      out.write("                                <input type=\"text\" name=\"nomPredio\">\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr valign=\"top\"> \n");
      out.write("                            <td> \n");
      out.write("                                Rol de Aval&uacute;o:\n");
      out.write("                            </td>\n");
      out.write("                            <td> \n");
      out.write("                                <input type=\"text\" name=\"rol\">\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                        <tr> \n");
      out.write("                            <td valign=\"top\"> \n");
      out.write("                                RUT:\n");
      out.write("                            </td>\n");
      out.write("                            <td> \n");
      out.write("                                <input type=\"text\" name=\"rut\" size=\"13\" onblur=\"checkRutField(this);\">\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                        <tr valign=\"top\" style=\"width: 200px\"> \n");
      out.write("                            <td>Comuna:</td>\n");
      out.write("                            <td>\n");
      out.write("                                <select name=\"Comuna\">\n");
      out.write("                                    <option  value='-1'>-- Seleccione una comuna --</option>\n");
      out.write("                                    ");
ResultSet comuna = cnx.EntregaDatos("SELECT Id_Comuna,Nombre FROM Comuna");
                                        while (comuna.next()) {
                                            out.println("<option value='" + comuna.getInt(1) + "'>" + comuna.getString(2) + "</option>");
                                        }
                                    
      out.write(" \n");
      out.write("                                </select>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                        <tr> \n");
      out.write("                            <td colspan=\"2\" align=\"center\">\n");
      out.write("                                <button class=\"btn btn-primary success\" type=\"button\" onclick=\"submit()\">Buscar</button>  </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>    \n");
      out.write("                    </body>\n");
      out.write("                    </html>\n");
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
