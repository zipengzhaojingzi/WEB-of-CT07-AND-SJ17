package com.ruoyi.common.core.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;

import java.util.Date;

// 土壤数据
@JsonInclude(JsonInclude.Include.NON_EMPTY)
public class Sj17 extends BaseEntity {

    private int id;// 序号
    private String hth;// 土壤名字
    private String sgdw;// 温度
    private String jldw;// 湿度
    private String bh;// 编号
    private String gcmc;// 工程名称
    private String zhjgcbw;// 桩号和工程部位
    private String jglx;// 结构类型
    private String bhfs;// 拌合方式
    private int yshd;// 压实厚度
    private float mpyl;// 每盘用料
    private float kd;// 宽度
    private float clwd;// 出料温度
    private int hp;// 横坡
    private String ysbjc;// 油石比检查
    private String ysb;// 油石比
    private String ysfs;// 运输方式
    private String lqjcqk;// 沥青检查情况
    private float ddwd;// 到达温度
    private String tpff;// 摊铺方法
    private float tpwd;// 摊铺温度
    private String cjlysmc;// 粗集料岩石名称
    private String pzd;// 平整度
    private String tcllb;// 填充料类别
    private String hd;// 厚度
    private String jlphb;// 集料配合比
    private String tphp;// 摊铺——横坡
    private String xcjpqk;// 现场级配情况
    private String nyjj;// 碾压机具
    private String lcfwrcs;// 料场防污染措施
    private String nybs;// 碾压遍数
    private String cpqk;// 掺配情况
    private String nyzl;// 碾压质量
    private String jwjl;// 加温记录
    private float nywd;// 碾压温度
    private float kljrwd;// 矿料加热温度
    private float nyjswd;// 碾压结束温度
    private float kgqw;// 开工气温
    private float jsqw;// 结束气温
    private String qwbhqk;// 气温变化情况
    private String sgy;// 施工员
    private String zygcs;// 专业工程师

    public String getBh() {
        return bh;
    }

    public void setBh(String bh) {
        this.bh = bh;
    }

    public String getGcmc() {
        return gcmc;
    }

    public void setGcmc(String gcmc) {
        this.gcmc = gcmc;
    }

    public String getZhjgcbw() {
        return zhjgcbw;
    }

    public void setZhjgcbw(String zhjgcbw) {
        this.zhjgcbw = zhjgcbw;
    }

    public String getJglx() {
        return jglx;
    }

    public void setJglx(String jglx) {
        this.jglx = jglx;
    }

    public String getBhfs() {
        return bhfs;
    }

    public void setBhfs(String bhfs) {
        this.bhfs = bhfs;
    }

    public float getYshd() {
        return yshd;
    }

    public void setYshd(int yshd) {
        this.yshd = yshd;
    }

    public float getMpyl() {
        return mpyl;
    }

    public void setMpyl(float mpyl) {
        this.mpyl = mpyl;
    }

    public float getKd() {
        return kd;
    }

    public void setKd(float kd) {
        this.kd = kd;
    }

    public float getClwd() {
        return clwd;
    }

    public void setClwd(float clwd) {
        this.clwd = clwd;
    }

    public float getHp() {
        return hp;
    }

    public void setHp(int hp) {
        this.hp = hp;
    }

    public String getYsbjc() {
        return ysbjc;
    }

    public void setYsbjc(String ysbjc) {
        this.ysbjc = ysbjc;
    }

    public String getYsb() {
        return ysb;
    }

    public void setYsb(String ysb) {
        this.ysb = ysb;
    }

    public String getYsfs() {
        return ysfs;
    }

    public void setYsfs(String ysfs) {
        this.ysfs = ysfs;
    }

    public String getLqjcqk() {
        return lqjcqk;
    }

    public void setLqjcqk(String lqjcqk) {
        this.lqjcqk = lqjcqk;
    }

    public float getDdwd() {
        return ddwd;
    }

    public void setDdwd(float ddwd) {
        this.ddwd = ddwd;
    }

    public String getTpff() {
        return tpff;
    }

    public void setTpff(String tpff) {
        this.tpff = tpff;
    }

    public float getTpwd() {
        return tpwd;
    }

    public void setTpwd(float tpwd) {
        this.tpwd = tpwd;
    }

    public String getCjlysmc() {
        return cjlysmc;
    }

    public void setCjlysmc(String cjlysmc) {
        this.cjlysmc = cjlysmc;
    }

    public String getPzd() {
        return pzd;
    }

    public void setPzd(String pzd) {
        this.pzd = pzd;
    }

    public String getTcllb() {
        return tcllb;
    }

    public void setTcllb(String tcllb) {
        this.tcllb = tcllb;
    }

    public String getHd() {
        return hd;
    }

    public void setHd(String hd) {
        this.hd = hd;
    }

    public String getJlphb() {
        return jlphb;
    }

    public void setJlphb(String jlphb) {
        this.jlphb = jlphb;
    }

    public String getTphp() {
        return tphp;
    }

    public void setTphp(String tphp) {
        this.tphp = tphp;
    }

    public String getXcjpqk() {
        return xcjpqk;
    }

    public void setXcjpqk(String xcjpqk) {
        this.xcjpqk = xcjpqk;
    }

    public String getNyjj() {
        return nyjj;
    }

    public void setNyjj(String nyjj) {
        this.nyjj = nyjj;
    }

    public String getLcfwrcs() {
        return lcfwrcs;
    }

    public void setLcfwrcs(String lcfwrcs) {
        this.lcfwrcs = lcfwrcs;
    }

    public String getNybs() {
        return nybs;
    }

    public void setNybs(String nybs) {
        this.nybs = nybs;
    }

    public String getCpqk() {
        return cpqk;
    }

    public void setCpqk(String cpqk) {
        this.cpqk = cpqk;
    }

    public String getNyzl() {
        return nyzl;
    }

    public void setNyzl(String nyzl) {
        this.nyzl = nyzl;
    }

    public String getJwjl() {
        return jwjl;
    }

    public void setJwjl(String jwjl) {
        this.jwjl = jwjl;
    }

    public float getNywd() {
        return nywd;
    }

    public void setNywd(float nywd) {
        this.nywd = nywd;
    }

    public float getKljrwd() {
        return kljrwd;
    }

    public void setKljrwd(float kljrwd) {
        this.kljrwd = kljrwd;
    }

    public float getNyjswd() {
        return nyjswd;
    }

    public void setNyjswd(float nyjswd) {
        this.nyjswd = nyjswd;
    }

    public float getKgqw() {
        return kgqw;
    }

    public void setKgqw(float kgqw) {
        this.kgqw = kgqw;
    }

    public float getJsqw() {
        return jsqw;
    }

    public void setJsqw(float jsqw) {
        this.jsqw = jsqw;
    }

    public String getQwbhqk() {
        return qwbhqk;
    }

    public void setQwbhqk(String qwbhqk) {
        this.qwbhqk = qwbhqk;
    }

    public String getSgy() {
        return sgy;
    }

    public void setSgy(String sgy) {
        this.sgy = sgy;
    }

    public String getZygcs() {
        return zygcs;
    }

    public void setZygcs(String zygcs) {
        this.zygcs = zygcs;
    }

    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date sgsj;// 创建日期
    //    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")

    // 设置getter 和setter 方法


    public Date getSgsj() {
        return sgsj;
    }

    public void setSgsj(Date sgsj) {
        this.sgsj = sgsj;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHth() {
        return hth;
    }

    public void setHth(String hth) {
        this.hth = hth;
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


}
