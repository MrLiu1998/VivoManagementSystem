package com.vivo.domain;

public class vivo_admin {
	private	int v_aid;
	private	String	v_aname;
	private	String	v_apassword;

	public int getV_aid() {
		return v_aid;
	}

	public void setV_aid(int v_aid) {
		this.v_aid = v_aid;
	}

	public String getV_aname() {
		return v_aname;
	}

	public void setV_aname(String v_aname) {
		this.v_aname = v_aname;
	}

	public String getV_apassword() {
		return v_apassword;
	}

	public void setV_apassword(String v_apassword) {
		this.v_apassword = v_apassword;
	}

	@Override
	public String toString() {
		return "vivo_admin{" +
				"v_aid=" + v_aid +
				", v_aname='" + v_aname + '\'' +
				", v_apassword='" + v_apassword + '\'' +
				'}';
	}

}
