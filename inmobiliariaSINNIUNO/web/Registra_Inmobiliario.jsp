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
        
        <div id="fondo"> <br>
            <div class="toggled">
                <!-- Sidebar -->

                <div class="container register">
                    <div class="row">
                        <div class="col-md-3 register-left">
                            <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                            <h3>Nuevo usuario</h3>
                            <h5> Gestor Inmobiliario Free</h5>

                        </div>
                        <!--<form method="POST" enctype="multipart/form-data" >  </form>-->
                        <form id="frminmobiliario" class="form" method="post" action="NuevoInmobiliario" nctype="multipart/form-data" >
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                    <h3 class="register-heading  text-white">Inmobiliaria SINNIUNO</h3>
                                    <div class="row register-form">
                                        <div class="col-md-6 shadow">
                                            
                                            <div class="form-group">
                                                <label class="text-white" for="rut">Ingrese su Rut:</label>
                                                <input type="text" class="form-control" id="rut" name="rut">
                                            </div>
                                            
                                            <div class="form-group" >
                                                <label class="text-white" for="nombre">Ingrese su Nombre:</label>
                                                <input type="text" class="form-control"  name="nombre" id="nombre"/>
                                            </div>

                                            <div class="form-group">
                                                <label class="text-white" for="fecha">Fecha de Nacimiento:</label>
                                                <input type="text" class="form-control" name="fecha_nacimiento" id="fecha_nacimiento"/>
                                            </div>
                                            <div class="form-group">
                                                <label class="text-white" for="correo">Ingrese su Correo:</label>
                                                <input type="text" class="form-control" name="correo"  placeholder="Ingrese su correo" id="correo" />
                                            </div>
                                        </div>


                                        <div class="col-md-6 shadow">


                                            <div class="form-group">
                                                <label class="text-white" for="clave">Ingrese su Contraseña:</label>
                                                <input type="password" class="form-control" name="clave" id="clave" />
                                            </div>
                                            <div class="form-group">
                                                <label class="text-white" for="sexo">Seleccione su Sexo:</label>
                                                <select class="form-control" id="sexo" name="sexo">
                                                    <option value="0">Selecciona Sexo</option>

                                                    <%
                                                        String sql2 = "select * from sexo;";
                                                        try {
                                                            con = cn.getConnection();
                                                            ps = con.prepareStatement(sql2);

                                                            rs = ps.executeQuery();

                                                            while (rs.next()) {
                                                                out.println("<option value= "+rs.getString(1)+">" + rs.getString(2) + "</option>");

                                                            }

                                                        } catch (Exception e) {
                                                            out.println(e.toString());
                                                        }


                                                    %>
                                                </select>

                                            </div>
                                            <div class="form-group">
                                                <label class="text-white" for="telefono">Ingrese su Telefono:</label>
                                                <input type="text" class="form-control" name="telefono"  id="telefono" />
                                            </div>
                                            <div class="form-group">
                                                <label class="text-white" for="rut">Agregue Certificado:</label><br>
                                                <label class="text-white" for="rut">de Antecedentes:</label>
                                                <input type="file"name="file[]" id="archivos" class="form-contralue btn-outline-success" multiple/>
                                            </div><br>
                                            <button type="submit" name="accion" class="btn btn-primary border-white" value="Crear">Crear Usuario</button>
                                           <!--<button type="submit" class="btn btn-primary btn-block" href="javascript:;" onclick="addinmobiliario($('#rut').val(), $('#nombre').val(), $('#fecha_nacimiento').val(), $('#correo').val(), $('#telefono').val(), $('#sexo').val(), $('#archivos').val(), $('#clave').val());return false;">Registrar</button>-->

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script>

            $(document).ready(function () {
                // AGREGAR TODO EL CODIGO GENIAL QUE QUEREMOS

                $("#frminmobiliario").on('submit', function (e) {
                    e.preventDefault();

                    //CREAR FORMULARIO POR JAVASCRIPT
                    let formulario = new FormData();

                    //OBTENIENDO VALORES DESDE INPUT DE HTML
                    let rut = $("#rut").val();
                    let nombre = $("#nombre").val();
                    let apellido = $("#apellido").val();
                    let fecha = $("#fecha").val();
                    let correo = $("#correo").val();
                    let clave = $("#clave").val();
                    let sexo = $("#sexo").val();
                    let telefono = $("#telefono").val();
                    let archivos = $("#archivos")[0].files;

                    //CREANDO INPUTS EN FORMULARIO
                    formulario.append('rut', rut);
                    formulario.append('nombre', nombre);
                    formulario.append('apellido', apellido);
                    formulario.append('fecha', fecha);
                    formulario.append('correo', correo);
                    formulario.append('clave', clave);
                    formulario.append('sexo' , sexo);
                    formulario.append('telefono', telefono);
                    formulario.append('archivos', archivos);

                    $.ajax({
                        url: $(this).attr("action"),
                        type: $(this).attr("method"),
                        data: formulario,
                        contentType: false,
                        processData: false,
                        success: function (resp) {
                            console.log(resp);
                        }
                    })
                });

            });

        </script>                                         
    </body>
</html>

