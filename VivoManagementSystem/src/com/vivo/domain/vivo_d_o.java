package com.vivo.domain;

public class vivo_d_o {
    private Integer v_did;
    private String v_image;
    private Integer v_oid;
    private String v_oName;

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

    public Integer getV_oid() {
        return v_oid;
    }

    public void setV_oid(Integer v_oid) {
        this.v_oid = v_oid;
    }

    public String getV_oName() {
        return v_oName;
    }

    public void setV_oName(String v_oName) {
        this.v_oName = v_oName;
    }

    @Override
    public String toString() {
        return "vivo_d_o{" +
                "v_did=" + v_did +
                ", v_image='" + v_image + '\'' +
                ", v_oid=" + v_oid +
                ", v_oName='" + v_oName + '\'' +
                '}';
    }
}
