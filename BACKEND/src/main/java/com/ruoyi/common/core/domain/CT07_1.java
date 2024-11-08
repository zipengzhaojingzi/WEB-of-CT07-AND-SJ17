package com.ruoyi.common.core.domain;

import com.fasterxml.jackson.annotation.JsonInclude;

@JsonInclude(JsonInclude.Include.NON_EMPTY)
public class CT07_1  extends BaseEntity{

    private int id;

    private String th1;//筒号
    private Float clhbfbds1;//测力环百分表读数
    private int dwyl1;//单位压力
    private int z1;//左（贯入量百分表读数（0.01mm））
    private int y1;//右（贯入量百分表读数（0.01mm））
    private int pjz1;//平均值
    private Float grl1;//贯入量

    @Override
    public String toString() {
        return "CT07_1{" +
                "id=" + id +
                ", th1='" + th1 + '\'' +
                ", clhbfbds1=" + clhbfbds1 +
                ", dwyl1=" + dwyl1 +
                ", z1=" + z1 +
                ", y1=" + y1 +
                ", pjz1=" + pjz1 +
                ", grl1=" + grl1 +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTh1() {
        return th1;
    }

    public void setTh1(String th1) {
        this.th1 = th1;
    }

    public Float getClhbfbds1() {
        return clhbfbds1;
    }

    public void setClhbfbds1(Float clhbfbds1) {
        this.clhbfbds1 = clhbfbds1;
    }

    public int getDwyl1() {
        return dwyl1;
    }

    public void setDwyl1(int dwyl1) {
        this.dwyl1 = dwyl1;
    }

    public int getZ1() {
        return z1;
    }

    public void setZ1(int z1) {
        this.z1 = z1;
    }

    public int getY1() {
        return y1;
    }

    public void setY1(int y1) {
        this.y1 = y1;
    }

    public int getPjz1() {
        return pjz1;
    }

    public void setPjz1(int pjz1) {
        this.pjz1 = pjz1;
    }

    public Float getGrl1() {
        return grl1;
    }

    public void setGrl1(Float grl1) {
        this.grl1 = grl1;
    }
}
