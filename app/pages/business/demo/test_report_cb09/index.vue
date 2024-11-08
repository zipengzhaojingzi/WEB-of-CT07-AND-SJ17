<template>
	<view class="container">
	  <view class="example">
	    <uni-forms ref="form" :model="testReportCB09" labelWidth="100px">
	      <uni-forms-item label="检测单位名称" name="testOrgName">
	        <uni-easyinput v-model="testReportCB09.testOrgName" placeholder="" />
	      </uni-forms-item>
	      <uni-forms-item label="报告编号" name="reportNo">
	        <uni-easyinput v-model="testReportCB09.reportNo" placeholder="" />
	      </uni-forms-item>
	      <uni-forms-item label="工程名称" name="projectName">
	        <uni-easyinput v-model="testReportCB09.projectName" placeholder="" />
	      </uni-forms-item>
	      <uni-forms-item label="合同段" name="contractArea">
	        <uni-easyinput v-model="testReportCB09.contractArea" placeholder="" />
	      </uni-forms-item>
		  <uni-forms-item label="施工单位" name="constructionOrgName">
		    <uni-easyinput v-model="testReportCB09.constructionOrgName" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="监理单位" name="supervisorOrgName">
		    <uni-easyinput v-model="testReportCB09.supervisorOrgName" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="工程部位/用途" name="projectPartAndPurpose">
		    <uni-easyinput v-model="testReportCB09.projectPartAndPurpose" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="样品信息" name="sampleInfo">
		    <uni-easyinput v-model="testReportCB09.sampleInfo" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="检测依据" name="testingBasis">
		    <uni-easyinput v-model="testReportCB09.testingBasis" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="判定依据" name="judgmentCriteria">
		    <uni-easyinput v-model="testReportCB09.judgmentCriteria" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="主要仪器设备名称和编号" name="equipmentNameAndNo">
		    <uni-easyinput v-model="testReportCB09.equipmentNameAndNo" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="配合比编号" name="mixProportionNo">
		    <uni-easyinput v-model="testReportCB09.mixProportionNo" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="设计抗渗等级" name="impermeabilityLevel">
		    <uni-easyinput v-model="testReportCB09.impermeabilityLevel" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="设计强度(MPa)" name="designStrength">
		    <uni-easyinput v-model="testReportCB09.designStrength" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="搅拌方式" name="stirType">
		    <uni-easyinput v-model="testReportCB09.stirType" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="成型日期" name="formingDate">
		    <uni-datetime-picker v-model="testReportCB09.formingDate" placeholder="" type="date"/>
		  </uni-forms-item>
		  <uni-forms-item label="坍落度" name="slumpsValue">
			<input class="uni-input" type="digit" placeholder="请输入" v-model="testReportCB09.slumpsValue"/>
		  </uni-forms-item>
		  <uni-forms-item label="养护方式" name="maintainType">
		    <uni-easyinput v-model="testReportCB09.maintainType" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="龄期(d)" name="ageValue">
			<input class="uni-input" type="number" v-model="testReportCB09.ageValue" placeholder="请输入" @input="checkNum"/>
		  </uni-forms-item>
		  <uni-forms-item label="试验日期" name="testDate">
			<uni-datetime-picker v-model="testReportCB09.testDate" placeholder="" type="date"/>
		  </uni-forms-item>
		  <uni-forms-item label="组号" name="teamNo">
		    <uni-easyinput v-model="testReportCB09.teamNo" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="检测停止时的水压力(MPa)" name="testStopWaterPressure">
			<input class="uni-input" type="digit" placeholder="请输入" v-model="testReportCB09.testStopWaterPressure"/>
		  </uni-forms-item>
		  <uni-forms-item label="检测停止时的渗水试件的数量（个）" name="testStopSeepagePartNum">
			<input class="uni-input" type="number" v-model="testReportCB09.testStopSeepagePartNum" placeholder="请输入" @input="checkNum2"/>
		  </uni-forms-item>
		  <uni-forms-item label="实测抗渗等级" name="testStrength">
		    <uni-easyinput v-model="testReportCB09.testStrength" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="结论" name="result">
		    <uni-easyinput v-model="testReportCB09.result" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="附加声明" name="additionalStatement">
		    <uni-easyinput v-model="testReportCB09.additionalStatement" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="检测" name="testPerson">
		    <uni-easyinput v-model="testReportCB09.testPerson" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="审核" name="examinePerson">
		    <uni-easyinput v-model="testReportCB09.examinePerson" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="批准" name="approvePerson">
		    <uni-easyinput v-model="testReportCB09.approvePerson" placeholder="" />
		  </uni-forms-item>
		  <uni-forms-item label="日期" name="reportDate">
			<uni-datetime-picker v-model="testReportCB09.reportDate" placeholder="" type="date"/>
		  </uni-forms-item>
	    </uni-forms>
		<view style="display: flex;justify-content: center;align-items: center;">
			<view style="width: 40%;"><button type="primary" @click="submit">提交</button></view>
			<view style="width: 40%;margin-left: 50rpx;"><button type="default" @click="reset">重置</button></view>
		</view>
	  </view>
	</view>
