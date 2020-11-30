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
    private int tipo;
    private String fotos;
    private String descripción;
    private int cantbaños;
    private int cantdormitorios;
    private float area_total;
    private float area_construida;
    private float precio_peso;
    private float precio_uf;
    private String fecha_publicación;
    private boolean opcion_visita;
    private boolean bodega;
    private boolean estacionamiento;
    private boolean logia;
    private boolean cocina_amoblada;
    private boolean antejardin;
     private boolean Patio_trasero;
    private boolean piscina;

    public Propiedades() {
    }

    public Propiedades(int codigo, int tipo, String fotos, String descripción, int cantbaños, int cantdormitorios, float area_total, float area_construida, float precio_peso, float precio_uf, String fecha_publicación, boolean opcion_visita, boolean bodega, boolean estacionamiento, boolean logia, boolean cocina_amoblada, boolean antejardin, boolean Patio_trasero, boolean piscina) {
        this.codigo = codigo;
        this.tipo = tipo;
        this.fotos = fotos;
        this.descripción = descripción;
        this.cantbaños = cantbaños;
        this.cantdormitorios = cantdormitorios;
        this.area_total = area_total;
        this.area_construida = area_construida;
        this.precio_peso = precio_peso;
        this.precio_uf = precio_uf;
        this.fecha_publicación = fecha_publicación;
        this.opcion_visita = opcion_visita;
        this.bodega = bodega;
        this.estacionamiento = estacionamiento;
        this.logia = logia;
        this.cocina_amoblada = cocina_amoblada;
        this.antejardin = antejardin;
        this.Patio_trasero = Patio_trasero;
        this.piscina = piscina;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public String getFotos() {
        return fotos;
    }

    public void setFotos(String fotos) {
        this.fotos = fotos;
    }

    public String getDescripción() {
        return descripción;
    }

    public void setDescripción(String descripción) {
        this.descripción = descripción;
    }

    public int getCantbaños() {
        return cantbaños;
    }

    public void setCantbaños(int cantbaños) {
        this.cantbaños = cantbaños;
    }

    public int getCantdormitorios() {
        return cantdormitorios;
    }

    public void setCantdormitorios(int cantdormitorios) {
        this.cantdormitorios = cantdormitorios;
    }

    public float getArea_total() {
        return area_total;
    }

    public void setArea_total(float area_total) {
        this.area_total = area_total;
    }

    public float getArea_construida() {
        return area_construida;
    }

    public void setArea_construida(float area_construida) {
        this.area_construida = area_construida;
    }

    public float getPrecio_peso() {
        return precio_peso;
    }

    public void setPrecio_peso(float precio_peso) {
        this.precio_peso = precio_peso;
    }

    public float getPrecio_uf() {
        return precio_uf;
    }

    public void setPrecio_uf(float precio_uf) {
        this.precio_uf = precio_uf;
    }

    public String getFecha_publicación() {
        return fecha_publicación;
    }

    public void setFecha_publicación(String fecha_publicación) {
        this.fecha_publicación = fecha_publicación;
    }

    public boolean isOpcion_visita() {
        return opcion_visita;
    }

    public void setOpcion_visita(boolean opcion_visita) {
        this.opcion_visita = opcion_visita;
    }

    public boolean isBodega() {
        return bodega;
    }

    public void setBodega(boolean bodega) {
        this.bodega = bodega;
    }

    public boolean isEstacionamiento() {
        return estacionamiento;
    }

    public void setEstacionamiento(boolean estacionamiento) {
        this.estacionamiento = estacionamiento;
    }

    public boolean isLogia() {
        return logia;
    }

    public void setLogia(boolean logia) {
        this.logia = logia;
    }

    public boolean isCocina_amoblada() {
        return cocina_amoblada;
    }

    public void setCocina_amoblada(boolean cocina_amoblada) {
        this.cocina_amoblada = cocina_amoblada;
    }

    public boolean isAntejardin() {
        return antejardin;
    }

    public void setAntejardin(boolean antejardin) {
        this.antejardin = antejardin;
    }

    public boolean isPatio_trasero() {
        return Patio_trasero;
    }

    public void setPatio_trasero(boolean Patio_trasero) {
        this.Patio_trasero = Patio_trasero;
    }

    public boolean isPiscina() {
        return piscina;
    }

    public void setPiscina(boolean piscina) {
        this.piscina = piscina;
    }

   

}