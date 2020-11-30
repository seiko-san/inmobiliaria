/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import modelo.Propiedades;
import modelo.PropiedadesConect;

/**
 *
 * @author seiko
 */
public class ControladorPropiedades {
    
    public boolean crearPropiedad(Propiedades p){
        
        PropiedadesConect prop = new PropiedadesConect();
        return prop.crear_propiedad(p);
    }
    
}
