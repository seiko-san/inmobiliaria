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
        <title>JSP Page</title>
    </head>
    

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        


    <body id="LoginForm">
        <div class="container">
            <h1 class="form-heading">Inmobiliaria SINNIUNO</h1>
            <div class="login-form">
                <div class="main-div">
                    <div class="panel">
                        <h2>Login de ingreso</h2>
                        <p>Por favor digite su rut y contraseña</p>
                    </div>
                        <form id="Login" class="form" method="post" action="Controlador">
                        <div class="form-group ">
                                    <img src="img/user.png" height="20" width="20" alt=""/>
                                    <label for="nick" class="text">Ingrese su rut: </label><br>
                                    <input type="text" name="txtnick" id="nick" class="form-control" placeholder="Ingrese nick de usuario">
                                </div>
                            
                        <div class="form-group">
                                    <img src="img/clave.png" height="25" width="25" alt=""/>
                                    <label for="clave" class="text">Ingrese su contraseña: </label><br>
                                    <input type="password" name="txtclave" id="clave" class="form-control" placeholder="Ingrese contraseña">
                                </div>
                        <div class="forgot">
                            <a href="#">¿olvidó su contraseña?</a>
                        </div>
                        <button type="submit" name="accion" class="btn btn-primary" value="Ingresar">Ingresar</button>
                    </form>
                    <div class="forgot">
                            <a href="Nuevo_Usuario.jsp">Crear nuevo usuario</a>
                        </div>
                </div>
                <p class="botto-text"> INMOBILIARIA SINNIUNO</p>
            </div></div>


</body>
<footer>
    
</footer>
</html>
