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
public class Propiedades {

    private int codigo;
    private float m2;
    private int valor;
    private int arriendo;
    private int venta;
    private String fecha;
    private String direccion;
    private String descripcion;
    private String rut;

    public Propiedades() {
    }

    public Propiedades(int codigo, float m2, int valor, int arriendo, int venta, String fecha, String direccion, String descripcion, String rut) {
        this.codigo = codigo;
        this.m2 = m2;
        this.valor = valor;
        this.arriendo = arriendo;
        this.venta = venta;
        this.fecha = fecha;
        this.direccion = direccion;
        this.descripcion = descripcion;
        this.rut = rut;
    }

    /**
     * @return the codigo
     */
    public int getCodigo() {
        return codigo;
    }

    /**
     * @param codigo the codigo to set
     */
    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    /**
     * @return the m2
     */
    public float getM2() {
        return m2;
    }

    /**
     * @param m2 the m2 to set
     */
    public void setM2(float m2) {
        this.m2 = m2;
    }

    /**
     * @return the valor
     */
    public int getValor() {
        return valor;
    }

    /**
     * @param valor the valor to set
     */
    public void setValor(int valor) {
        this.valor = valor;
    }

    /**
     * @return the arriendo
     */
    public int getArriendo() {
        return arriendo;
    }

    /**
     * @param arriendo the arriendo to set
     */
    public void setArriendo(int arriendo) {
        this.arriendo = arriendo;
    }

    /**
     * @return the venta
     */
    public int getVenta() {
        return venta;
    }

    /**
     * @param venta the venta to set
     */
    public void setVenta(int venta) {
        this.venta = venta;
    }

    /**
     * @return the fecha
     */
    public String getFecha() {
        return fecha;
    }

    /**
     * @param fecha the fecha to set
     */
    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    /**
     * @return the direccion
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * @param direccion the direccion to set
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * @return the rut
     */
    public String getRut() {
        return rut;
    }

    /**
     * @param rut the rut to set
     */
    public void setRut(String rut) {
        this.rut = rut;
    }

}
