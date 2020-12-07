/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function editar(rut) {

//alert(rut);
//
//

    $.ajax({
        type: "post",
        data: 'rut=' + rut,
        url: "actualizar.jsp",
        
        success: function (data) {
            
                $('#content').html(data);
          
                 
        }
    });
}