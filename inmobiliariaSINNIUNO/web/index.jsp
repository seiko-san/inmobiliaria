<%-- 
    Document   : index
    Created on : 04-11-2020, 18:36:54
    Author     : seiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inmobiliaria SINNIUNO</title>
    </head>
    <body>  
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div class="box">
                        <div class="shape1"></div>
                        <div class="shape2"></div>
                        <div class="shape3"></div>
                        <div class="shape4"></div>
                        <div class="shape5"></div>
                        <div class="shape6"></div>
                        <div class="shape7"></div>
                        <div class="float">
                            <form class="form" method="post" action="Controlador">

                                <div class="form-group">
                                    <img src="img/user.png" height="20" width="20" alt=""/>
                                    <label for="rut" class="text-white">Rut: </label><br>
                                    <input type="text" name="txtrut" id="nick" class="form-control" placeholder="Ingrese su rut">
                                </div>
                                <div class="form-group">
                                    <img src="img/clave.png" height="25" width="25" alt=""/>
                                    <label for="clave" class="text-white">contraseña: </label><br>
                                    <input type="password" name="txtclave" id="clave" class="form-control" placeholder="Ingrese su contraseña">
                                </div>
                                <div class="form-group">
                                    <input class="btn btn-info btn-md" type="submit" name="accion"  value="Ingresar">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
