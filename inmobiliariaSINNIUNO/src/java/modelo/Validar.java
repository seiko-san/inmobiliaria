/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author seiko
 */
public interface Validar {
    
    public int validar(Usuario_Free usu);
    public Usuario_Free listarID(String rut);
}
