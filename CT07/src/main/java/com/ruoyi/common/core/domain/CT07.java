package com.ruoyi.common.core.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;

import java.util.Date;
import java.util.List;

//土壤数据
@JsonInclude(JsonInclude.Include.NON_EMPTY)
public class CT07 extends BaseEntity{

    private int id;// 序号
    private String jcdwmc;//检测单位名称
    private String jlbh;//记录编号
    private String gcmc;//工程名称
    private String htd;//合同段
    private String sgdw;//施工单位名称
    private String jldw;//监理单位
    private String gcbwyt;//工程部位/用途
    private String ypxx;//样品信息
    private Float wd;//温度
    private Float xdsd;//相对湿度
    private String jcyj;//检测依据
    private String pdyj;//判定依据
    private String zyyqsbmcjbh;//主要仪器设备名称及编号
    private String qydd;//取样地点
    private Float qysd;//取样深度
    private Float zdgmd;//最大干密度
    private Float zjhsl;//最佳含水率
    private String mcjs;//每层击数
    private Float grgmjA;//贯入杆面积A
    private Float a;//测力环回归方程y=ax+b，a(N/0.01mm）
    private Float b;//测力环回归方程y=ax+b，b（N）
    private Float clhjzxs;//测力环校正系数
    private String th1;//筒号
    //    private Float clhbfbds1;//测力环百分表读数
//    private int dwyl1;//单位压力
//    private int z1;//左（贯入量百分表读数（0.01mm））
//    private int y1;//右（贯入量百分表读数（0.01mm））
//    private int pjz1;//平均值
//    private Float grl1;//贯入量
    private String th2;//筒号
    //    private Float clhbfbds2;//测力环百分表读数
//    private int dwyl2;//单位压力
//    private int z2;//左（贯入量百分表读数（0.01mm））
//    private int y2;//右（贯入量百分表读数（0.01mm））
//    private int pjz2;//平均值
//    private Float grl2;//贯入量
    private String th3;//筒号
    //    private Float clhbfbds3;//测力环百分表读数
//    private int dwyl3;//单位压力
//    private int z3;//左（贯入量百分表读数（0.01mm））
//    private int y3;//右（贯入量百分表读数（0.01mm））
//    private int pjz3;//平均值
//    private Float grl3;//贯入量
    private int min;//z在2.5mm值对应的dwyl（kPa）
    private int max;//z在5.0mm值对应的dwyl（kPa）
    private String position;//地点（经纬度）
    private String userid;//采集人员编号

    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date syjcrq;//试验检测日期

    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date qyrq;//取样日期

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date time;//时间


    @Override
    public String toString() {
        return "CT07{" +
                "id=" + id +
                ", jcdwmc='" + jcdwmc + '\'' +
                ", jlbh='" + jlbh + '\'' +
                ", gcmc='" + gcmc + '\'' +
                ", htd='" + htd + '\'' +
                ", sgdw='" + sgdw + '\'' +
                ", jldw='" + jldw + '\'' +
                ", gcbwyt='" + gcbwyt + '\'' +
                ", ypxx='" + ypxx + '\'' +
                ", wd=" + wd +
                ", xdsd=" + xdsd +
                ", jcyj='" + jcyj + '\'' +
                ", pdyj='" + pdyj + '\'' +
                ", zyyqsbmcjbh='" + zyyqsbmcjbh + '\'' +
                ", qydd='" + qydd + '\'' +
                ", qysd=" + qysd +
                ", zdgmd=" + zdgmd +
                ", zjhsl=" + zjhsl +
                ", mcjs='" + mcjs + '\'' +
                ", grgmjA=" + grgmjA +
                ", a=" + a +
                ", b=" + b +
                ", clhjzxs=" + clhjzxs +
                ", th1='" + th1 + '\'' +
                ", th2='" + th2 + '\'' +
                ", th3='" + th3 + '\'' +
                ", min=" + min +
                ", max=" + max +
                ", position='" + position + '\'' +
                ", userid='" + userid + '\'' +
                ", syjcrq=" + syjcrq +
                ", qyrq=" + qyrq +
                ", time=" + time +
                ", aList=" + aList +
                ", bList=" + bList +
                ", cList=" + cList +
                '}';
    }




