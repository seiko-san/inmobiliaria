<%-- 
    Document   : panel_administrador
    Created on : 02-12-2020, 18:32:56
    Author     : seiko
    Modificado : Thelaw 02-12-2020
--%>
 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="modelo.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" >
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"></script>
        <link href="css/styleAdmin.css" rel="stylesheet">
        <script src="js/menu.js" type="text/javascript"></script>
        <script src="js/actualizar_propietario.js" type="text/javascript"></script>
        <script src="js/propietario.js" type="text/javascript"></script>
        <script src="js/logout.js" type="text/javascript"></script>
        <title>Administrador</title>


    </head>


    <body>

        <div class="wrapper">

            <nav id="sidebar">

                <div class="sidebar-header">
                    <h3>INMOBILIARIA</h3>
                </div>
                <ul class="lisst-unstyled components">
<!--<%//${nick}%>-->
                    <p>Usuario: <%= request.getSession().getAttribute("nick")%></p>
                    <li >
                        <a href="#">Inicio</a>
                    </li>
                    <li>
                        <a href="#" onclick="javascript:vistapropietario();">Gestor Propietario</a>
                    </li>
                    <li>
                        <a href="#" onclick="javascript:vistainmobiliario();">Gestor Inmobiliario</a>
                    </li>
                    <li>
                        <a href="Logout.jsp" >Salir</a>
                    </li>
                </ul>

            </nav>

            <div id="content">
                <!--<nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid">
                        <button type="button" id="sidebarCollapse" class="btn btn-info">
                            <i class="fas fa-align-left"></i>
                            <span>Menu</span>
                        </button>
                    </div>
                </nav>
            </div>-->

            </div>



            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

            <script>
                            $(document).ready(function () {
                                $("#sidebarCollapse").on('click', function () {
                                    $("#sidebar").toggleClass('active');
                                });
                            });
            </script>
    </body>

<footer>
        <div class="float-right d-none d-sm-inline-block">
            <strong>Copyright &copy; 2020 <a href="#">TheLaw&Seiko</a>.</strong>
        Todo los derechos reservados.
        </div>
</footer>
    

    
</html>

