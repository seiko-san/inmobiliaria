/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
                // AGREGAR TODO EL CODIGO GENIAL QUE QUEREMOS
var detener = 2500;
                $("#frminmobiliario").on('submit', function (e) {
                    e.preventDefault();

                    //CREAR FORMULARIO POR JAVASCRIPT
                    let formulario = new FormData();

                    //OBTENIENDO VALORES DESDE INPUT DE HTML
                    let rut = $("#rut").val();
                    let nombre = $("#nombre").val();
                    let apellido = $("#apellido").val();
                    let fecha = $("#fecha_nacimiento").val();
                    let correo = $("#correo").val();
                    let clave = $("#clave").val();
                    let sexo = $("#sexo").val();
                    let telefono = $("#telefono").val();
                    let archivos = $("#archivos")[0].files;

                    //CREANDO INPUTS EN FORMULARIO
                    formulario.append('rut', rut);
                    formulario.append('nombre', nombre);
                    formulario.append('apellido', apellido);
                    formulario.append('fecha_nacimiento', fecha);
                    formulario.append('correo', correo);
                    formulario.append('clave', clave);
                    formulario.append('sexo', sexo);
                    formulario.append('telefono', telefono);
                    if (archivos.length > 0) {
                        formulario.append('archivos', archivos[0]);

                        $.ajax({
                            url: $(this).attr("action"),
                            type: $(this).attr("method"),
                            data: formulario,
                            contentType: false,
                            processData: false,
                            beforeSend: function () {
            $('#result').html('<div class="loading" align="center"><img src="img/carga.svg" alt="loading" /><br/>Un momento, por favor...</div>');
        },
                            success: function (resp) {
                                setTimeout(function () {
                $("#result").html(resp);
                $('#rut').val('');
                $('#nombre').val('');
                $('#fecha_nacimiento').val('');
                $('#correo').val('');
                $('#telefono').val('');
                $('#sexo').val('');
                $('#archivos').val('');
                $('#clave').val('');
            }, detener
                    );
                            }
                        });
                    }

                });

            });












//function addinmobiliario(rut, nombre, fecha, correo, telefono, sexo, archivos, clave) {
//    var detener = 2500;
//    let datos = {
//
//        "rut": rut,
//        "nombre": nombre,
//        "fecha": fecha,
//        "correo": correo,
//        "telefono": telefono,
//        "sexo": sexo,
//        "numero_propietario": archivos[0].file[0],
//        "clave": clave
//
//    };
//    $.ajax({
//        data: datos,
//        url: 'Registro_Propietario',
//        type: 'POST',
//        beforeSend: function () {
//            $('#resultado').html('<div class="loading" align="center"><img src="img/carga.svg" alt="loading" /><br/>Un momento, por favor...</div>');
//        },
//        success: function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
//            setTimeout(function () {
//                $("#resultado").html(response);
//
//                $('#rut').val('');
//                $('#nombre').val('');
//                $('#fecha').val('');
//                $('#correo').val('');
//                $('#telefono').val('');
//                $('#sexo').val('');
//                $('#numero_propietario').val('');
//                $('#clave').val('');
// 
//            }, detener
//                    );
//        }
//    });
//}