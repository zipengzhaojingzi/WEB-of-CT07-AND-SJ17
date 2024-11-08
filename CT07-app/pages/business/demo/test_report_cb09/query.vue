<template>
  <view style="margin-left: 25px;">
    <form @submit="onSubmit" >
      <uni-forms-item label="检测单位名称" name="testOrgName" label-width="100px">
        <uni-easyinput v-model="form.testOrgName" placeholder="" />
      </uni-forms-item>
      <uni-forms-item label="工程名称" name="projectName" label-width="100px">
        <uni-easyinput v-model="form.projectName" placeholder="" />
      </uni-forms-item>
      <button form-type="submit" type="primary">查询</button>
    </form>
	<view>
		<view v-for="item in testReportCB09List" style="margin-top: 30px;display: flex;">
			<view style="width: 70%;">
				<view>ID:{{item.id}}</view>
				<view>检测单位名称:{{item.testOrgName}}</view>
				<view>工程名称:{{item.projectName}}</view>
				<view>结论:{{item.result}}</view>
			</view>
			<view style="width: 25%;display: flex; flex-direction: column; justify-content: flex-end;margin-left: 40px;">
				<button type="primary" size="mini" @click="see(item.id)">查看</button>
			</view>
		</view>
	</view>
	<uni-pagination v-if="total > 0"  title="分页标题" :total="total" style="margin-top: 30px;" :current="this.form.pageNum" @change="onCurrentChange"></uni-pagination>
	<view v-else > <span style="margin-top: 30px;text-align: center;display: block;">暂无数据！</span> </view>
  </view>
</template>
 
<script>
import { listTestReportCB09, getTestReportCB09 } from "@/api/business/demo/testReportCB09";
	
export default {
  data() {
    return {
      form: {
        testOrgName: '',
        projectName: '',
		pageNum: 1,
		pageSize: 10,
      },
	  testReportCB09List: [],
	  total: 0,
    };
  },
  onShow() {
  	// this.getList()
  },
  methods: {
    onSubmit(event) {
      event.preventDefault();
      console.log('表单数据：', this.form);
      // 这里可以执行提交表单的逻辑，如调用API上传数据等
	  this.getList()
    },
	getList() {
	  listTestReportCB09(this.form).then(response => {
	    this.testReportCB09List = response.rows;
	    this.total = response.total;
	  });
	},
	onCurrentChange(newPage) {
		this.form.pageNum = newPage
		this.getList()
	},
	see(id) {
		console.log(id);
		uni.navigateTo({
			url:'/pages/business/demo/test_report_cb09/item?id='+id,
		})
	}
  }
};
</script>
 
<style lang="scss">
page {
  background-color: #ffffff;
}
.uni-input-view {
  margin: 10px 0;
}
.uni-input-text {
  margin-right: 10px;
}
</style>