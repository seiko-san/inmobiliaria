/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class Registro_Propietario extends HttpServlet {
Usuario_Propietario propietario = new Usuario_Propietario();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Agregar_Propietario add = new Agregar_Propietario();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String rut = request.getParameter("rut");
        String nombre = request.getParameter("nombre");
        String fecha = request.getParameter("fecha");
        String correo = request.getParameter("correo");
        String telefono = request.getParameter("telefono");
        String sexo = request.getParameter("sexo");
        String n_propietario = request.getParameter("numero_propietario");
        String clave = request.getParameter("clave");
        

        try{

        if (rut.isEmpty() || nombre.isEmpty() || fecha.isEmpty() || correo.isEmpty()
                || telefono.isEmpty() || sexo.isEmpty() || n_propietario.isEmpty()
                || clave.isEmpty()) {

            out.println("<div class='alert alert-warning alert-dismissible'>\n" +
"                  \n" +
"                  <h5><i class='icon fas fa-exclamation-triangle'></i> Advertencia!</h5>\n" +
"                  Debe completar los datos.\n" +
"                </div>");
            
        } else {

            int sex = Integer.parseInt(sexo);

            propietario.setRut(rut);
            propietario.setNombre(nombre);
            propietario.setFecha(fecha);
            propietario.setCorreo(correo);
            propietario.setTelefono(telefono);
            propietario.setSexo(sex);
            propietario.setNumero_propiedad(n_propietario);
            propietario.setClave(clave);

//             out.println(propietario);   
            
            boolean respuesta = add.Registrar(propietario);
 
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
        try {
            processRequest(request, response);
        

} catch (SQLException ex) {
            Logger.getLogger(Registro_Propietario.class
.getName()).log(Level.SEVERE, null, ex);
        }
 
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
        try {
            processRequest(request, response);
        

} catch (SQLException ex) {
            Logger.getLogger(Registro_Propietario.class
.getName()).log(Level.SEVERE, null, ex);
        }

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
