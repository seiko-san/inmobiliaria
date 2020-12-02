/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author seiko
 */
public class NuevaPropiedad extends HttpServlet {

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
            out.println("<title>Servlet NuevaPropiedad</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NuevaPropiedad at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            
            //        FileItemFactory file_factory = new DiskFileItemFactory();
//        ServletFileUpload sfu = new ServletFileUpload(file_factory);
//        
//        ArrayList<String> campos = new ArrayList<>();
//        ArrayList<String> imgs = new ArrayList<>();
//        
//        
//        try{
//            List items = sfu.parseRequest(request);
//            for (int i = 0; i < items.size(); i++) {
//                FileItem item = (FileItem) items.get(i);
//                if(!item.isFormField()){
//                    File archivo = new File("D:\\Users\\seiko\\Desktop\\Clases 2° semestre\\desarrollo web II\\trabajos\\Corredora_Propiedades\\web\\img\\productos\\"+item.getName());
//                    item.write(archivo);
//                    imgs.add("img/productos/"+item.getName());
//                }else{
//                    campos.add(item.getString());
//                }
//            }
//        }catch(Exception ex){
//            
//        }
//        Propiedades p = new Propiedades();
//        
//        Propiedades p = new Propiedades(0, Float.parseFloat(campos.get(0)), Integer.parseInt(campos.get(1)), Integer.parseInt(campos.get(2)), Integer.parseInt(campos.get(3)), Integer.parseInt(campos.get(4)), campos.get(5),,imgs.get(0), campos.get(6));
//        ControladorProductos cp = new ControladorProductos();
//        if(cp.crearProducto(p)){
//            response.getWriter().println("Producto Creado Exitosamente");
//        }else{
//            response.getWriter().println("ERROR al crear producto");
//        }
            
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
