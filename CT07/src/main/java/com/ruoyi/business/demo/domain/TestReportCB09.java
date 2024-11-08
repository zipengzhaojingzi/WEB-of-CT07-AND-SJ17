package com.ruoyi.business.demo.domain;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class TestReportCB09 implements Serializable {
    private Long id;

    private String testOrgName;

    private String reportNo;

    private String projectName;

    private String contractArea;

    private String constructionOrgName;

    private String supervisorOrgName;

    private String projectPartAndPurpose;

    private String sampleInfo;

    private String testingBasis;

    private String judgmentCriteria;

    private String equipmentNameAndNo;

    private String mixProportionNo;

    private String impermeabilityLevel;

    private String designStrength;

    private String stirType;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date formingDate;

    private BigDecimal slumpsValue;

    private String maintainType;

    private Integer ageValue;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date testDate;

    private String teamNo;

    private BigDecimal testStopWaterPressure;

    private Integer testStopSeepagePartNum;

    private String testStrength;

    private String result;

    private String additionalStatement;

    private String testPerson;

    private String examinePerson;

    private String approvePerson;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date reportDate;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date updateTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTestOrgName() {
        return testOrgName;
    }

    public void setTestOrgName(String testOrgName) {
        this.testOrgName = testOrgName == null ? null : testOrgName.trim();
    }

    public String getReportNo() {
        return reportNo;
    }

    public void setReportNo(String reportNo) {
        this.reportNo = reportNo == null ? null : reportNo.trim();
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName == null ? null : projectName.trim();
    }

    public String getContractArea() {
        return contractArea;
    }

    public void setContractArea(String contractArea) {
        this.contractArea = contractArea == null ? null : contractArea.trim();
    }

    public String getConstructionOrgName() {
        return constructionOrgName;
    }

    public void setConstructionOrgName(String constructionOrgName) {
        this.constructionOrgName = constructionOrgName == null ? null : constructionOrgName.trim();
    }

    public String getSupervisorOrgName() {
        return supervisorOrgName;
    }

    public void setSupervisorOrgName(String supervisorOrgName) {
        this.supervisorOrgName = supervisorOrgName == null ? null : supervisorOrgName.trim();
    }

    public String getProjectPartAndPurpose() {
        return projectPartAndPurpose;
    }

    public void setProjectPartAndPurpose(String projectPartAndPurpose) {
        this.projectPartAndPurpose = projectPartAndPurpose == null ? null : projectPartAndPurpose.trim();
    }

    public String getSampleInfo() {
        return sampleInfo;
    }

    public void setSampleInfo(String sampleInfo) {
        this.sampleInfo = sampleInfo == null ? null : sampleInfo.trim();
    }

    public String getTestingBasis() {
        return testingBasis;
    }

    public void setTestingBasis(String testingBasis) {
        this.testingBasis = testingBasis == null ? null : testingBasis.trim();
    }

    public String getJudgmentCriteria() {
        return judgmentCriteria;
    }

    public void setJudgmentCriteria(String judgmentCriteria) {
        this.judgmentCriteria = judgmentCriteria == null ? null : judgmentCriteria.trim();
    }

    public String getEquipmentNameAndNo() {
        return equipmentNameAndNo;
    }

    public void setEquipmentNameAndNo(String equipmentNameAndNo) {
        this.equipmentNameAndNo = equipmentNameAndNo == null ? null : equipmentNameAndNo.trim();
    }

    public String getMixProportionNo() {
        return mixProportionNo;
    }

    public void setMixProportionNo(String mixProportionNo) {
        this.mixProportionNo = mixProportionNo == null ? null : mixProportionNo.trim();
    }

    public String getImpermeabilityLevel() {
        return impermeabilityLevel;
    }

    public void setImpermeabilityLevel(String impermeabilityLevel) {
        this.impermeabilityLevel = impermeabilityLevel == null ? null : impermeabilityLevel.trim();
    }

    public String getDesignStrength() {
        return designStrength;
    }

    public void setDesignStrength(String designStrength) {
        this.designStrength = designStrength == null ? null : designStrength.trim();
    }

    public String getStirType() {
        return stirType;
    }

    public void setStirType(String stirType) {
        this.stirType = stirType == null ? null : stirType.trim();
    }

    public Date getFormingDate() {
        return formingDate;
    }

    public void setFormingDate(Date formingDate) {
        this.formingDate = formingDate;
    }

    public BigDecimal getSlumpsValue() {
        return slumpsValue;
    }

    public void setSlumpsValue(BigDecimal slumpsValue) {
        this.slumpsValue = slumpsValue;
    }

    public String getMaintainType() {
        return maintainType;
    }

    public void setMaintainType(String maintainType) {
        this.maintainType = maintainType == null ? null : maintainType.trim();
    }

    public Integer getAgeValue() {
        return ageValue;
    }

    public void setAgeValue(Integer ageValue) {
        this.ageValue = ageValue;
    }

    public Date getTestDate() {
        return testDate;
    }

    public void setTestDate(Date testDate) {
        this.testDate = testDate;
    }

    public String getTeamNo() {
        return teamNo;
    }

    public void setTeamNo(String teamNo) {
        this.teamNo = teamNo == null ? null : teamNo.trim();
    }

    public BigDecimal getTestStopWaterPressure() {
        return testStopWaterPressure;
    }

    public void setTestStopWaterPressure(BigDecimal testStopWaterPressure) {
        this.testStopWaterPressure = testStopWaterPressure;
    }

    public Integer getTestStopSeepagePartNum() {
        return testStopSeepagePartNum;
    }

    public void setTestStopSeepagePartNum(Integer testStopSeepagePartNum) {
        this.testStopSeepagePartNum = testStopSeepagePartNum;
    }

    public String getTestStrength() {
        return testStrength;
    }

    public void setTestStrength(String testStrength) {
        this.testStrength = testStrength == null ? null : testStrength.trim();
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result == null ? null : result.trim();
    }

    public String getAdditionalStatement() {
        return additionalStatement;
    }

    public void setAdditionalStatement(String additionalStatement) {
        this.additionalStatement = additionalStatement == null ? null : additionalStatement.trim();
    }

    public String getTestPerson() {
        return testPerson;
    }

    public void setTestPerson(String testPerson) {
        this.testPerson = testPerson == null ? null : testPerson.trim();
    }

    public String getExaminePerson() {
        return examinePerson;
    }

    public void setExaminePerson(String examinePerson) {
        this.examinePerson = examinePerson == null ? null : examinePerson.trim();
    }

    public String getApprovePerson() {
        return approvePerson;
    }

    public void setApprovePerson(String approvePerson) {
        this.approvePerson = approvePerson == null ? null : approvePerson.trim();
    }

    public Date getReportDate() {
        return reportDate;
    }

    public void setReportDate(Date reportDate) {
        this.reportDate = reportDate;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}