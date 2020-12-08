/* 
 * Autor: Thelaw
 */


//
//function valideKey(evt){
//			
//			
//			var code = (evt.which) ? evt.which : evt.keyCode;
//			
//			if(code==8) {
//			  return true;
//			} else if(code>=48 && code<=57) { 
//			  return true;
//			} else{ 
//			  return false;
//			}
//		}
//            
//          
//  function sololetras(e) {
//        key=e.keyCode || e.which;
// 
//        teclado=String.fromCharCode(key).toLowerCase();
// 
//        letras="qwertyuiopasdfghjklñzxcvbnm ";
// 
//        especiales="8-37-38-46-164";
// 
//        teclado_especial=false;
// 
//        for(var i in especiales){
//            if(key==especiales[i]){
//                teclado_especial=true;
//                break;
//            }
//        }
// 
//        if(letras.indexOf(teclado)==-1 && !teclado_especial){
//            return false;
//        }
//    }




















//// Capturando el DIV alerta y mensaje
//var alerta = document.getElementById("alerta");
//var mensaje = document.getElementById("mensaje");
//
//// Permitir sólo números en el imput
//function isNumber(evt) {
//  var charCode = evt.which ? evt.which : event.keyCode;
//  if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode === 75) return false;
//
//  return true;
//}
//
//function checkRut(rut) {
//
//  if (rut.value.length <= 1) {
//    alerta.classList.remove('alert-success', 'alert-danger');
//    alerta.classList.add('alert-info');
//    mensaje.innerHTML = 'Ingrese un RUT en el siguiente campo de texto para validar si es correcto o no';
//  }
//
//  // Obtiene el valor ingresado quitando puntos y guión.
//  var valor = clean(rut.value);
//
//  // Divide el valor ingresado en dígito verificador y resto del RUT.
//  cuerpo = valor.slice(0, -1);
//  dv = valor.slice(-1).toUpperCase();
//
//  // Separa con un Guión el cuerpo del dígito verificador.
//  rut.value = format(rut.value);
//
//  // Si no cumple con el mínimo ej. (n.nnn.nnn)
//  if (cuerpo.length < 7) {
//    rut.setCustomValidity("RUT Incompleto");
//    alerta.classList.remove('alert-success', 'alert-danger');
//    alerta.classList.add('alert-info');
//    mensaje.innerHTML = 'Ingresó un RUT muy corto, el RUT debe ser mayor a 7 Dígitos. Ej: x.xxx.xxx-x';
//    return false;
//  }
//
//  // Calcular Dígito Verificador "Método del Módulo 11"
//  suma = 0;
//  multiplo = 2;
//
//  // Para cada dígito del Cuerpo
//  for (i = 1; i <= cuerpo.length; i++) {
//    // Obtener su Producto con el Múltiplo Correspondiente
//    index = multiplo * valor.charAt(cuerpo.length - i);
//
//    // Sumar al Contador General
//    suma = suma + index;
//
//    // Consolidar Múltiplo dentro del rango [2,7]
//    if (multiplo < 7) {
//      multiplo = multiplo + 1;
//    } else {
//      multiplo = 2;
//    }
//  }
//
//  // Calcular Dígito Verificador en base al Módulo 11
//  dvEsperado = 11 - (suma % 11);
//
//  // Casos Especiales (0 y K)
//  dv = dv == "K" ? 10 : dv;
//  dv = dv == 0 ? 11 : dv;
//
//  // Validar que el Cuerpo coincide con su Dígito Verificador
//  if (dvEsperado != dv) {
//    rut.setCustomValidity("RUT Inválido");
//
//    alerta.classList.remove('alert-info', 'alert-success');
//    alerta.classList.add('alert-danger');
//    mensaje.innerHTML = 'El RUT ingresado: ' + rut.value + ' Es <strong>INCORRECTO</strong>.';
//
//    return false;
//  } else {
//    rut.setCustomValidity("RUT Válido");
//
//    alerta.classList.remove('d-none', 'alert-danger');
//    alerta.classList.add('alert-success');
//    mensaje.innerHTML = 'El RUT ingresado: ' + rut.value + ' Es <strong>CORRECTO</strong>.';
//    return true;
//  }
//}
//
//function format (rut) {
//  rut = clean(rut)
//
//  var result = rut.slice(-4, -1) + '-' + rut.substr(rut.length - 1)
//  for (var i = 4; i < rut.length; i += 3) {
//    result = rut.slice(-3 - i, -i) + '.' + result
//  }
//
//  return result
//}
//
//function clean (rut) {
//  return typeof rut === 'string'
//    ? rut.replace(/^0+|[^0-9kK]+/g, '').toUpperCase()
//    : ''
//}





















//function checkRut(rut) {
//    // Despejar Puntos
//    var valor = rut.value.replace('.','');
//    // Despejar Guión
//    valor = valor.replace('-','');
//    
//    // Aislar Cuerpo y Dígito Verificador
//    cuerpo = valor.slice(0,-1);
//    dv = valor.slice(-1).toUpperCase();
//    
//    // Formatear RUN
//    rut.value = cuerpo + '-'+ dv
//    
//    // Si no cumple con el mínimo ej. (n.nnn.nnn)
//    if(cuerpo.length < 7) { rut.setCustomValidity("RUT Incompleto"); return false;}
//    
//    // Calcular Dígito Verificador
//    suma = 0;
//    multiplo = 2;
//    
//    // Para cada dígito del Cuerpo
//    for(i=1;i<=cuerpo.length;i++) {
//    
//        // Obtener su Producto con el Múltiplo Correspondiente
//        index = multiplo * valor.charAt(cuerpo.length - i);
//        
//        // Sumar al Contador General
//        suma = suma + index;
//        
//        // Consolidar Múltiplo dentro del rango [2,7]
//        if(multiplo < 7) { multiplo = multiplo + 1; } else { multiplo = 2; }
//  
//    }
//    
//    // Calcular Dígito Verificador en base al Módulo 11
//    dvEsperado = 11 - (suma % 11);
//    
//    // Casos Especiales (0 y K)
//    dv = (dv == 'K')?10:dv;
//    dv = (dv == 0)?11:dv;
//    
//    // Validar que el Cuerpo coincide con su Dígito Verificador
//    if(dvEsperado != dv) { rut.setCustomValidity("RUT Inválido"); return false; }
//    
//    // Si todo sale bien, eliminar errores (decretar que es válido)
//    rut.setCustomValidity('');
//}