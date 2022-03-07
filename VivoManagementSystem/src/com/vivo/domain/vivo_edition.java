package com.vivo.domain;

public class vivo_edition {
	private	int	v_eid;
	private	String v_name;
	private	String v_editionNo;

	public int getV_eid() {
		return v_eid;
	}

	public void setV_eid(int v_eid) {
		this.v_eid = v_eid;
	}

	public String getV_name() {
		return v_name;
	}

	public void setV_name(String v_name) {
		this.v_name = v_name;
	}

	public String getV_editionNo() {
		return v_editionNo;
	}

	public void setV_editionNo(String v_editionNo) {
		this.v_editionNo = v_editionNo;
	}

	@Override
	public String toString() {
		return "vivo_edition{" +
				"v_eid=" + v_eid +
				", v_name='" + v_name + '\'' +
				", v_editionNo='" + v_editionNo + '\'' +
				'}';
	}
}
