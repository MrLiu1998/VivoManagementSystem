package com.vivo.domain;

public class vivo_GoodsState {
    private Integer v_gsid;
    private String v_gsName;

    public Integer getV_gsid() {
        return v_gsid;
    }

    public void setV_gsid(Integer v_gsid) {
        this.v_gsid = v_gsid;
    }

    public String getV_gsName() {
        return v_gsName;
    }

    public void setV_gsName(String v_gsName) {
        this.v_gsName = v_gsName;
    }

    @Override
    public String toString() {
        return "vivo_GoodsState{" +
                "v_gsid=" + v_gsid +
                ", v_gsName='" + v_gsName + '\'' +
                '}';
    }
}
