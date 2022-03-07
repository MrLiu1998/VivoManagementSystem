package com.vivo.domain;

public class vivo_myorder_vivoOrder {

    private String v_myOrderNo;
    private String v_time;
    private Integer v_status;
    private String v_consignee;
    private String v_phone;
    private String v_address;
    private String v_receivingArea;
    private Integer v_totlePrice;

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

    public String getV_consignee() {
        return v_consignee;
    }

    public void setV_consignee(String v_consignee) {
        this.v_consignee = v_consignee;
    }

    public String getV_phone() {
        return v_phone;
    }

    public void setV_phone(String v_phone) {
        this.v_phone = v_phone;
    }

    public String getV_address() {
        return v_address;
    }

    public void setV_address(String v_address) {
        this.v_address = v_address;
    }

    public String getV_receivingArea() {
        return v_receivingArea;
    }

    public void setV_receivingArea(String v_receivingArea) {
        this.v_receivingArea = v_receivingArea;
    }

    public Integer getV_totlePrice() {
        return v_totlePrice;
    }

    public void setV_totlePrice(Integer v_totlePrice) {
        this.v_totlePrice = v_totlePrice;
    }

    @Override
    public String toString() {
        return "vivo_myorder_vivoOrder{" +
                "v_myOrderNo='" + v_myOrderNo + '\'' +
                ", v_time='" + v_time + '\'' +
                ", v_status=" + v_status +
                ", v_consignee='" + v_consignee + '\'' +
                ", v_phone='" + v_phone + '\'' +
                ", v_address='" + v_address + '\'' +
                ", v_receivingArea='" + v_receivingArea + '\'' +
                ", v_totlePrice=" + v_totlePrice +
                '}';
    }
}
