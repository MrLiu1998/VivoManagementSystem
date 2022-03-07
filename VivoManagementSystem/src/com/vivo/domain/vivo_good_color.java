package com.vivo.domain;

public class vivo_good_color {
	private	int v_cid;
	private	String v_name;
	private	int v_colorNo;

	public int getV_cid() {
		return v_cid;
	}

	public void setV_cid(int v_cid) {
		this.v_cid = v_cid;
	}

	public String getV_name() {
		return v_name;
	}

	public void setV_name(String v_name) {
		this.v_name = v_name;
	}

	public int getV_colorNo() {
		return v_colorNo;
	}

	public void setV_colorNo(int v_colorNo) {
		this.v_colorNo = v_colorNo;
	}

	@Override
	public String toString() {
		return "vivo_good_color{" +
				"v_cid=" + v_cid +
				", v_name='" + v_name + '\'' +
				", v_colorNo=" + v_colorNo +
				'}';
	}
}
