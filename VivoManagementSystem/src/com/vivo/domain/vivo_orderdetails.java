package com.vivo.domain;

public class vivo_orderdetails {
    private Integer v_orderNo;
    private String v_myOrderNo;
    private Integer v_goodId;
    private Integer v_count;
    private double v_price;
    private Integer v_editionNo;
    private Integer v_colorNo;

    public Integer getV_orderNo() {
        return v_orderNo;
    }

    public void setV_orderNo(Integer v_orderNo) {
        this.v_orderNo = v_orderNo;
    }

    public String getV_myOrderNo() {
        return v_myOrderNo;
    }

    public void setV_myOrderNo(String v_myOrderNo) {
        this.v_myOrderNo = v_myOrderNo;
    }

    public Integer getV_goodId() {
        return v_goodId;
    }

    public void setV_goodId(Integer v_goodId) {
        this.v_goodId = v_goodId;
    }

    public Integer getV_count() {
        return v_count;
    }

    public void setV_count(Integer v_count) {
        this.v_count = v_count;
    }

    public double getV_price() {
        return v_price;
    }

    public void setV_price(double v_price) {
        this.v_price = v_price;
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

    @Override
    public String toString() {
        return "vivo_orderdetails{" +
                "v_orderNo=" + v_orderNo +
                ", v_myOrderNo=" + v_myOrderNo +
                ", v_goodId=" + v_goodId +
                ", v_count=" + v_count +
                ", v_price=" + v_price +
                ", v_editionNo=" + v_editionNo +
                ", v_colorNo=" + v_colorNo +
                '}';
    }
}
