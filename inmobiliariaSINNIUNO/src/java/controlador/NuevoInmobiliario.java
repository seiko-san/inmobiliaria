/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import modelo.Agregar_Inmobiliario;
import modelo.Usuario_Free;

/**
 *
 * @author seiko
 */
public class NuevoInmobiliario extends HttpServlet {

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
        
        String rut = request.getParameter("rut");
        String nombre = request.getParameter("nombre");
        String fecha = request.getParameter("fecha_nacimiento");
        String correo = request.getParameter("correo");
        String clave = request.getParameter("clave");
        String telefono = request.getParameter("telefono");
        String sexo = request.getParameter("sexo");
        Part archivos = request.getPart("archivos");
        
        
        if(rut.isEmpty() || nombre.isEmpty() || fecha.isEmpty() || correo.isEmpty()
                || clave.isEmpty() || telefono.isEmpty() || sexo.isEmpty() ){
            
            
            out.println("<div class='alert alert-warning alert-dismissible'>\n" +
"                  \n" +
"                  <h5><i class='icon fas fa-exclamation-triangle'></i> Advertencia!</h5>\n" +
"                  Debe completar los datos.\n" +
"                </div>");
        }else{
            
        
        
        
        int sex = Integer.parseInt(sexo);
        
        InputStream inputStream = null;
        
        if(archivos != null){
            inputStream = archivos.getInputStream();
            Agregar_Inmobiliario agregar = new Agregar_Inmobiliario();
            
            Usuario_Free usuario = new Usuario_Free(rut, nombre, fecha ,correo, sex ,clave, telefono);
            agregar.GuardarInmobiliario(usuario, inputStream);

            out.println("<div class='alert alert-success alert-dismissible'>\n" +
"                  \n" +
"                  <h5><i class='icon fas fa-check'></i> Guardado!</h5>\n" +
"                  Datos Guardados.\n" +
"                </div>");
        }
        
 }
        
//        int sex = Integer.parseInt(sexo);
//        
//        Usuario_Free inmobiliario = new Usuario_Free();
        
//        inmobiliario.setRut(rut);
//        inmobiliario.setNombre(nombre);
//        inmobiliario.setFechanac(fecha);
//        inmobiliario.setCorreo(correo);
//        inmobiliario.setTelefono(telefono);
//        inmobiliario.setSexo(sex);
//        inmobiliario.setClave(clave);
        //inmobiliario.setAntecedentes(archivos);
        
        
        
        
//        System.out.println(rut);
//        System.out.println(nombre);
//        System.out.println(fecha);
//        System.out.println(correo);
//        System.out.println(clave);
//        System.out.println(telefono);
//        System.out.println(sexo);
//        System.out.println(archivos);

//        InputStream inputStream = null;
//
//        if (archivos != null) {
//            inputStream = archivos.getInputStream();
//            System.out.println(inputStream);
//            Usuario_Free usuario = new Usuario_Free();
//
//            try (PrintWriter out = response.getWriter()) {
//                out.print(usuario.guardarImagen(inputStream, 2));
//            }
//        }
//
//        System.out.println("EN POST");

//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet NuevoInmobiliario</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet NuevoInmobiliario at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
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
