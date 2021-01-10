package com.hniu.domain;

import java.io.Serializable;

public class GoodType implements Serializable {
    private  Integer tID;
    private  String tName;

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
                '}';
    }
}
