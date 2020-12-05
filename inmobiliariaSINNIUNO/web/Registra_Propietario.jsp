<%-- 
    Document   : Registra_Propietario
    Created on : 05-dic-2020, 2:09:42
    Author     : Law
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <title>Registrar Propietario</title>
    </head>
    <body>
        
        <div class="container mt-5">
            <div class="row mb-4">
                <div class="col-12">
                    <h1 class="text-center">REGISTRA PROPIETARIO</h1>
                </div>
            </div>
            <div class="row">
                <div class="card offset-md-3 col-12 col-md-6 shadow">
                    <div class="card-body">
                        <form id="frm-add-propietario" action="./Propiedades">
                            <div class="form-group">
                              <label for="codigo">Código</label>
                              <input type="text" class="form-control" id="codigo" name="codigo">
                            </div>
                            <div class="form-group">
                              <label for="m2">M2</label>
                              <input type="number" class="form-control" id="m2" name="m2">
                            </div>
                            <div class="form-group">
                              <label for="direccion">Dirección</label>
                              <input type="text" class="form-control" id="direccion" name="direccion">
                            </div>
                            <div class="form-group">
                              <label for="descripcion">Descripción</label>
                              <textarea class="form-control" id="descripcion" name="descripcion"></textarea>
                            </div>
                            
                            <div class="form-group">
                                <label>Oferta</label>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="oferta" id="venta" value="0" checked>
                                    <label class="form-check-label" for="venta">
                                      Venta
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="oferta" id="arriendo" value="1" checked>
                                    <label class="form-check-label" for="arriendo">
                                      Arriendo
                                    </label>
                                </div>
                            </div>
                            
                            <!-- en caso de arriendo -->
                            
                            <div class="form-group">
                                <label for="tipo_arriendo">Tipo de Arriendo</label>
                                <select class="form-control" id="tipo_arriendo" name="tipo_arriendo">
                                    <option value="0" selected> Seleccione tipo de arriendo</option>
                                    <option value="1">Año Corrido</option>
                                    <option value="2">Marzo - Diciembre</option>
                                    <option value="3">Diario</option>
                                </select>
                            </div>
                            
                            <div class="form-group">
                              <label for="valor_arriendo">Valor Arriendo</label>
                              <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                  <span class="input-group-text">$</span>
                                </div>
                                <input type="number" class="form-control" id="valor_arriendo" name="valor_arriendo">
                              </div>
                            </div>
                            
                            <!-- en caso de venta -->
                            
                            <div class="form-group">
                              <label for="valor_venta">Valor Venta</label>
                              <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                  <span class="input-group-text">UF</span>
                                </div>
                                <input type="number" class="form-control"  id="valor_venta">
                              </div>
                            </div>
                            
                            <button type="submit" class="btn btn-primary btn-block">Guardar Propiedad</button>
                        </form>
                    </div>
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
            
            $(document).ready(function(){
                cargarTabla();
                setInterval(function(){
                    cargarTabla();
                },10000)
            })
            
            function cargarTabla(){
                $.ajax({
                    method: "GET",
                    url: "./Propiedades",
                })
                .done(function( msg ) {
                    let respuesta = JSON.parse(msg);
                    $("#tabla").empty();
                    $.each(respuesta, function(index, propiedad){
                        
                        let html = `<tr>
                                        <td>${propiedad.id}</td>
                                        <td>${propiedad.codigo}</td>
                                        <td>${propiedad.m2}</td>
                                        <td>${propiedad.direccion}</td>
                                        <td>${propiedad.descripcion}</td>
                                        <td>${propiedad.oferta}</td>
                                        <td>${propiedad.valor_arriendo}</td>
                                        <td>`
                        if(propiedad.imagen_arriendo != ""){
                            html += `<img src="data:image/png;base64, ${propiedad.imagen_arriendo}" class="img-fluid"/>`
                        }
                                
                        html +=`    </td>
                                </tr>`;
                        
                        $("#tabla").append(html);
                    })
                    
                    console.log( respuesta );
                });
            }
              
            $("#form-guardar").on('submit', function(evento){
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
                .done(function( msg ) {
                    alert( msg );
                });
            })
            
        </script>
    </body>
</html>