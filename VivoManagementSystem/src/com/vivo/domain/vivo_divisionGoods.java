package com.vivo.domain;

public class vivo_divisionGoods {
    private Integer v_did;
    private String v_image;
    private Integer v_sid;

    public Integer getV_did() {
        return v_did;
    }

    public void setV_did(Integer v_did) {
        this.v_did = v_did;
    }

    public String getV_image() {
        return v_image;
    }

    public void setV_image(String v_image) {
        this.v_image = v_image;
    }

    public Integer getV_sid() {
        return v_sid;
    }

    public void setV_sid(Integer v_sid) {
        this.v_sid = v_sid;
    }

    @Override
    public String toString() {
        return "vivo_divisionGoods{" +
                "v_did=" + v_did +
                ", v_image='" + v_image + '\'' +
                ", v_sid=" + v_sid +
                '}';
    }
}
