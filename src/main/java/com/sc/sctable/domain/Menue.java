package com.sc.sctable.domain;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Blob;

@Entity
@Table(name="PRODUCT_TB")
public class Menue {
    @Id
    private String PRODUCT_ID;
    private String USER_ID;
    private String CATEGORI_ID;
    private String MENU_ID;
    private String MENU_DESCRIPTION;
    private Double MENU_PRICE;
    private Blob MENU_IMAGE;
    private int MENU_STATE;

    public String getPRODUCT_ID() {
        return PRODUCT_ID;
    }

    public void setPRODUCT_ID(String PRODUCT_ID) {
        this.PRODUCT_ID = PRODUCT_ID;
    }

    public String getUSER_ID() {
        return USER_ID;
    }

    public void setUSER_ID(String USER_ID) {
        this.USER_ID = USER_ID;
    }

    public String getCATEGORI_ID() {
        return CATEGORI_ID;
    }

    public void setCATEGORI_ID(String CATEGORI_ID) {
        this.CATEGORI_ID = CATEGORI_ID;
    }

    public String getMENU_ID() {
        return MENU_ID;
    }

    public void setMENU_ID(String MENU_ID) {
        this.MENU_ID = MENU_ID;
    }

    public String getMENU_DESCRIPTION() {
        return MENU_DESCRIPTION;
    }

    public void setMENU_DESCRIPTION(String MENU_DESCRIPTION) {
        this.MENU_DESCRIPTION = MENU_DESCRIPTION;
    }

    public Double getMENU_PRICE() {
        return MENU_PRICE;
    }

    public void setMENU_PRICE(Double MENU_PRICE) {
        this.MENU_PRICE = MENU_PRICE;
    }

    public Blob getMENU_IMAGE() {
        return MENU_IMAGE;
    }

    public void setMENU_IMAGE(Blob MENU_IMAGE) {
        this.MENU_IMAGE = MENU_IMAGE;
    }

    public int getMENU_STATE() {
        return MENU_STATE;
    }

    public void setMENU_STATE(int MENU_STATE) {
        this.MENU_STATE = MENU_STATE;
    }

}
