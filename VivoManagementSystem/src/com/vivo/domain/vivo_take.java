package com.vivo.domain;

public class vivo_take {
	private	int v_tid;
	private	String v_consignee;
	private	String v_phone;
	private	String v_address;
	private	String v_receivingArea;
	private	String v_uid;
	public int getV_tid() {
		return v_tid;
	}
	public void setV_tid(int v_tid) {
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

	@Override
	public String toString() {
		return "vivo_take{" +
				"v_tid=" + v_tid +
				", v_consignee='" + v_consignee + '\'' +
				", v_phone='" + v_phone + '\'' +
				", v_address='" + v_address + '\'' +
				", v_receivingArea='" + v_receivingArea + '\'' +
				", v_uid='" + v_uid + '\'' +
				'}';
	}
}
