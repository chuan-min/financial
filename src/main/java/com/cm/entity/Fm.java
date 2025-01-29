package com.cm.entity;

public class Fm {
    private Integer fmno;
    private String fmname;
    private String fmpwd;
    private Integer fmsex;
    private byte[] fmimg;


    public Fm() {
    }

    public Fm(Integer fmno, String fmname, String fmpwd, Integer fmsex, byte[] fmimg) {
        this.fmno = fmno;
        this.fmname = fmname;
        this.fmpwd = fmpwd;
        this.fmsex = fmsex;
        this.fmimg = fmimg;
    }

    @Override
    public String toString() {
        return "Fm{" +
                "fmno=" + fmno +
                ", fmname='" + fmname + '\'' +
                ", fmpwd='" + fmpwd + '\'' +
                ", sex=" + fmsex +
                ", fmimg=" + fmimg +
                '}';
    }

    public Integer getFmno() {
        return fmno;
    }

    public void setFmno(Integer fmno) {
        this.fmno = fmno;
    }

    public String getFmname() {
        return fmname;
    }

    public void setFmname(String fmname) {
        this.fmname = fmname;
    }

    public String getFmpwd() {
        return fmpwd;
    }

    public void setFmpwd(String fmpwd) {
        this.fmpwd = fmpwd;
    }

    public Integer getFmsex() {
        return fmsex;
    }

    public void setFmsex(Integer fmsex) {
        this.fmsex = fmsex;
    }

    public byte[] getFmimg() {
        return fmimg;
    }

    public void setFmimg(byte[] fmimg) {
        this.fmimg = fmimg;
    }
}
