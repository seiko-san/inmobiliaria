<%-- 
    Document   : descarga
    Created on : 06-dic-2020, 19:08:59
    Author     : Law
--%>


<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Blob"%>
<%@ page import="java.io.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="modelo.Conexion"%>
<%@page import="java.sql.Connection"%>
<%

    String rut = (request.getParameter("rut"));

    Blob file = null;
    byte[] fileData = null;
    
    try {

        Connection con;
        Conexion cn = new Conexion();
        PreparedStatement ps;
        ResultSet rs;
        String SQL = "select certificado_antecedente from usuarios where rut_usuario = '"+rut+"'";

        con = cn.getConnection();
        ps = con.prepareStatement(SQL);

        rs = ps.executeQuery();

        if (rs.next()) {
            file = rs.getBlob("certificado_antecedente");
            //System.out.println(file);
            fileData = file.getBytes(1,(int)file.length());
        } else {
            out.println("file not found!");
            return;
        }

        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "inline");
        response.setContentLength(fileData.length);
        OutputStream output = response.getOutputStream();
        output.write(fileData);
        output.flush();
    } catch (SQLException ex) {
        Logger.getLogger(Logger.class.getName()).log(Level.SEVERE, null, ex);
    }
    //while (rs.next()) {


%>




