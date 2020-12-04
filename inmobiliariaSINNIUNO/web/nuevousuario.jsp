<%-- 
    Document   : prueba
    Created on : 04-12-2020, 0:42:43
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
        <title>JSP Page</title>
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
        <div id="fondo"> <br>
        <div class="toggled">
            <!-- Sidebar -->

            <div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Nuevo usuario</h3>

                    </div>
                    <!--<form method="POST" enctype="multipart/form-data" >  </form>-->
                    <form class="form" method="post" action="CrearUsuario" nctype="multipart/form-data"  >
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading  text-white">Inmobiliaria SINNIUNO</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Ingrese su rut" value="" name="txtrut" id="rut"/>
                                        </div>
                                        <div class="form-group" >
                                            <input type="text" class="form-control" placeholder="Ingrese su Nombre" value="" name="txtnombre" id="nombre"/>
                                        </div>
                                        <div class="form-group" >
                                            <input type="text" class="form-control" placeholder="Ingrese su Apellido" value="" name="txtapellido" id="apellido"/>
                                        </div>
                                        <div class="form-group">

                                            <select class="form-control" id="Arriendo"name="txttipo">

                                                <%
                                                    String sql1 = "select nombre_tipo from tipo_usuario;";
                                                    try {
                                                        con = cn.getConnection();
                                                        ps = con.prepareStatement(sql1);

                                                        rs = ps.executeQuery();

                                                        while (rs.next()) {
                                                            out.println("<option>" + rs.getString("nombre_tipo") + "</option>");

                                                        }

                                                    } catch (Exception e) {
                                                        out.println(e.toString());
                                                    }


                                                %>
                                            </select></div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="txtfecha" placeholder="fecha" value="" id="fecha"/>
                                        </div>

                                    </div>


                                    <div class="col-md-6">

                                        <div class="form-group">
                                            <input type="text" class="form-control" name="txtcorreo"  placeholder="Ingrese su correo" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="txtclave"  placeholder="Ingrese su clave" value="" />
                                        </div>
                                        <div class="form-group">
                                            <select class="form-control" id="Arriendo" name="txtsexo">

                                                <%                                        String sql2 = "select nombre_sexo from sexo;";
                                                    try {
                                                        con = cn.getConnection();
                                                        ps = con.prepareStatement(sql2);

                                                        rs = ps.executeQuery();

                                                        while (rs.next()) {
                                                            out.println("<option>" + rs.getString("nombre_sexo") + "</option>");

                                                        }

                                                    } catch (Exception e) {
                                                        out.println(e.toString());
                                                    }


                                                %>
                                            </select>

                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="txttelefono"  placeholder="Ingrese su Telefono" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="file"name="file[]" id="archivos" class="form-contralue" multiple/>
                                        </div>
                                        <input type="submit" class="btnEnviar"  value="Crear Usuario"/>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
        </div>
    </body>
</html>

