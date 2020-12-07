/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function salir(){
    
    
    alert("SALIR");
    
    var detener = 2500;

    $.ajax({
        
        type: 'POST',
        url: 'Logout.jsp',
        
        
        success: function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
            setTimeout(function () {
                $("#resultado").html(response);

 
            }, detener
                    );
        }
    });
    
    
    
}