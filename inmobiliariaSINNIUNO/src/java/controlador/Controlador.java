/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.UsuarioConect;
import modelo.Usuario;

/**
 *
 * @author seiko
 */
public class Controlador extends HttpServlet {

//    UsuarioConect cone = new UsuarioConect();
//    Usuario us = new Usuario();
//    int r;
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

        String accion = request.getParameter("accion");
        
        UsuarioConect cone = new UsuarioConect();
        Usuario us = new Usuario();
        
        if (accion.equals("Ingresar")) {
            String nick = request.getParameter("txtnick");
            String clave = request.getParameter("txtclave");
            us.setRut(nick);
            us.setClave(clave);
            int perfil = cone.validar(us);
            //out.println("<h1>Servlet NuevaPropiedad at " + r + "</h1>");

            if (perfil == 1) {
                request.getSession().setAttribute("nick", nick);
                request.getRequestDispatcher("panel_administrador.jsp").forward(request, response);
            } else if(perfil == 2){
                request.getSession().setAttribute("nick", nick);
                request.getRequestDispatcher("panel_propietario.jsp").forward(request, response);
            }else if(perfil == 3){
                request.getSession().setAttribute("nick", nick);
                request.getRequestDispatcher("panel_inmobiliario.jsp").forward(request, response);
    
            }else{
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
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
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
