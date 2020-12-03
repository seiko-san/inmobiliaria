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
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Dropdown
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div> 
        </nav>
        <div class="prin col-12">
            <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="..." class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>First slide label</h5>
                            <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="..." class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Second slide label</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="..." class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Third slide label</h5>
                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
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
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
    </body>
</html>