</template>

<script>
import { insertTestReportCB09 } from '@/api/business/demo/testReportCB09'
export default {
  data() {
	return {
	  testReportCB09: {
		testOrgName: undefined,
		reportNo: undefined,
		projectName: undefined,
		contractArea: undefined,
		constructionOrgName: undefined,
		supervisorOrgName: undefined,
		projectPartAndPurpose: undefined,
		sampleInfo: undefined,
		testingBasis: undefined,
		judgmentCriteria: undefined,
		equipmentNameAndNo: undefined,
		mixProportionNo: undefined,
		impermeabilityLevel: undefined,
		designStrength: undefined,
		stirType: undefined,
		formingDate: undefined,
		slumpsValue: undefined,
		maintainType: undefined,
		ageValue: undefined,
		testDate: undefined,
		teamNo: undefined,
		testStopWaterPressure: undefined,
		testStopSeepagePartNum: undefined,
		testStrength: undefined,
		result: undefined,
		additionalStatement: undefined,
		testPerson: undefined,
		examinePerson: undefined,
		approvePerson: undefined,
		reportDate: undefined,
		createTime: undefined,
		updateTime: undefined,
	  },
	}
  },
  methods:{
	submit(ref) {
	  this.$refs.form.validate().then(res => {
		if (this.testReportCB09.formingDate) {
			this.testReportCB09.formingDate += " 00:00:00";
		}
		if (this.testReportCB09.testDate) {
			this.testReportCB09.testDate += " 00:00:00";
		}
		if (this.testReportCB09.reportDate) {
			this.testReportCB09.reportDate += " 00:00:00";
		}
	    insertTestReportCB09(this.testReportCB09).then(response => {
		  if (response.code == 200) {
			  this.$modal.msgSuccess("录入成功")
			  setTimeout(()=>{
				uni.switchTab({url:'/pages/work/index'});
			  },2000);
		  }else {
			  this.$modal.msgError("录入失败")
			  console.log(response.msg?response.msg:response.message);
		  }
	    })
	  })
	},
	/** 重置操作表单 */
	reset() {
	  this.testReportCB09 = {
	    id: undefined,
	    testOrgName: undefined,
	    reportNo: undefined,
	    projectName: undefined,
	    contractArea: undefined,
	    constructionOrgName: undefined,
	    supervisorOrgName: undefined,
	    projectPartAndPurpose: undefined,
	    sampleInfo: undefined,
	    testingBasis: undefined,
		judgmentCriteria: undefined,
		equipmentNameAndNo: undefined,
		mixProportionNo: undefined,
		impermeabilityLevel: undefined,
		designStrength: undefined,
		stirType: undefined,
		formingDate: undefined,
	    maintainType: undefined,
		ageValue: undefined,
		testDate: undefined,
		teamNo: undefined,
		testStopWaterPressure: undefined,
		testStopSeepagePartNum: undefined,
		testStrength: undefined,
		result: undefined,
		additionalStatement: undefined,
		testPerson: undefined,
		examinePerson: undefined,
		approvePerson: undefined,
		reportDate: undefined,
		createTime: undefined,
		updateTime: undefined,
	  };
	},
	checkNum(e) {
		this.testReportCB09.ageValue = event.target.value.replace(/\D/g, '')
	},
	checkNum2(e) {
		this.testReportCB09.testStopSeepagePartNum = event.target.value.replace(/\D/g, '')
	}
  },
}
</script>

<style lang="scss">
  page {
    background-color: #ffffff;
  }

  .example {
    padding: 15px;
    background-color: #fff;
  }

  .segmented-control {
    margin-bottom: 15px;
  }

  .button-group {
    margin-top: 15px;
    display: flex;
    justify-content: space-around;
  }

  .form-item {
    display: flex;
    align-items: center;
    flex: 1;
  }

  .button {
    display: flex;
    align-items: center;
    height: 35px;
    line-height: 35px;
    margin-left: 10px;
  }
</style>	