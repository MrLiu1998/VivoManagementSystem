package com.vivo.domain;

public class vivo_goods {
    private Integer v_gid;
    private String v_image;
    private String v_user;
    private String v_gparticulars;
    private String desc;
    private Integer v_host;
    private double v_price;
    private Integer v_inventory;
    private Integer v_sid;
    private Integer v_editionNo;
    private Integer v_colorNo;
    private Integer v_status;
    private String v_name; /* ÏµÁÐÃû³Æ */

    public Integer getV_gid() {
        return v_gid;
    }

    public void setV_gid(Integer v_gid) {
        this.v_gid = v_gid;
    }

    public String getV_image() {
        return v_image;
    }

    public void setV_image(String v_image) {
        this.v_image = v_image;
    }

    public String getV_user() {
        return v_user;
    }

    public void setV_user(String v_user) {
        this.v_user = v_user;
    }

    public String getV_gparticulars() {
        return v_gparticulars;
    }

    public void setV_gparticulars(String v_gparticulars) {
        this.v_gparticulars = v_gparticulars;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Integer getV_host() {
        return v_host;
    }

    public void setV_host(Integer v_host) {
        this.v_host = v_host;
    }

    public double getV_price() {
        return v_price;
    }

    public void setV_price(double v_price) {
        this.v_price = v_price;
    }

    public Integer getV_inventory() {
        return v_inventory;
    }

    public void setV_inventory(Integer v_inventory) {
        this.v_inventory = v_inventory;
    }

    public Integer getV_sid() {
        return v_sid;
    }

    public void setV_sid(Integer v_sid) {
        this.v_sid = v_sid;
    }

    public Integer getV_editionNo() {
        return v_editionNo;
    }

    public void setV_editionNo(Integer v_editionNo) {
        this.v_editionNo = v_editionNo;
    }

    public Integer getV_colorNo() {
        return v_colorNo;
    }

    public void setV_colorNo(Integer v_colorNo) {
        this.v_colorNo = v_colorNo;
    }

    public Integer getV_status() {
        return v_status;
    }

    public void setV_status(Integer v_status) {
        this.v_status = v_status;
    }

    public String getV_name() {
        return v_name;
    }

    public void setV_name(String v_name) {
        this.v_name = v_name;
    }

    @Override
    public String toString() {
        return "vivo_goods{" +
                "v_gid=" + v_gid +
                ", v_image='" + v_image + '\'' +
                ", v_user='" + v_user + '\'' +
                ", v_gparticulars='" + v_gparticulars + '\'' +
                ", desc='" + desc + '\'' +
                ", v_host=" + v_host +
                ", v_price=" + v_price +
                ", v_inventory=" + v_inventory +
                ", v_sid=" + v_sid +
                ", v_editionNo=" + v_editionNo +
                ", v_colorNo=" + v_colorNo +
                ", v_status=" + v_status +
                ", v_name='" + v_name + '\'' +
                '}';
    }
}
