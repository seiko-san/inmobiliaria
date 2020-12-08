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

    <body>
        <%
            Connection con;
            Conexion cn = new Conexion();
            PreparedStatement ps;
            ResultSet rs;
        %>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" >
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"></script>
        <link href="css/styleAdmin.css" rel="stylesheet">
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>  
        <script src="js/logout.js" type="text/javascript"></script>
        <script src="js/menu.js" type="text/javascript"></script>
        <link href="css/estiloprincipal.css" rel="stylesheet" type="text/css"/>
        <script src="js/propietario.js" type="text/javascript"></script>
        <script src="js/actualizar_propietario.js" type="text/javascript"></script>
        <!-- Sidebar/menu -->
        <div class="wrapper">

            <nav id="sidebar">

                <div class="sidebar-header">
                    <h3>INMOBILIARIA</h3>
                </div>
                <ul class="lisst-unstyled components">

                    <li>
                    <%
                        String SQL1 = "select nombre_usuario,estado from usuarios where rut_usuario = '" + request.getSession().getAttribute("nick") + "'";

                        con = cn.getConnection();
                        ps = con.prepareStatement(SQL1);
                        rs = ps.executeQuery();

                        while (rs.next()) {

                            if (rs.getString("estado").equals("0")) {


                    %>  
                    <p>Usuario: <%=rs.getString("nombre_usuario")%> </p> 
                    </li>
                    <li>
                    <p>Estado: Deshabilitado</p>
                    </li>
                    <%

                    } else {

                    %>
                    <li>
                    <p>Usuario: <%=rs.getString("nombre_usuario")%> </p>  
                    <li>
                    <p>Estado: Activado</p>
                    </li>
                    <br>
                    <%
                            }
                        }
                    %>
                    <li>
                    <a href="panel_propietario.jsp" >Inicio</a> 
                    </li>
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
                    <li>
                    <a href="#" onclick="vistaantecedente(<%out.print(request.getSession().getAttribute("nick"));%>);" >Agregar Inmueble</a> 
                    </li>
                    <li>
                    <a href="#" onclick="vistalistar(<%out.print(request.getSession().getAttribute("nick"));%>);">Listar Inmuebles</a> 
                    </li>
                    <%    }

                    %>
                    <%                    }

                    %>

                    <br>
                    <li>
                        <a href="Logout.jsp" >Salir</a>
                    <!--<a href="#" onclick="salir()" >Salir</a>-->
                    </li>
                </ul>
            </nav>
            <div id="content" ></div>
        </div>
                    
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

            <script>
                    $(document).ready(function () {
                        $("#sidebarCollapse").on('click', function () {
                            $("#sidebar").toggleClass('active');
                        });
                    });
            </script>
    </body>
    <footer class="footadm">
        <div class=" float-right d-none d-sm-inline-block">
            <strong>Copyright &copy; 2020 <a href="#">TheLaw&Seiko</a>.</strong>
            Todos los derechos reservados.
        </div>
    </footer>
</html>

