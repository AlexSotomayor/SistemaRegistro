/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.aiep.controller;

import cl.aiep.acceso.AccesoUsuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marta
 */
@WebServlet(name = "UpdateUsuario", urlPatterns = {"/UpdateUsuario"})
public class UpdateUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateUsuario</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Usuario actualizado con éxito.</h1>");
            out.println("<a href='ListarUsuarios.jsp'>Regresar al listado</a>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String id     = request.getParameter("id");
        String nombre = request.getParameter("Nombre");
        String rut    = request.getParameter("txtRut");
        String nivel  = request.getParameter("txtNivel");

        AccesoUsuario aUsuario = new AccesoUsuario();
        
        try {
            aUsuario.editarUsuario( id, nombre, rut, nivel);
        } catch (SQLException ex) {
            Logger.getLogger(UpdateUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
          
        response.sendRedirect("ListarUsuarios.jsp");
      }  
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
