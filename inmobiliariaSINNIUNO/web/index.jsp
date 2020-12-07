<%-- 
    Document   : index
    Created on : 06-12-2020, 15:39:12
    Author     : seiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <title>W3.CSS Template</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
    <link href="css/estiloprincipal.css" rel="stylesheet" type="text/css"/>
    <style>
        body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
        body {font-size:16px;}
        .w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
        .w3-half img:hover{opacity:1}
    </style>
    <body>

        <!-- Sidebar/menu -->
        <nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
            <a href="ingreso_usuarios.jsp" class="w3-bar-item w3-button w3-hover-white">Ingresar</a> 
            <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
            <div class="w3-container">
                <h3 class="w3-padding-64"><b>Inmobiliaria<br>SINNIUNO</b></h3>
            </div>
            <div class="w3-bar-block">
                <a href="#" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Inicio</a> 
                <a href="#inmobiliarios" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Inmobiliarios</a> 
                <a href="#servicios" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Servicios</a> 
                <a href="#quienessomos" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">¿Quienes Somos?</a> 
            </div>
        </nav>

        <!-- Top menu on small screens -->
        <header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
            <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
            <span>Inmobiliaria SINNIUNO</span>
        </header>

        <!-- Overlay effect when opening sidebar on small screens -->
        <div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

        <!-- !PAGE CONTENT! -->
        <div class="w3-main" style="margin-left:340px;margin-right:40px">

            <!-- Header -->
            <div class="w3-container" style="margin-top:80px" id="inmobiliarios">
                <h1 class="w3-jumbo"><b>Inmobiliaria SINNIUNO</b></h1>
                <h1 class="w3-xxxlarge w3-text-red"><b>inmobiliarios</b></h1>
                <hr style="width:50px;border:5px solid red" class="w3-round">
            </div>

            <!-- Photo grid (modal) -->
            <div class="w3-row-padding">
                <div class="w3-half">
                    <img src="img/inmobiliario.gif" style="width:100%" onclick="onClick(this)" alt="Concrete meets bricks">
           
                </div>

                <div class="w3-half">
                    <img src="img/inmobiliario.gif" style="width:100%" onclick="onClick(this)" alt="Windows for the atrium">
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

            <!-- Servicios -->
            <div class="w3-container" id="servicios" style="margin-top:75px">
                <h1 class="w3-xxxlarge w3-text-red"><b>Servicios</b></h1>
                <hr style="width:50px;border:5px solid red" class="w3-round">
                <p>La inmobiliaria es una entidad privada que establece la interacción entre
                    dos o más personas interesadas con el único fin de vender un inmueble. 
                    Independientemente de si se trata de venta o arrendamiento de inmuebles, 
                    el papel de las agencias inmobiliarias se basa en buscar la mejor forma 
                    de contactar en última instancia con el propietario y los potenciales 
                    clientes para cerrar finalmente el negocio, de manera que ambas partes 
                    queden satisfechas con las condiciones de la transacción.
                </p>
                <p>Además, la eficiencia y comodidad del propietario puede aportar
                    valor agregado, ahorro y confiabilidad a la hora de ejecutar 
                    cualquier transacción inmobiliaria.</p>
            </div>

            <!-- Designers -->
            <div class="w3-container" id="quienessomos" style="margin-top:75px">
                <h1 class="w3-xxxlarge w3-text-red"><b>¿Quienes Somos?</b></h1>
                <hr style="width:50px;border:5px solid red" class="w3-round">
                <p>Equipo de trabajo de Inmobiliaria SINNIUNO.</p>
                <p>
                    Nuestra empresa consta de un equipo profesional de tecnología 
                    de la información y sistemas informáticos. Contamos con la 
                    infraestructura de equipos informáticos más innovadora y los conocimientos
                    necesarios para cumplir con los requerimientos del servicio.
                    Esta empresa ha sido integrada en el plan operativo de la empresa, 
                    para que pueda actualizar y / u obtener infraestructura técnica y conocimiento
                    organizacional para brindar mayor competitividad; todo esto para incrementar
                    el valor de su inmobiliario y apoyarlo para enfrentar exitosamente la venta.
                    El desafío del nuevo mercado es un objetivo firme; por tanto, el objetivo de
                    lograr mayor productividad y mayor utilidad.
                </p>

            </div>

            <!-- The Team -->
            <div class="w3-row-padding w3-grayscale">

                <div class="w3-col m6 w3-margin-bottom">
                    <div class="w3-light-grey">
                        <img src="img/pedro.PNG" alt="Pedro" style="width:100%">
                        <div class="w3-container">
                            <h3>Pedro Gatica</h3>
                            <p class="w3-opacity">Programador y Desarrolador web</p>
                        </div>
                    </div>
                </div>
                <div class="w3-col m6 w3-margin-bottom">
                    <div class="w3-light-grey">
                        <img src="img/darlyn.PNG" alt="darlyn" style="width:100%">
                        <div class="w3-container">
                            <h3>Darlyn Soazo</h3>
                            <p class="w3-opacity">Programadora y Desarrolladora Web</p>
                        </div>
                    </div>
                </div>
            </div>


            <!-- End page content -->
        </div>


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

    </body>
    <footer>

         <div class="footclas w3-light-grey w3-container w3-padding-32"><p class="w3-right">
                 <strong>Copyright &copy; 2020 <a href="#quienessomos">TheLaw&Seiko</a>.</strong>
            Todos los derechos reservados.
             </p>
         </div>
   
    </footer>
</html>
