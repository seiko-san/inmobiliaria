<%-- 
    Document   : gestor_inmobiliario
    Created on : 06-dic-2020, 17:53:35
    Author     : Law
--%>

<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="modelo.Conexion"%>
<%@page import="java.sql.Connection"%>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <title>MÓDULO PROPIEDADES</title>
    </head>
    <body>
        <%
            Connection con;
            Conexion cn = new Conexion();
            PreparedStatement ps;
            ResultSet rs;

            String SQL = "select usuarios.rut_usuario, usuarios.nombre_usuario, usuarios.fechanac_usuario, usuarios.correo_usuario, usuarios.clave_usuario, usuarios.telefono_usuario, sexo.nombre_sexo, perfiles.nombre_tipo, usuarios.certificado_antecedente from usuarios inner join perfiles on usuarios.id_perfil = perfiles.id_perfil inner join sexo on usuarios.id_sexo = sexo.id_sexo where perfiles.nombre_tipo = 'Gestor Inmobiliario Free'";

            con = cn.getConnection();
            ps = con.prepareStatement(SQL);

            rs = ps.executeQuery();
        %>


        <div class="container mt-5">
            <div class="row mb-4">
                <div class="col-12">
                    <h1 class="text-center">Listado de Inmobiliario</h1>
                </div>
            </div>

            <div class="row mt-5">
                <div class="col-12">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Rut Usuario</th>
                                <th>Nombre Usuario</th>
                                <th>Fecha Nacimiento</th>
                                <th>Correo Usuario</th>
                                <th>Clave</th>
                                <th>Telefono</th>
                                <th>Sexo</th>
                                <th>Perfil</th>
                                <th>Certificado Antecedente</th>
                            </tr>
                        </thead>
                        <% 
                        while(rs.next()){
                            
                         //Blob fileData = rs.getBlob("certificado_antecedente");
                        
                        %>
                        <tbody id="tabla">
                            <td><%=rs.getString("rut_usuario") %></td>
                            <td><%=rs.getString("nombre_usuario") %></td>
                            <td><%=rs.getString("fechanac_usuario") %></td>
                            <td><%=rs.getString("correo_usuario") %></td>
                            <td><%=rs.getString("clave_usuario") %></td>
                            <td><%=rs.getString("telefono_usuario") %></td>
                            <td><%=rs.getString("nombre_sexo") %></td>
                            <td><%=rs.getString("nombre_tipo") %></td>
                            <td><a href="descarga.jsp?rut=<%out.print(rs.getString("rut_usuario"));%>" target="_blank">Ver PDF</a></td>
                        </tbody>
                        <% 

                        }
                        
                        %>
                    </table>
                </div>

            </div>
        </div>






        <!-- Optional JavaScript; choose one of the two! -->

        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

        <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        -->

        <script>

            $(document).ready(function () {
                cargarTabla();
                setInterval(function () {
                    cargarTabla();
                }, 10000)
            })

            function cargarTabla() {
                $.ajax({
                    method: "GET",
                    url: "./Propiedades",
                })
                        .done(function (msg) {
                            let respuesta = JSON.parse(msg);
                            $("#tabla").empty();
                            $.each(respuesta, function (index, propiedad) {

                                let html = `<tr>
                                        <td>${propiedad.id}</td>
                                        <td>${propiedad.codigo}</td>
                                        <td>${propiedad.m2}</td>
                                        <td>${propiedad.direccion}</td>
                                        <td>${propiedad.descripcion}</td>
                                        <td>${propiedad.oferta}</td>
                                        <td>${propiedad.valor_arriendo}</td>
                                        <td>`
                                if (propiedad.imagen_arriendo != "") {
                                    html += `<img src="data:image/png;base64, ${propiedad.imagen_arriendo}" class="img-fluid"/>`
                                }

                                html += `    </td>
                                </tr>`;

                                $("#tabla").append(html);
                            })

                            console.log(respuesta);
                        });
            }

            $("#form-guardar").on('submit', function (evento) {
                evento.preventDefault();

                //$('#codigo').val("14"); //GET
                /*let codigo = $('#codigo').val(); //SET
                 let m2 = $('#m2').val();
                 let direccion = $('#direccion').val();
                 let descripcion = $('#descripcion').val();
                 let venta = $('#venta').val();
                 let arriendo = $('#arriendo').val();
                 let tipo_arriendo = $('#tipo_arriendo').val();
                 let valor_arriendo = $('#valor_arriendo').val();
                 let valor_venta = $('#valor_venta').val();
                 
                 let data = {
                 "codigo": codigo,
                 "m2": m2,
                 "direccion": direccion,
                 "descripcion": descripcion,
                 "venta": venta,
                 "arriendo": arriendo,
                 "tipo_arriendo": tipo_arriendo,
                 "valor_arriendo": valor_arriendo,
                 "valor_venta": valor_venta
                 }*/

                $.ajax({
                    method: "POST",
                    url: $(this).attr("action"),
                    data: $(this).serialize()
                })
                        .done(function (msg) {
                            alert(msg);
                        });
            })

        </script>
    </body>
</html>