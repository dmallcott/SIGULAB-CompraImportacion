/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.Documentos.InformeRecomendacion;

/**
 *
 * @author daniel
 */
public class Item {
    private int numero;
    private String empresa;
    private String items;
    private Boolean opcion1;
    private Boolean opcion2;
    private Boolean opcion3;
    private Boolean opcion4;
    private Boolean opcion5;
    private Boolean opcion6;
    private Boolean opcion7;
    private Boolean opcion8;
    private Boolean opcion9;

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    public String getItems() {
        return items;
    }

    public void setItems(String items) {
        this.items = items;
    }
    
    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public Boolean getOpcion1() {
        return opcion1;
    }

    public void setOpcion1(Boolean opcion1) {
        this.opcion1 = opcion1;
    }

    public Boolean getOpcion2() {
        return opcion2;
    }

    public void setOpcion2(Boolean opcion2) {
        this.opcion2 = opcion2;
    }

    public Boolean getOpcion3() {
        return opcion3;
    }

    public void setOpcion3(Boolean opcion3) {
        this.opcion3 = opcion3;
    }

    public Boolean getOpcion4() {
        return opcion4;
    }

    public void setOpcion4(Boolean opcion4) {
        this.opcion4 = opcion4;
    }

    public Boolean getOpcion5() {
        return opcion5;
    }

    public void setOpcion5(Boolean opcion5) {
        this.opcion5 = opcion5;
    }

    public Boolean getOpcion6() {
        return opcion6;
    }

    public void setOpcion6(Boolean opcion6) {
        this.opcion6 = opcion6;
    }

    public Boolean getOpcion7() {
        return opcion7;
    }

    public void setOpcion7(Boolean opcion7) {
        this.opcion7 = opcion7;
    }

    public Boolean getOpcion8() {
        return opcion8;
    }

    public void setOpcion8(Boolean opcion8) {
        this.opcion8 = opcion8;
    }

    public Boolean getOpcion9() {
        return opcion9;
    }

    public void setOpcion9(Boolean opcion9) {
        this.opcion9 = opcion9;
    }

    @Override
    public String toString() {
        return opcion1 + "|" + opcion2 + "|" + opcion3 + "|" + opcion4 + "|" + opcion5 + "|" + opcion6 + "|" + opcion7 + "|" + opcion8 + "|" + opcion9 + "/";
    }
}
