<%-- 
    Document   : Panel
    Created on : 27-11-2020, 4:41:22
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
        <title>Inmobiliaria SINNIUNO</title>
    </head>
    <body>

        <%
            Connection con;
            Conexion cn = new Conexion();
            PreparedStatement ps;
            ResultSet rs;
        %>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>  





        <div id="wrapper" class="toggled">
            <!-- Sidebar -->
            <div id="sidebar-wrapper">
                <ul class="sidebar-nav">
                    <br>
                    <li class="sidebar-brand"> <h4> Bienvenido </h4> </li>
                    <li> <h5>${nick}</h5> </li><br>
                    <li> <h5>panel</h5> </li>
                    <li> <a href="index.jsp"> Salir <img src="img/salir.png" height="20" width="20"/></a></li>
            </div>
            <div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Bienvenido</h3>

                    </div>
                    <!--<form method="POST" enctype="multipart/form-data" >  </form>-->
                    <form class="form" method="post" action="crearpropiedad" nctype="multipart/form-data"  >
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Inmobiliaria SINNIUNO</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">

                                            <input type="text" class="form-control" placeholder="M2" value="" name="m2" id="m2"/>

                                        </div>
                                        <div class="form-group" >
                                            <input type="text" class="form-control" placeholder="valor" value="" id="valor"/>

                                        </div>
                                        <div class="form-group">


                                            <select class="form-control" id="Arriendo">

                                                <%
                                                    String sql = "select nombre from Arriendos;";
                                                    try {
                                                        con = cn.getConnection();
                                                        ps = con.prepareStatement(sql);

                                                        rs = ps.executeQuery();

                                                        while (rs.next()) {
                                                            out.println("<option>" + rs.getString("nombre") + "</option>");

                                                        }

                                                    } catch (Exception e) {
                                                        out.println(e.toString());
                                                    }


                                                %>
                                            </select>

                                        </div>
                                        <div class="form-group">


                                            <select class="form-control" id="Arriendo">

                                                <%                                        String sql1 = "select nombre from ventas;";
                                                    try {
                                                        con = cn.getConnection();
                                                        ps = con.prepareStatement(sql1);

                                                        rs = ps.executeQuery();

                                                        while (rs.next()) {
                                                            out.println("<option>" + rs.getString("nombre") + "</option>");

                                                        }

                                                    } catch (Exception e) {
                                                        out.println(e.toString());
                                                    }


                                                %>
                                            </select></div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="fecha" value="" id="fecha"/>
                                        </div>

                                    </div>


                                    <div class="col-md-6">

                                        <div class="form-group">
                                            <input type="text" class="form-control" name="direccion"  placeholder="direccion" value="" />
                                        </div>
                                        <div class="form-group">
                                            <textarea cols="30" rows="3" name="descripcion" id="descripcion" class="form-control"  placeholder="descripcion" value=""></textarea>
                                        </div>
                                        <div class="form-group">
                                            <input type="file"name="file[]" id="archivos" class="form-contralue" multiple/>
                                        </div>
                                        <div class="form-group">


                                            <select class="form-control" id="Arriendo">

                                                <%                                        String sql2 = "select rut_usuario from usuarios;";
                                                    try {
                                                        con = cn.getConnection();
                                                        ps = con.prepareStatement(sql2);

                                                        rs = ps.executeQuery();

                                                        while (rs.next()) {
                                                            out.println("<option>" + rs.getString("rut_usuario") + "</option>");

                                                        }

                                                    } catch (Exception e) {
                                                        out.println(e.toString());
                                                    }


                                                %>
                                            </select>

                                        </div>
                                        <input type="submit" class="btnEnviar"  value="Enviar"/>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>



    </body>
</html>
