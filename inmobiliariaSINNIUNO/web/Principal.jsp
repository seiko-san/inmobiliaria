<%-- 
    Document   : Panel
    Created on : 06-11-2020, 4:41:22
    Author     : seiko
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="modelo.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SINNIUNO</title>
        <link href="css/estiloprincipal.css" rel="stylesheet" type="text/css"/>
    </head>
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


        <nav class="navbar navbar-expand-lg navbar-light" style="background-color:#93eeff;">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Principal.jsp">inicio <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Arriendos</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Arriendos
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Ventas</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0" name="buscar">
                    <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                </form>
                <div>
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.jsp">Ingresar <span class="sr-only">(current)</span></a>
                        </li>
                    </ul>
                </div>
            </div> 
        </nav>
        <div id="fondo">
            <br><br>
            <div class="container">

                <div>
                    <table class="col-12">
                        <thead>
                            <tr>
                                <th><div class="form-group">
                                        <select class="form-control" id="regiones">
                                            <option selected>Regiones</option>
                                            <%String sql1 = "select region from regiones";
                                                try {
                                                    con = cn.getConnection();
                                                    ps = con.prepareStatement(sql1);
                                                    rs = ps.executeQuery();
                                                    while (rs.next()) {
                                                        out.println("<option>" + rs.getString("region") + "</option>");
                                                    }
                                                } catch (Exception e) {
                                                    out.println(e.toString());
                                                }%>
                                        </select></div>
                                </th>
                                <th>
                                <th><div class="form-group">
                                        <select class="form-control" id="provincias">
                                            <option selected>Provincias</option>
                                            <%String sql2 = "select provincia from provincias";
                                                try {
                                                    con = cn.getConnection();
                                                    ps = con.prepareStatement(sql2);
                                                    rs = ps.executeQuery();
                                                    while (rs.next()) {
                                                        out.println("<option>" + rs.getString("provincia") + "</option>");
                                                    }
                                                } catch (Exception e) {
                                                    out.println(e.toString());
                                                }%>
                                        </select></div>
                                </th>
                                <th><div class="form-group">
                                        <select class="form-control" id="comunas">
                                            <option selected>Comunas</option>
                                            <%String sql3 = "select comuna from comunas";
                                                try {
                                                    con = cn.getConnection();
                                                    ps = con.prepareStatement(sql3);
                                                    rs = ps.executeQuery();
                                                    while (rs.next()) {
                                                        out.println("<option>" + rs.getString("comuna") + "</option>");
                                                    }
                                                } catch (Exception e) {
                                                    out.println(e.toString());
                                                }%>
                                        </select></div>

                                </th>
                                <th>
                                    <form name="filtrar">
                                        <button class="btn " type="submit">Filtrar</button>
                                    </form>
                                </th>
                            </tr>
                        </thead>
                    </table>
                </div>                
            </div>
        </div>                      
    </body>
</html>


