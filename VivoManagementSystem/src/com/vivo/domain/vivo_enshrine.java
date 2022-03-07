package com.vivo.domain;

import java.sql.Date;

public class vivo_enshrine {
	private	int v_eid;
	private	int v_gid;
	private	Date v_time;
	private	String v_uid;

	public int getV_eid() {
		return v_eid;
	}

	public void setV_eid(int v_eid) {
		this.v_eid = v_eid;
	}

	public int getV_gid() {
		return v_gid;
	}

	public void setV_gid(int v_gid) {
		this.v_gid = v_gid;
	}

	public Date getV_time() {
		return v_time;
	}

	public void setV_time(Date v_time) {
		this.v_time = v_time;
	}

	public String getV_uid() {
		return v_uid;
	}

	public void setV_uid(String v_uid) {
		this.v_uid = v_uid;
	}

	@Override
	public String toString() {
		return "vivo_enshrine{" +
				"v_eid=" + v_eid +
				", v_gid=" + v_gid +
				", v_time=" + v_time +
				", v_uid='" + v_uid + '\'' +
				'}';
	}
}
