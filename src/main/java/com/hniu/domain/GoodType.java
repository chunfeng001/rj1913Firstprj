package com.hniu.domain;

import java.io.Serializable;
import java.util.List;

public class GoodType implements Serializable {
    private  Integer tID;
    private  String tName;
   private List<GoodInfo> goodinfos;

    public List<GoodInfo> getGoodinfos() {
        return goodinfos;
    }

    public void setGoodinfos(List<GoodInfo> goodinfos) {
        this.goodinfos = goodinfos;
    }

    public Integer gettID() {
        return tID;
    }

    public void settID(Integer tID) {
        this.tID = tID;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName;
    }

    @Override
    public String toString() {
        return "GoodType{" +
                "tID=" + tID +
                ", tName='" + tName + '\'' +
                ", goodinfos=" + goodinfos +
                '}';
    }
}
