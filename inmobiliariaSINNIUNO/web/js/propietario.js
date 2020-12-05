/* 
 * Autor: Thelaw
 */

function addpropietario(rut, nombre, fecha, correo, telefono, sexo, numero_propietario, clave) {
    var detener = 2500;
    let datos = {

        "rut": rut,
        "nombre": nombre,
        "fecha": fecha,
        "correo": correo,
        "telefon": telefono,
        "sexo": sexo,
        "numero_propietario": numero_propietario,
        "clave": clave

    };
    $.ajax({
        data: datos,
        url: 'Registro_Propietario',
        type: 'POST',
        beforeSend: function () {
            $('#resultado').html("<center>Procesando...<center>");
        },
        success: function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
            setTimeout(function () {
                $("#resultado").html(response);

                $('#rut').val('');
                $('#nombre').val('');
                $('#fecha').val('');
                $('#correo').val('');
                $('#telefon').val('');
                $('#sexo').val('');
                $('#numero_propietario').val('');
                $('#clave').val('');
               
                
                
            }, detener
                    );
        }
    });
}
