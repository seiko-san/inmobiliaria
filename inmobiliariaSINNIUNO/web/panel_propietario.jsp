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

        <!-- Sidebar/menu -->
        <nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
            <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
            <div class="w3-container">
                <h3 class="w3-padding-64"><b>Inmobiliaria<br>SINNIUNO</b></h3>
            </div>
            <div class="w3-bar-block">
                <a href="#" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Inicio</a> 
                <a href="#showcase" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Inmobiliarios</a> 
                <a href="#services" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Servicios</a> 
                <a href="#designers" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Agregar Inmueble</a>
                <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Contacto</a>
            </div>
        </nav>

        <!-- Top menu on small screens -->
        <header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
            <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
            <span>Company Name</span>
        </header>

        <!-- Overlay effect when opening sidebar on small screens -->
        <div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

        <!-- !PAGE CONTENT! -->
        <div class="w3-main" style="margin-left:340px;margin-right:40px">

            <!-- Header -->
            <div class="w3-container" style="margin-top:80px" id="showcase">
                <h1 class="w3-jumbo"><b>Interior Design</b></h1>
                <h1 class="w3-xxxlarge w3-text-red"><b>Showcase.</b></h1>
                <hr style="width:50px;border:5px solid red" class="w3-round">
            </div>

            <!-- Photo grid (modal) -->
            <div class="w3-row-padding">
                <div class="w3-half">
                    <img src="/w3images/kitchenconcrete.jpg" style="width:100%" onclick="onClick(this)" alt="Concrete meets bricks">
                    <img src="/w3images/livingroom.jpg" style="width:100%" onclick="onClick(this)" alt="Light, white and tight scandinavian design">
                    <img src="/w3images/diningroom.jpg" style="width:100%" onclick="onClick(this)" alt="White walls with designer chairs">
                </div>

                <div class="w3-half">
                    <img src="/w3images/atrium.jpg" style="width:100%" onclick="onClick(this)" alt="Windows for the atrium">
                    <img src="/w3images/bedroom.jpg" style="width:100%" onclick="onClick(this)" alt="Bedroom and office in one space">
                    <img src="/w3images/livingroom2.jpg" style="width:100%" onclick="onClick(this)" alt="Scandinavian design">
                </div>
            </div>

            <!-- Modal for full size images on click-->
            <div id="modal01" class="w3-modal w3-black" style="padding-top:0" onclick="this.style.display = 'none'">
                <span class="w3-button w3-black w3-xxlarge w3-display-topright">×</span>
                <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
                    <img id="img01" class="w3-image">
                    <p id="caption"></p>
                </div>
            </div>

            <!-- Services -->
            <div class="w3-container" id="services" style="margin-top:75px">
                <h1 class="w3-xxxlarge w3-text-red"><b>Services.</b></h1>
                <hr style="width:50px;border:5px solid red" class="w3-round">
                <p>We are a interior design service that focus on what's best for your home and what's best for you!</p>
                <p>Some text about our services - what we do and what we offer. We are lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
                    dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor
                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                </p>
            </div>

            <!-- Designers -->
            <form id="NuevoInmueble" class="form" id="FrmAgregarINM" method="post" action="Agregar_Inmueble">
                <div class="w3-container" id="designers" style="margin-top:75px">
                    <h1 class="w3-xxxlarge w3-text-red"><b>Agregar Nuevo Inmueble</b></h1>
                    <hr style="width:50px;border:5px solid red" class="w3-round">

                    <div class="row register-form">
                        <div class="col-md-6 shadow">

                            <div class="form-group">
                                <label class="text" for="tipo">Tipo Propiedad</label>
                                <select class="form-control" id="tipo" name="tipo">
                                    <option value="0">Selecciona Tipo Propiedad</option>
                                    <%
                                        String sql2 = "select * from tipo_propiedad;";
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

                            <div class="form-group" >
                                <label class="text" for="fotos">Ingrese Fotografias:</label>
                                <input type="file"name="file[]" id="fotos" class="form-contralue" multiple/>
                            </div>

                            <div class="form-group">
                                <label class="text" for="fecha">Descripcion:</label>
                                <textarea class="form-control" name="descripcion" id="descripcion"></textarea>
                            </div>
                            <div class="form-group">
                                <label class="text" for="correo">Cantidad de baños:</label>
                                <input type="number" class="form-control" name="banos"  id="banos" />
                            </div>
                            <div class="form-group">
                                <label class="text" for="dormitorios">Cantidad de Dormitorios:</label>
                                <input type="number" class="form-control" name="dormitorios" id="clave" />
                            </div>
                            <div class="form-group">
                                <label class="text" for="areatotal">Área Total del Terreno:</label>
                                <input type="float" class="form-control" id="areatotal" name="areatotal">
                            </div>
                            <div class="form-group">
                                <label class="text" for="areacasa">Área Construida:</label>
                                <input type="text" class="form-control" name="areacasa"  id="areacasa" />
                            </div>
                            <div>
                                <label class="text" for="precios">Precios:</label>
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">$</span>
                                </div>
                                <input type="text" class="form-control" id="preciopeso" aria-label="precio" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">UF</span>
                                </div>
                                <input type="text" class="form-control" id="preciouf" aria-label="preciouf" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group">
                                <label class="text" for="fecha">Fecha de Publicacion:</label>
                                <input type="date" class="form-control" name="fecha"  id="fecha" />
                            </div>
                        </div>
                        <div class="col-md-6 shadow">

                            <div class="form-group">
                                <label class="text" for="visita">Opcion de visita:</label>
                                <select class="form-control" id="visita" name="visita">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="text" for="visita">Opcion de visita:</label>
                                <select class="form-control" id="visita" name="visita">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="text" for="bodega">Posee Bodega:</label>
                                <select class="form-control" id="bodega" name="bodega">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="text" for="estacionamiento">Posee Estacionamiento:</label>
                                <select class="form-control" id="estacionamiento" name="estacionamiento">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="text" for="logia">Posee Logia</label>
                                <select class="form-control" id="logia" name="logia">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="text" for="cocina">Equipa con cocina amoblada:</label>
                                <select class="form-control" id="cocina" name="cocina">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="text" for="jardin">Posee Antejardin</label>
                                <select class="form-control" id="jardin" name="jardin">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="text" for="patio">Posee Patio Trasero</label>
                                <select class="form-control" id="patio" name="patio">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="text" for="piscina">Posee Piscina</label>
                                <select class="form-control" id="piscina" name="piscina">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <br>
                            <button type="submit" name="accion" class="btn btn-primary " value="Crear">Agregar Inmobiliario</button>
                            <!--<button type="submit" class="btn btn-primary btn-block" href="javascript:;" onclick="addinmobiliario($('#rut').val(), $('#nombre').val(), $('#fecha_nacimiento').val(), $('#correo').val(), $('#telefono').val(), $('#sexo').val(), $('#archivos').val(), $('#clave').val());return false;">Registrar</button>-->
                            <br>
                        </div>
                    </div>
                    <br><br><br>

                </div>
            </form>

        </div>

        <!-- W3.CSS Container -->
        <div class="w3-light-grey w3-container w3-padding-32" style="margin-top:75px;padding-right:58px"><p class="w3-right">Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a></p></div>

        <script>
            // Script to open and close sidebar
            function w3_open() {
                document.getElementById("mySidebar").style.display = "block";
                document.getElementById("myOverlay").style.display = "block";
            }

            function w3_close() {
                document.getElementById("mySidebar").style.display = "none";
                document.getElementById("myOverlay").style.display = "none";
            }

            // Modal Image Gallery
            function onClick(element) {
                document.getElementById("img01").src = element.src;
                document.getElementById("modal01").style.display = "block";
                var captionText = document.getElementById("caption");
                captionText.innerHTML = element.alt;
            }

        </script>
        <script>
            $(document).ready(function (e) {
                $("#FrmAgregarINM").on('submit', function (e) {
                    e.preventDefault();
                    $.ajax({
                        type: 'POST',
                        url: 'submit.php',
                        data: new FormData(this),
                        contentType: false,
                        cache: false,
                        processData: false,
                        beforeSend: function () {
                            $('.submitBtn').attr("disabled", "disabled");
                            $('#FrmAgregarINM').css("opacity", ".5");
                        },
                        success: function (msg) {
                            $('.statusMsg').html('');
                            if (msg == 'ok') {
                                $('#FrmAgregarINM')[0].reset();
                                $('.statusMsg').html('<span style="font-size:18px;color:#34A853">Form data submitted successfully.</span>');
                            } else {
                                $('.statusMsg').html('<span style="font-size:18px;color:#EA4335">Some problem occurred, please try again.</span>');
                            }
                            $('#FrmAgregarINM').css("opacity", "");
                            $(".submitBtn").removeAttr("disabled");
                        }
                    });
                });

                //file type validation
                $("#file").change(function () {
                    var file = this.files[0];
                    var imagefile = file.type;
                    var match = ["image/jpeg", "image/png", "image/jpg"];
                    if (!((imagefile == match[0]) || (imagefile == match[1]) || (imagefile == match[2]))) {
                        alert('Please select a valid image file (JPEG/JPG/PNG).');
                        $("#file").val('');
                        return false;
                    }
                });
            });
        </script>
    </body>
</html>

