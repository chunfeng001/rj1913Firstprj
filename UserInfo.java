package com.hniu.domain;

import java.io.Serializable;
import java.util.Date;

public class UserInfo implements Serializable {
    private Integer uID;
    private String uName;
    private String uPwd;
    private char uSex;
    private Date uBirthday;
    private String uPhone;
    private String  uEmail;
    private String  uQQ;
    private String uAddress;

    public Integer getuID() {
        return uID;
    }

    public void setuID(Integer uID) {
        this.uID = uID;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuPwd() {
        return uPwd;
    }

    public void setuPwd(String uPwd) {
        this.uPwd = uPwd;
    }

    public char getuSex() {
        return uSex;
    }

    public void setuSex(char uSex) {
        this.uSex = uSex;
    }

    public Date getuBirthday() {
        return uBirthday;
    }

    public void setuBirthday(Date uBirthday) {
        this.uBirthday = uBirthday;
    }

    public String getuPhone() {
        return uPhone;
    }

    public void setuPhone(String uPhone) {
        this.uPhone = uPhone;
    }

    public String getuEmail() {
        return uEmail;
    }

    public void setuEmail(String uEmail) {
        this.uEmail = uEmail;
    }

    public String getuQQ() {
        return uQQ;
    }

    public void setuQQ(String uQQ) {
        this.uQQ = uQQ;
    }

    public String getAddress() {
        return uAddress;
    }

    public void setAddress(String address) {
        this.uAddress = address;
    }

    @Override
    public String toString() {
        return "User{" +
                "uID=" + uID +
                ", uName='" + uName + '\'' +
                ", uPwd='" + uPwd + '\'' +
                ", uSex=" + uSex +
                ", uBirthday=" + uBirthday +
                ", uPhone='" + uPhone + '\'' +
                ", uEmail='" + uEmail + '\'' +
                ", uQQ='" + uQQ + '\'' +
                ", address='" + uAddress + '\'' +
                '}';
    }
}
