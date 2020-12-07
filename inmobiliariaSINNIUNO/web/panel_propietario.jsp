<%-- 
    Document   : panel_propietario
    Created on : 05-dic-2020, 14:36:30
    Author     : Seiko
--%>




<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="modelo.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <title>Panel Propietario</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
    <style>
        body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
        body {font-size:16px;}
        .w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
        .w3-half img:hover{opacity:1}
    </style>
    <body>
        <%
            Connection con;
            Conexion cn = new Conexion();
            PreparedStatement ps;
            ResultSet rs;
        %>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>  
        <script src="js/logout.js" type="text/javascript"></script>
        <script src="js/menu.js" type="text/javascript"></script>
        
        <!-- Sidebar/menu -->
        <nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
            <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
            <div class="w3-container">
                <h3 class="w3-padding-64"><b>Inmobiliaria<br>SINNIUNO</b></h3>
            </div>
            <div class="w3-bar-block">


                <%
                    String SQL1 = "select nombre_usuario,estado from usuarios where rut_usuario = '" + request.getSession().getAttribute("nick") + "'";

                    con = cn.getConnection();
                    ps = con.prepareStatement(SQL1);
                    rs = ps.executeQuery();

                    while (rs.next()) {

                        if (rs.getString("estado").equals("0")) {


                %>  
                <p>Usuario: <%=rs.getString("nombre_usuario")%> </p>  
                <p>Estado: Deshabilitado</p>
                <%

                } else {

                %>
                <p>Usuario: <%=rs.getString("nombre_usuario")%> </p>  
                <p>Estado: Activado</p>
                <%
                        }
                    }
                %>




                <a href="http://localhost:8080/inmobiliariaSINNIUNO/Ingreso_Usuarios"  class="w3-bar-item w3-button w3-hover-white">Inicio</a> 

                <%
                    String SQL = "select * from usuarios where rut_usuario = '" + request.getSession().getAttribute("nick") + "'";
                    con = cn.getConnection();
                    ps = con.prepareStatement(SQL);
                    rs = ps.executeQuery();

                    while (rs.next()) {

                        if (rs.getString("estado").equals("0")) {


                %>



                <%                } else if (rs.getString("estado").equals("1")) {

                %>
                <a href="#" onclick="vistaantecedente(<%out.print(request.getSession().getAttribute("nick"));%>);" class="w3-bar-item w3-button w3-hover-white">Agregar Antecedentes</a> 
                <a href="#" onclick="vistalistar(<%out.print(request.getSession().getAttribute("nick"));%>);" class="w3-bar-item w3-button w3-hover-white">Listar Antecedentes</a> 
                <%    }

                %>
                <%                    }

                %>


                <a href="#" onclick="salir()" class="w3-bar-item w3-button w3-hover-white">Salir</a>
            </div>
        </nav>

        <!-- Top menu on small screens -->
        <header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
            <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
            <span>Company Name</span>
        </header>

        <!-- Overlay effect when opening sidebar on small screens -->
        <div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>



        <!--TEXTO DE INICIO-->
        <div id="content"></div>



        <div class="w3-light-grey w3-container w3-padding-32" style="margin-top:75px;padding-right:58px"><p class="w3-right">Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a></p></div>


    </body>
</html>

