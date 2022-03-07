package com.vivo.domain;

import lombok.Getter;
import lombok.Setter;

@Setter@Getter
public class vivo_myorder_vivo_shoppingcart {

    private String v_myOrderNo;
    private String v_time;
    private double v_totlePrice;
    private Integer v_status; // 状态
    private Integer v_takeNo;// 收货地址id

    private	Integer v_tid;
    private	String v_consignee;
    private	String v_phone;
    private	String v_address;
    private	String v_receivingArea;

    private	String v_uid;
    private Integer v_cid;
    private String v_image;
    private String v_user;
    private String v_gparticulars;
    private Integer v_price;
    private Integer v_cprice;
    private String v_setMeal;
    private Integer v_quanity;
    private String v_colorName;
    private String v_edName;
    /* 添加字段需要 */
    private Integer v_gid;
    private Integer v_editionNo;
    private Integer v_colorNo;

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

    public double getV_totlePrice() {
        return v_totlePrice;
    }

    public void setV_totlePrice(double v_totlePrice) {
        this.v_totlePrice = v_totlePrice;
    }

    public Integer getV_status() {
        return v_status;
    }

    public void setV_status(Integer v_status) {
        this.v_status = v_status;
    }

    public Integer getV_takeNo() {
        return v_takeNo;
    }

    public void setV_takeNo(Integer v_takeNo) {
        this.v_takeNo = v_takeNo;
    }

    public Integer getV_tid() {
        return v_tid;
    }

    public void setV_tid(Integer v_tid) {
        this.v_tid = v_tid;
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

    public String getV_uid() {
        return v_uid;
    }

    public void setV_uid(String v_uid) {
        this.v_uid = v_uid;
    }

    public Integer getV_cid() {
        return v_cid;
    }

    public void setV_cid(Integer v_cid) {
        this.v_cid = v_cid;
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

    public Integer getV_price() {
        return v_price;
    }

    public void setV_price(Integer v_price) {
        this.v_price = v_price;
    }

    public Integer getV_cprice() {
        return v_cprice;
    }

    public void setV_cprice(Integer v_cprice) {
        this.v_cprice = v_cprice;
    }

    public String getV_setMeal() {
        return v_setMeal;
    }

    public void setV_setMeal(String v_setMeal) {
        this.v_setMeal = v_setMeal;
    }

    public Integer getV_quanity() {
        return v_quanity;
    }

    public void setV_quanity(Integer v_quanity) {
        this.v_quanity = v_quanity;
    }

    public String getV_colorName() {
        return v_colorName;
    }

    public void setV_colorName(String v_colorName) {
        this.v_colorName = v_colorName;
    }

    public String getV_edName() {
        return v_edName;
    }

    public void setV_edName(String v_edName) {
        this.v_edName = v_edName;
    }

    public Integer getV_gid() {
        return v_gid;
    }

    public void setV_gid(Integer v_gid) {
        this.v_gid = v_gid;
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
        return "vivo_myorder_vivo_shoppingcart{" +
                "v_myOrderNo=" + v_myOrderNo +
                ", v_time='" + v_time + '\'' +
                ", v_totlePrice=" + v_totlePrice +
                ", v_status=" + v_status +
                ", v_takeNo=" + v_takeNo +
                ", v_tid=" + v_tid +
                ", v_consignee='" + v_consignee + '\'' +
                ", v_phone='" + v_phone + '\'' +
                ", v_address='" + v_address + '\'' +
                ", v_receivingArea='" + v_receivingArea + '\'' +
                ", v_uid='" + v_uid + '\'' +
                ", v_cid=" + v_cid +
                ", v_image='" + v_image + '\'' +
                ", v_user='" + v_user + '\'' +
                ", v_gparticulars='" + v_gparticulars + '\'' +
                ", v_price=" + v_price +
                ", v_cprice=" + v_cprice +
                ", v_setMeal='" + v_setMeal + '\'' +
                ", v_quanity=" + v_quanity +
                ", v_colorName='" + v_colorName + '\'' +
                ", v_edName='" + v_edName + '\'' +
                ", v_gid=" + v_gid +
                ", v_editionNo=" + v_editionNo +
                ", v_colorNo=" + v_colorNo +
                '}';
    }
}
