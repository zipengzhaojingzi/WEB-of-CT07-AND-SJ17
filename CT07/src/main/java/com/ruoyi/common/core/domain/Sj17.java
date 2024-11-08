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
