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
        "telefono": telefono,
        "sexo": sexo,
        "numero_propietario": numero_propietario,
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
                $('#fecha_nacimiento').val('');
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

function modificar(estado,rut) {
    
//    alert(estado);
//    alert(rut);
    var detener = 2500;
    let datos = {

        "estado": estado,
        "rut": rut
    };
    $.ajax({
        data: datos,
        url: 'Modifica_Estado_Propietario',
        type: 'POST',
        beforeSend: function () {
            $('#resultado').html('<div class="loading" align="center"><img src="img/carga.svg" alt="loading" /><br/>Un momento, por favor...</div>');
        },
        success: function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
            setTimeout(function () {
                $("#resultado").html(response);

            }, detener
                    );
        }
    });
}
