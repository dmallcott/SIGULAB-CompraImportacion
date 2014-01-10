/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.Documentos.EspecificacionTecnica;

/**
 *
 * @author daniel
 */
public class Item {
    private int item;
    private String caracteristicas;
    private int cantidad;

    public int getItem() {
        return item;
    }

    public void setItem(int item) {
        this.item = item;
    }


    public String getCaracteristicas() {
        return caracteristicas;
    }

    public void setCaracteristicas(String caracteristicas) {
        this.caracteristicas = caracteristicas;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    @Override
    public String toString() {
        return item + "|" + caracteristicas + "|" + cantidad + "/";
    }

    
    
}
