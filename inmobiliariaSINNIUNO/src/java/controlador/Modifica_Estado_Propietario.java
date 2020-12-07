/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Agregar_Propietario;
import modelo.Usuario_Propietario;

/**
 *
 * @author Law
 */
public class Modifica_Estado_Propietario extends HttpServlet {
Usuario_Propietario propietario = new Usuario_Propietario();
Agregar_Propietario update = new Agregar_Propietario();
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
        PrintWriter out = response.getWriter();
        
        String rut = request.getParameter("rut");
        String estado = request.getParameter("estado");
        
         
        try{

        if (estado.isEmpty()) {

            out.println("<div class='alert alert-warning alert-dismissible'>\n" +
"                  \n" +
"                  <h5><i class='icon fas fa-exclamation-triangle'></i> Advertencia!</h5>\n" +
"                  Debe completar los datos.\n" +
"                </div>");
            
        } else {

            propietario.setEstado(estado);
            propietario.setRut(rut);
            
            
            System.out.println(rut);   
            System.out.println(estado);

             out.println(propietario);   
            
            boolean respuesta = update.ActualizarEstado(propietario);
            System.out.println(respuesta);

            if (respuesta == true) {
                out.println("<div class='alert alert-success alert-dismissible'>\n" +
"                  \n" +
"                  <h5><i class='icon fas fa-check'></i> Guardado!</h5>\n" +
"                  Datos Guardados.\n" +
"                </div>");
                
            } else {
                out.println("<div class='alert alert-danger alert-dismissible'>\n" +
"                  \n" +
"                  <h5><i class='icon fas fa-ban'></i> Error!</h5>\n" +
"                  Problemas al guardar tus datos.\n" +
"                </div>");
                
            }
        }
        }catch(Exception e){
            out.println("<div class='alert alert-danger alert-dismissible'>\n" +
"                  \n" +
"                  <h5><i class='icon fas fa-ban'></i> Error!</h5>\n" +
"                  Problemas al guardar tus datos.\n" +
"                </div>"); 
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
