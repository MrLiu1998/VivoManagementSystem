package com.vivo.domain;

public class vivo_good_series {
    private Integer v_sid;
    private String v_name;

    public Integer getV_sid() {
        return v_sid;
    }

    public void setV_sid(Integer v_sid) {
        this.v_sid = v_sid;
    }

    public String getV_name() {
        return v_name;
    }

    public void setV_name(String v_name) {
        this.v_name = v_name;
    }

    @Override
    public String toString() {
        return "vivo_good_series{" +
                "v_sid=" + v_sid +
                ", v_name='" + v_name + '\'' +
                '}';
    }
}
