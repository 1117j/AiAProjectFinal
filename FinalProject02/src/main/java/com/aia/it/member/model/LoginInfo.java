package com.aia.it.member.model;

public class LoginInfo {

	private int uidx;

	private String uid;
	private String uname;
	private String uphonenum;
	private String photo;
	private char ukakao; 
	

	public LoginInfo() {
	}

	public LoginInfo(String uid, String uname, String uphonenum, String photo, char ukakao) {
		this.uid = uid;
		this.uname = uname;
		this.uphonenum = uphonenum;
		this.photo = photo;
		this.ukakao = ukakao;
	}

	public LoginInfo(int uidx, String uid, String uname, String uphonenum, String photo, char ukakao) {
		this.uidx = uidx;
		this.uid = uid;
		this.uname = uname;
		this.uphonenum = uphonenum;
		this.photo = photo;
		this.ukakao = ukakao;
	}

	public char getUkakao() {
		return ukakao;
	}

	public void setUkakao(char ukakao) {
		this.ukakao = ukakao;
	}

	public String getUid() {
		return uid;
	}

	public String getUname() {
		return uname;
	}

	public String getPhoto() {
		return photo;
	}

	
	@Override
	public String toString() {
		return "LoginInfo [uidx=" + uidx + ", uid=" + uid + ", uname=" + uname + ", uphonenum=" + uphonenum + ", photo="
				+ photo + ", ukakao=" + ukakao + "]";
	}

	public int getUidx() {
		return uidx;
	}

	public void setUidx(int uidx) {
		this.uidx = uidx;
	}

	public String getUphonenum() {
		return uphonenum;
	}

	public void setUphonenum(String uphonenum) {
		this.uphonenum = uphonenum;
	}

}
