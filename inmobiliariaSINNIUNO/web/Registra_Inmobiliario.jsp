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
    <body id="LoginForm">

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
        <link href="css/estiloprincipal.css" rel="stylesheet" type="text/css"/>
        <script src="js/inmobiliario.js" type="text/javascript"></script>

        <div id="fondo">
            <div class="container">
                <div class="row mb-4">
                    <div class="col-12"><br>
                        <h1 class="text-center text-white">REGISTRAR <br>Gestor Inmobiliario Free</h1>
                    </div>
                </div>

                <div  class="row">
                    <div id="prop" class="card offset-md-3 col-12 col-md-6 shadow">
                        <div  class="card-body">

                            <!--<form method="POST" enctype="multipart/form-data" >  </form>-->
                            <form id="frminmobiliario" class="form" method="post" action="NuevoInmobiliario" enctype="multipart/form-data" >
                                <div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <h3 class="register-heading  text-white">Inmobiliaria SINNIUNO</h3>
                                        <div class="row register-form">
                                            <div class="col-md-12 shadow">

                                                <div class="form-group">
                                                    <label class="text" for="rut">Ingrese su Rut:</label>
                                                    <input type="text" class="form-control" id="rut" name="rut">
                                                </div>

                                                <div class="form-group" >
                                                    <label class="text" for="nombre">Ingrese su Nombre:</label>
                                                    <input type="text" class="form-control"  name="nombre" id="nombre"/>
                                                </div>
                                                <div class="form-group">
                                                    <label class="text" for="fecha">Fecha de Nacimiento:</label>
                                                    <input type="date" class="form-control" name="fecha_nacimiento" id="fecha_nacimiento"/>
                                                </div>
                                                <div class="form-group">
                                                    <label class="text" for="correo">Ingrese su Correo:</label>
                                                    <input type="text" class="form-control" name="correo"  placeholder="Ingrese su correo" id="correo" />
                                                </div>

                                                <div class="form-group">
                                                    <label class="text" for="clave">Ingrese su Contraseña:</label>
                                                    <input type="password" class="form-control" name="clave" id="clave" />
                                                </div>
                                                <div class="form-group">
                                                    <label class="text" for="sexo">Seleccione su Sexo:</label>
                                                    <select class="form-control" id="sexo" name="sexo">
                                                        <option value="0">Selecciona Sexo</option>

                                                        <%
                                                            String sql2 = "select * from sexo;";
                                                            try {
                                                                con = cn.getConnection();
                                                                ps = con.prepareStatement(sql2);

                                                                rs = ps.executeQuery();

                                                                while (rs.next()) {
                                                                    out.println("<option value= " + rs.getString(1) + ">" + rs.getString(2) + "</option>");

                                                                }

                                                            } catch (Exception e) {
                                                                out.println(e.toString());
                                                            }


                                                        %>
                                                    </select>

                                                </div>
                                                <div class="form-group">
                                                    <label class="text" for="telefono">Ingrese su Telefono:</label>
                                                    <input type="text" class="form-control" name="telefono"  id="telefono" />
                                                </div>
                                                <div class="form-group">
                                                    <label class="text" for="rut">Agregue Certificado de Antecedentes:</label><br>
                                                    <input type="file"name="file[]" id="archivos" class="form-contralue " multiple/>
                                                </div><br>
                                                <button type="submit" name="accion" class="btn btn-primary btn-outline-success" value="Crear">Crear Usuario</button>
                                                <br><br>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <br><br>
            <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>                                  
    </body>
    <footer>
        <div class="footer1 ">
            <strong>Copyright &copy; 2020 <a href="#">TheLaw&Seiko</a>.</strong>
            Todo los derechos reservados.
        </div>
    </footer>
</html>

