<%-- 
    Document   : Registra_Propietario
    Created on : 05-dic-2020, 2:09:42
    Author     : Law
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="modelo.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="css/estiloprincipal.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="js/propietario.js" type="text/javascript"></script>
        <script src="js/validaciones.js" type="text/javascript"></script>
        <title>Registrar Propietario</title>
    </head>
    <body id="LoginForm">
        <div id="fondo">
            <div class="container">
                <div class="row mb-4">
                    <div class="col-12"><br>
                        <h1 class="text-center text-white">REGISTRAR <br>Dueño de Inmueble o Propietario</h1>
                    </div>
                </div>

                <div  class="row">
                    <div id="prop" class="card offset-md-3 col-12 col-md-6 shadow">
                        <div  class="card-body">

                            <form >
                                <div class="form-group">
                                    <label for="rut">Rut</label>
                                    <input type="text" class="form-control" id="rut"  name="rut" >
                                </div>

                                <div class="form-group">
                                    <label for="nombre_completo">Nombre Completo</label>
                                    <input type="text" class="form-control" id="nombre" name="nombre">
                                </div>
                                <div class="form-group">
                                    <label for="fecha_nacimiento">fecha Nacimiento</label>
                                    <input type="date" class="form-control" id="fecha_nacimiento" name="fecha_nacimiento">
                                </div>
                                <div class="form-group">
                                    <label for="correo">Correo</label>
                                    <input type="text" class="form-control" id="correo" name="correo">
                                </div>
                                <div class="form-group">
                                    <label for="telefono">Telefono</label>
                                    <input type="text" class="form-control" id="telefono" name="telefono">
                                </div>
                                <div class="form-group">
                                    <div class="input-group-prepend">
                                        <label for="sexo">Sexo</label>
                                    </div>
                                    <select id="sexo" class="custom-select">
                                        <option>Seleccionar</option>
                                        <%

                                            Connection con;
                                            Conexion cn = new Conexion();
                                            PreparedStatement ps;
                                            ResultSet rs;

                                            try {
                                                con = cn.getConnection();
                                                String SQL = "Select * from sexo";
                                                ps = con.prepareStatement(SQL);
                                                rs = ps.executeQuery();
                                                while (rs.next()) {
                                                    out.println("<option value=" + rs.getString(1) + ">" + rs.getString(2) + "</option>");
                                                }
                                            } catch (Exception e) {

                                            }

                                        %>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="telefono">Numero Propietario</label>
                                    <input type="text" class="form-control" id="numero_propietario" name="numero_propietario">
                                </div>

                                <div class="form-group">
                                    <label for="telefono">Clave</label>
                                    <input type="password" class="form-control" id="clave" name="clave">
                                </div>
                                <button type="submit" class="btn btn-primary btn-block" href="javascript:;" onclick="addpropietario($('#rut').val(), $('#nombre').val(), $('#fecha_nacimiento').val(), $('#correo').val(), $('#telefono').val(), $('#sexo').val(), $('#numero_propietario').val(), $('#clave').val());return false;">Registrar</button>
                                <!--<button type="submit" class="btn btn-primary btn-block">Registrar</button>-->
                            </form>
                        </div>
                        <div id="resultado"></div>
                    </div>
                </div>

            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <br>
    </body>
    <footer>
        <div class="footer1 ">
            <strong>Copyright &copy; 2020 <a href="#">TheLaw&Seiko</a>.</strong>
            Todo los derechos reservados.
        </div>
    </footer>
</html>