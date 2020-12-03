/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function vistainmueble() {
    var detener = 3090;
   
    $.ajax({
        type: "POST",
        url: "gestor_inmueble.jsp",
        beforeSend: function () {
            $('#content').html('<div class="loading" align="center"><img src="img/inmobiliario.gif" alt="loading" /><br/>Un momento, por favor...</div>');
            
        },

        success: function (data) {
            setTimeout(function () {
                $('#content').html(data);
            }, detener
                    );
        }
    });
}