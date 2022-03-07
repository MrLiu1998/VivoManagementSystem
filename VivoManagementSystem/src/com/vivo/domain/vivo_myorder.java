package com.vivo.domain;

public class vivo_myorder {
    private String v_myOrderNo;
    private String v_time;
    private Integer v_takeNo;
    private int v_status;
    private String v_uid;
    private double v_totlePrice;

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

    public Integer getV_takeNo() {
        return v_takeNo;
    }

    public void setV_takeNo(Integer v_takeNo) {
        this.v_takeNo = v_takeNo;
    }

    public int getV_status() {
        return v_status;
    }

    public void setV_status(int v_status) {
        this.v_status = v_status;
    }

    public String getV_uid() {
        return v_uid;
    }

    public void setV_uid(String v_uid) {
        this.v_uid = v_uid;
    }

    public double getV_totlePrice() {
        return v_totlePrice;
    }

    public void setV_totlePrice(double v_totlePrice) {
        this.v_totlePrice = v_totlePrice;
    }

    @Override
    public String toString() {
        return "vivo_myorder{" +
                "v_myOrderNo=" + v_myOrderNo +
                ", v_time=" + v_time +
                ", v_takeNo=" + v_takeNo +
                ", v_status=" + v_status +
                ", v_uid='" + v_uid + '\'' +
                ", v_totlePrice=" + v_totlePrice +
                '}';
    }
}