    private List<CT07_1> aList;
    private List<CT07_1> bList;
    private List<CT07_1> cList;

    public List<CT07_1> getaList() {
        return aList;
    }

    public void setaList(List<CT07_1> aList) {
        this.aList = aList;
    }

    public List<CT07_1> getbList() {
        return bList;
    }

    public void setbList(List<CT07_1> bList) {
        this.bList = bList;
    }

    public List<CT07_1> getcList() {
        return cList;
    }

    public void setcList(List<CT07_1> cList) {
        this.cList = cList;
    }

    // 设置getter和setter方法


    public String getTh1() {
        return th1;
    }

    public void setTh1(String th1) {
        this.th1 = th1;
    }

    public String getTh2() {
        return th2;
    }

    public void setTh2(String th2) {
        this.th2 = th2;
    }

    public String getTh3() {
        return th3;
    }

    public void setTh3(String th3) {
        this.th3 = th3;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getJcdwmc() {
        return jcdwmc;
    }

    public void setJcdwmc(String jcdwmc) {
        this.jcdwmc = jcdwmc;
    }

    public String getJlbh() {
        return jlbh;
    }

    public void setJlbh(String jlbh) {
        this.jlbh = jlbh;
    }

    public String getGcmc() {
        return gcmc;
    }

    public void setGcmc(String gcmc) {
        this.gcmc = gcmc;
    }

    public String getHtd() {
        return htd;
    }

    public void setHtd(String htd) {
        this.htd = htd;
    }

    public String getSgdw() {
        return sgdw;
    }

    public void setSgdw(String sgdw) {
        this.sgdw = sgdw;
    }

    public String getJldw() {
        return jldw;
    }

    public void setJldw(String jldw) {
        this.jldw = jldw;
    }

    public String getGcbwyt() {
        return gcbwyt;
    }

    public void setGcbwyt(String gcbwyt) {
        this.gcbwyt = gcbwyt;
    }

    public String getYpxx() {
        return ypxx;
    }

    public void setYpxx(String ypxx) {
        this.ypxx = ypxx;
    }

    public Float getWd() {
        return wd;
    }

    public void setWd(Float wd) {
        this.wd = wd;
    }

    public Float getXdsd() {
        return xdsd;
    }

    public void setXdsd(Float xdsd) {
        this.xdsd = xdsd;
    }

    public String getJcyj() {
        return jcyj;
    }

    public void setJcyj(String jcyj) {
        this.jcyj = jcyj;
    }

    public String getPdyj() {
        return pdyj;
    }

    public void setPdyj(String pdyj) {
        this.pdyj = pdyj;
    }

    public String getZyyqsbmcjbh() {
        return zyyqsbmcjbh;
    }

    public void setZyyqsbmcjbh(String zyyqsbmcjbh) {
        this.zyyqsbmcjbh = zyyqsbmcjbh;
    }

    public String getQydd() {
        return qydd;
    }

    public void setQydd(String qydd) {
        this.qydd = qydd;
    }

    public Float getQysd() {
        return qysd;
    }

    public void setQysd(Float qysd) {
        this.qysd = qysd;
    }

    public Float getZdgmd() {
        return zdgmd;
    }

    public void setZdgmd(Float zdgmd) {
        this.zdgmd = zdgmd;
    }

    public Float getZjhsl() {
        return zjhsl;
    }

    public void setZjhsl(Float zjhsl) {
        this.zjhsl = zjhsl;
    }

    public String getMcjs() {
        return mcjs;
    }

    public void setMcjs(String mcjs) {
        this.mcjs = mcjs;
    }

    public Float getGrgmjA() {
        return grgmjA;
    }

    public void setGrgmjA(Float grgmjA) {
        this.grgmjA = grgmjA;
    }

    public Float getA() {
        return a;
    }

    public void setA(Float a) {
        this.a = a;
    }

    public Float getB() {
        return b;
    }

    public void setB(Float b) {
        this.b = b;
    }

    public Float getClhjzxs() {
        return clhjzxs;
    }

    public void setClhjzxs(Float clhjzxs) {
        this.clhjzxs = clhjzxs;
    }

//    public String getTh1() {
//        return th1;
//    }
//
//    public void setTh1(String th1) {
//        this.th1 = th1;
//    }
//
//    public Float getClhbfbds1() {
//        return clhbfbds1;
//    }
//
//    public void setClhbfbds1(Float clhbfbds1) {
//        this.clhbfbds1 = clhbfbds1;
//    }
//
//    public int getDwyl1() {
//        return dwyl1;
//    }
//
//    public void setDwyl1(int dwyl1) {
//        this.dwyl1 = dwyl1;
//    }
//
//    public int getZ1() {
//        return z1;
//    }
//
//    public void setZ1(int z1) {
//        this.z1 = z1;
//    }
//
//    public int getY1() {
//        return y1;
//    }
//
//    public void setY1(int y1) {
//        this.y1 = y1;
//    }
//
//    public int getPjz1() {
//        return pjz1;
//    }
//
//    public void setPjz1(int pjz1) {
//        this.pjz1 = pjz1;
//    }
//
//    public Float getGrl1() {
//        return grl1;
//    }
//
//    public void setGrl1(Float grl1) {
//        this.grl1 = grl1;
//    }
//
//    public String getTh2() {
//        return th2;
//    }
//
//    public void setTh2(String th2) {
//        this.th2 = th2;
//    }
//
//    public Float getClhbfbds2() {
//        return clhbfbds2;
//    }
//
//    public void setClhbfbds2(Float clhbfbds2) {
//        this.clhbfbds2 = clhbfbds2;
//    }
//
//    public int getDwyl2() {
//        return dwyl2;
//    }
//
//    public void setDwyl2(int dwyl2) {
//        this.dwyl2 = dwyl2;
//    }
//
//    public int getZ2() {
//        return z2;
//    }
//
//    public void setZ2(int z2) {
//        this.z2 = z2;
//    }
//
//    public int getY2() {
//        return y2;
//    }
//
//    public void setY2(int y2) {
//        this.y2 = y2;
//    }
//
//    public int getPjz2() {
//        return pjz2;
//    }
//
//    public void setPjz2(int pjz2) {
//        this.pjz2 = pjz2;
//    }
//
//    public Float getGrl2() {
//        return grl2;
//    }
//
//    public void setGrl2(Float grl2) {
//        this.grl2 = grl2;
//    }
//
//    public String getTh3() {
//        return th3;
//    }
//
//    public void setTh3(String th3) {
//        this.th3 = th3;
//    }
//
//    public Float getClhbfbds3() {
//        return clhbfbds3;
//    }
//
//    public void setClhbfbds3(Float clhbfbds3) {
//        this.clhbfbds3 = clhbfbds3;
//    }
//
//    public int getDwyl3() {
//        return dwyl3;
//    }
//
//    public void setDwyl3(int dwyl3) {
//        this.dwyl3 = dwyl3;
//    }
//
//    public int getZ3() {
//        return z3;
//    }
//
//    public void setZ3(int z3) {
//        this.z3 = z3;
//    }
//
//    public int getY3() {
//        return y3;
//    }
//
//    public void setY3(int y3) {
//        this.y3 = y3;
//    }
//
//    public int getPjz3() {
//        return pjz3;
//    }
//
//    public void setPjz3(int pjz3) {
//        this.pjz3 = pjz3;
//    }
//
//    public Float getGrl3() {
//        return grl3;
//    }
//
//    public void setGrl3(Float grl3) {
//        this.grl3 = grl3;
//    }

    public int getMin() {
        return min;
    }

    public void setMin(int min) {
        this.min = min;
    }

    public int getMax() {
        return max;
    }

    public void setMax(int max) {
        this.max = max;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public Date getSyjcrq() {
        return syjcrq;
    }

    public void setSyjcrq(Date syjcrq) {
        this.syjcrq = syjcrq;
    }

    public Date getQyrq() {
        return qyrq;
    }

    public void setQyrq(Date qyrq) {
        this.qyrq = qyrq;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
