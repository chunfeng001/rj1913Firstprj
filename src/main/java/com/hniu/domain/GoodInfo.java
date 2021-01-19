package com.hniu.domain;

import com.hniu.dao.IUserDao;

import java.io.Serializable;
import java.util.Date;

public class GoodInfo implements Serializable {
    private Integer gdID;
    private Integer tID;
    private GoodType goodtype;
    private  String gdName;
    private  Double gdPrice;
    private  Integer gdQuantity;
    private  Integer gdSaleQty;
    private  String gdCity;
    private  String gdImage;
    private  String gdInfo;
    private  Date gdAddTime;
    private  String gdColor;
    private  String gdMemoryType;
    private String gdImagemini;

    public String getGdImagemini() {
        return gdImagemini;
    }

    public void setGdImagemini(String gdImagemini) {
        this.gdImagemini = gdImagemini;
    }

    public String getGdColor() {
        return gdColor;
    }

    public String getGdMemoryType() {
        return gdMemoryType;
    }

    public void setGdColor(String gdColor) {
        this.gdColor = gdColor;
    }

    public void setGdMemoryType(String gdMemoryType) {
        this.gdMemoryType = gdMemoryType;
    }

    public Integer gettID() {
        return tID;
    }

    public void settID(Integer tID) {
        this.tID = tID;
    }

    public Integer getGdID() {
        return gdID;
    }

    public void setGdID(Integer gdID) {
        this.gdID = gdID;
    }

    public GoodType getGoodtype() {
        return goodtype;
    }

    public void setGoodtype(GoodType goodtype) {
        this.goodtype = goodtype;
    }

    public String getGdName() {
        return gdName;
    }

    public void setGdName(String gdName) {
        this.gdName = gdName;
    }

    public Double getGdPrice() {
        return gdPrice;
    }

    public void setGdPrice(Double gdPrice) {
        this.gdPrice = gdPrice;
    }

    public Integer getGdQuantity() {
        return gdQuantity;
    }

    public void setGdQuantity(Integer gdQuantity) {
        this.gdQuantity = gdQuantity;
    }

    public Integer getGdSaleQty() {
        return gdSaleQty;
    }

    public void setGdSaleQty(Integer gdSaleQty) {
        this.gdSaleQty = gdSaleQty;
    }

    public String getGdCity() {
        return gdCity;
    }

    public void setGdCity(String gdCity) {
        this.gdCity = gdCity;
    }

    public String getGdImage() {
        return gdImage;
    }

    public void setGdImage(String gdImage) {
        this.gdImage = gdImage;
    }

    public String getGdInfo() {
        return gdInfo;
    }

    public void setGdInfo(String gdInfo) {
        this.gdInfo = gdInfo;
    }

    public Date getGdAddTime() {
        return gdAddTime;
    }

    public void setGdAddTime(Date gdAddTime) {
        this.gdAddTime = gdAddTime;
    }

    @Override
    public String toString() {
        return "GoodInfo{" +
                "gdID=" + gdID +
                ", tID=" + tID +
                ", goodtype=" + goodtype +
                ", gdName='" + gdName + '\'' +
                ", gdPrice=" + gdPrice +
                ", gdQuantity=" + gdQuantity +
                ", gdSaleQty=" + gdSaleQty +
                ", gdCity='" + gdCity + '\'' +
                ", gdImage='" + gdImage + '\'' +
                ", gdInfo='" + gdInfo + '\'' +
                ", gdAddTime=" + gdAddTime +
                ", gdColor='" + gdColor + '\'' +
                ", gdMemoryType='" + gdMemoryType + '\'' +
                ", gdImagemini='" + gdImagemini + '\'' +
                '}';
    }
}
