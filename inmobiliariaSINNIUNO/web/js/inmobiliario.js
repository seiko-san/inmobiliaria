/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function addinmobiliario(rut, nombre, fecha, correo, telefono, sexo, archivos, clave) {
    var detener = 2500;
    let datos = {

        "rut": rut,
        "nombre": nombre,
        "fecha": fecha,
        "correo": correo,
        "telefono": telefono,
        "sexo": sexo,
        "numero_propietario": archivos[0].file[0],
        "clave": clave

    };
    $.ajax({
        data: datos,
        url: 'Registro_Propietario',
        type: 'POST',
        beforeSend: function () {
            $('#resultado').html('<div class="loading" align="center"><img src="img/carga.svg" alt="loading" /><br/>Un momento, por favor...</div>');
        },
        success: function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
            setTimeout(function () {
                $("#resultado").html(response);

                $('#rut').val('');
                $('#nombre').val('');
                $('#fecha').val('');
                $('#correo').val('');
                $('#telefono').val('');
                $('#sexo').val('');
                $('#numero_propietario').val('');
                $('#clave').val('');
 
            }, detener
                    );
        }
    });
}