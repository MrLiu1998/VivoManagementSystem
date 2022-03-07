package com.vivo.domain;

public class vivo_user {

    private String v_uid;
    private String v_user;
    private String v_phone;
    private String v_password;
    private String v_Email;
    private String v_headPortrait;
    private String v_sex;
    private String v_birthday;
    private String v_address;

    public String getV_uid() {
        return v_uid;
    }

    public void setV_uid(String v_uid) {
        this.v_uid = v_uid;
    }

    public String getV_user() {
        return v_user;
    }

    public void setV_user(String v_user) {
        this.v_user = v_user;
    }

    public String getV_phone() {
        return v_phone;
    }

    public void setV_phone(String v_phone) {
        this.v_phone = v_phone;
    }

    public String getV_password() {
        return v_password;
    }

    public void setV_password(String v_password) {
        this.v_password = v_password;
    }

    public String getV_Email() {
        return v_Email;
    }

    public void setV_Email(String v_Email) {
        this.v_Email = v_Email;
    }

    public String getV_headPortrait() {
        return v_headPortrait;
    }

    public void setV_headPortrait(String v_headPortrait) {
        this.v_headPortrait = v_headPortrait;
    }

    public String getV_sex() {
        return v_sex;
    }

    public void setV_sex(String v_sex) {
        this.v_sex = v_sex;
    }

    public String getV_birthday() {
        return v_birthday;
    }

    public void setV_birthday(String v_birthday) {
        this.v_birthday = v_birthday;
    }

    public String getV_address() {
        return v_address;
    }

    public void setV_address(String v_address) {
        this.v_address = v_address;
    }

    @Override
    public String toString() {
        return "vivo_user{" +
                "v_uid='" + v_uid + '\'' +
                ", v_user='" + v_user + '\'' +
                ", v_phone=" + v_phone +
                ", v_password='" + v_password + '\'' +
                ", v_Email='" + v_Email + '\'' +
                ", v_headPortrait='" + v_headPortrait + '\'' +
                ", v_sex='" + v_sex + '\'' +
                ", v_birthday='" + v_birthday + '\'' +
                ", v_address='" + v_address + '\'' +
                '}';
    }
}
