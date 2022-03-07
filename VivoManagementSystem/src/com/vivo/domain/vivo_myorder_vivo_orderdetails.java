package com.vivo.domain;

public class vivo_myorder_vivo_orderdetails {

    private String v_myOrderNo;
    private String v_time;
    private Integer v_status;
    private String v_uid;
    private Double v_totlePrice;
    private Integer v_takeNo;
    private Integer v_goodid;
    private Integer v_count;
    private Double v_price;
    private String v_image;
    private String v_user;
    private String v_edName;
    private String v_colorName;

    public String getV_myOrderNo() {
        return v_myOrderNo;
    }

    public void setV_myOrderNo(String v_myOrderNo) {
        this.v_myOrderNo = v_myOrderNo;
    }

    public String getV_time() {
        return v_time;
    }

    public void setV_time(String v_time) {
        this.v_time = v_time;
    }

    public Integer getV_status() {
        return v_status;
    }

    public void setV_status(Integer v_status) {
        this.v_status = v_status;
    }

    public String getV_uid() {
        return v_uid;
    }

    public void setV_uid(String v_uid) {
        this.v_uid = v_uid;
    }

    public Double getV_totlePrice() {
        return v_totlePrice;
    }

    public void setV_totlePrice(Double v_totlePrice) {
        this.v_totlePrice = v_totlePrice;
    }

    public Integer getV_takeNo() {
        return v_takeNo;
    }

    public void setV_takeNo(Integer v_takeNo) {
        this.v_takeNo = v_takeNo;
    }

    public Integer getV_goodid() {
        return v_goodid;
    }

    public void setV_goodid(Integer v_goodid) {
        this.v_goodid = v_goodid;
    }

    public Integer getV_count() {
        return v_count;
    }

    public void setV_count(Integer v_count) {
        this.v_count = v_count;
    }

    public Double getV_price() {
        return v_price;
    }

    public void setV_price(Double v_price) {
        this.v_price = v_price;
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

    public String getV_edName() {
        return v_edName;
    }

    public void setV_edName(String v_edName) {
        this.v_edName = v_edName;
    }

    public String getV_colorName() {
        return v_colorName;
    }

    public void setV_colorName(String v_colorName) {
        this.v_colorName = v_colorName;
    }

    @Override
    public String toString() {
        return "vivo_myorder_vivo_orderdetails{" +
                "v_myOrderNo='" + v_myOrderNo + '\'' +
                ", v_time='" + v_time + '\'' +
                ", v_status=" + v_status +
                ", v_uid='" + v_uid + '\'' +
                ", v_totlePrice=" + v_totlePrice +
                ", v_takeNo=" + v_takeNo +
                ", v_goodid=" + v_goodid +
                ", v_count=" + v_count +
                ", v_price=" + v_price +
                ", v_image='" + v_image + '\'' +
                ", v_user='" + v_user + '\'' +
                ", v_edName='" + v_edName + '\'' +
                ", v_colorName='" + v_colorName + '\'' +
                '}';
    }
}
