<template>
	<div class="app-container">
		<el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch">
			<el-form-item label="检测单位名称" prop="testOrgName">
				<el-input v-model="queryParams.testOrgName" placeholder="请输入检测单位名称" clearable style="width: 200px"
					@keyup.enter="handleQuery" />
			</el-form-item>
			<el-form-item label="工程名称" prop="projectName">
				<el-input v-model="queryParams.projectName" placeholder="请输入工程名称" clearable style="width: 200px"
					@keyup.enter="handleQuery" />
			</el-form-item>
			<el-form-item>
				<el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
				<el-button icon="Refresh" @click="resetQuery">重置</el-button>
			</el-form-item>
		</el-form>

		<el-row :gutter="10" class="mb8">
			<el-col :span="1.5">
				<el-button type="primary" plain icon="Plus" @click="handleAdd">新增</el-button>
			</el-col>
			<right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
		</el-row>

		<el-table v-if="refreshTable" v-loading="loading" :data="testReportCB09List" row-key="id">
			<el-table-column prop="id" label="ID" width="60"></el-table-column>
			<el-table-column prop="testOrgName" label="检测单位名称" width="260"></el-table-column>
			<el-table-column prop="projectName" label="工程名称" width="200"></el-table-column>
			<el-table-column prop="result" label="结论" width="150"></el-table-column>
			<el-table-column label="创建时间" align="center" prop="createTime" width="150">
				<template #default="scope">
					<span>{{ parseTime(scope.row.createTime) }}</span>
				</template>
			</el-table-column>
			<el-table-column label="更新时间" align="center" prop="updateTime" width="150">
				<template #default="scope">
					<span>{{ parseTime(scope.row.updateTime) }}</span>
				</template>
			</el-table-column>
			<el-table-column label="操作" align="center" class-name="small-padding fixed-width">
				<template #default="scope">
					<el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)">修改</el-button>
					<el-button link type="primary" icon="Plus" @click="handleAdd(scope.row)">新增</el-button>
					<el-button v-if="scope.row.parentId != 0" link type="primary" icon="Delete"
						@click="handleDelete(scope.row)">删除</el-button>
				</template>
			</el-table-column>
		</el-table>
		<pagination v-show="total > 0" :total="total" v-model:page="queryParams.pageNum"
			v-model:limit="queryParams.pageSize" @pagination="getList" />

		<!-- 添加或修改用户配置对话框 -->
		<el-dialog :title="title" v-model="open" width="1000px" append-to-body>
			<el-form :model="form" :rules="rules" ref="testReportCB09Ref" label-width="150px">
				<el-row>
					<el-col :span="12">
						<el-form-item label="检测单位名称" prop="testOrgName">
							<el-input v-model="form.testOrgName" placeholder="请输入检测单位名称" maxlength="100" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="报告编号" prop="reportNo">
							<el-input v-model="form.reportNo" placeholder="" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="12">
						<el-form-item label="工程名称" prop="projectName">
							<el-input v-model="form.projectName" placeholder="请输入工程名称" maxlength="100" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="合同段" prop="contractArea">
							<el-input v-model="form.contractArea" placeholder="" maxlength="50" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="12">
						<el-form-item label="施工单位" prop="constructionOrgName">
							<el-input v-model="form.constructionOrgName" placeholder="" maxlength="100" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="监理单位" prop="supervisorOrgName">
							<el-input v-model="form.supervisorOrgName" placeholder="" maxlength="100" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="24">
						<el-form-item label="工程部位/用途" prop="projectPartAndPurpose">
							<el-input v-model="form.projectPartAndPurpose" placeholder="" maxlength="200" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="24">
						<el-form-item label="样品信息" prop="sampleInfo">
							<el-input v-model="form.sampleInfo" placeholder="" maxlength="200" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="12">
						<el-form-item label="检测依据" prop="testingBasis">
							<el-input v-model="form.testingBasis" placeholder="请输入内容"></el-input>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="判定依据" prop="judgmentCriteria">
							<el-input v-model="form.judgmentCriteria" placeholder="请输入内容"></el-input>
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="24">
						<el-form-item label="主要仪器设备名称和编号" prop="equipmentNameAndNo">
							<el-input v-model="form.equipmentNameAndNo" placeholder="" maxlength="200" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="12">
						<el-form-item label="配合比编号" prop="mixProportionNo">
							<el-input v-model="form.mixProportionNo" placeholder=""></el-input>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="设计抗渗等级" prop="impermeabilityLevel">
							<el-input v-model="form.impermeabilityLevel" placeholder=""></el-input>
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="12">
						<el-form-item label="设计强度(MPa)" prop="designStrength">
							<el-input v-model="form.designStrength" placeholder=""></el-input>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="搅拌方式" prop="stirType">
							<el-input v-model="form.stirType" placeholder=""></el-input>
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="12">
						<el-form-item label="成型日期" prop="formingDate">
							<el-date-picker v-model="form.formingDate" type="date" value-format="YYYY-MM-DD HH:mm:ss"
								placeholder="选择日期">
							</el-date-picker>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="坍落度" prop="slumpsValue">
							<el-input-number v-model="form.slumpsValue" :precision="2" :step="0.1">
							</el-input-number>
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="12">
						<el-form-item label="养护方式" prop="maintainType">
							<el-input v-model="form.maintainType" placeholder="" maxlength="30"></el-input>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="龄期(d)" prop="ageValue">
							<el-input-number v-model="form.ageValue" :precision="0" :step="1">
							</el-input-number>
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="5" style="margin-left: 50px;">
						<span class="el-form-item__label">试验日期</span>
					</el-col>
					<el-col :span="2">
						<span class="el-form-item__label">组号</span>
					</el-col>
					<el-col :span="5">
						<span class="el-form-item__label">检测停止时的水压力(MPa)</span>
					</el-col>
					<el-col :span="6">
						<span class="el-form-item__label">检测停止时的渗水试件的数量（个）</span>
					</el-col>
					<el-col :span="4">
						<span class="el-form-item__label">实测抗渗等级</span>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="5" style="margin-left: 50px;">
						<el-date-picker value-format="YYYY-MM-DD HH:mm:ss" v-model="form.testDate" type="date"
							placeholder="选择日期">
						</el-date-picker>
					</el-col>
					<el-col :span="2">
						<el-input v-model="form.teamNo" placeholder="" maxlength="20"></el-input>
					</el-col>
					<el-col :span="5">
						<el-input-number v-model="form.testStopWaterPressure" :precision="2" :step="0.1">
						</el-input-number>
					</el-col>
					<el-col :span="6">
						<el-input-number v-model="form.testStopSeepagePartNum" :precision="0" :step="1">
						</el-input-number>
					</el-col>
					<el-col :span="4">
						<el-input v-model="form.testStrength" placeholder="" maxlength="200"></el-input>
					</el-col>
				</el-row>
				<el-row style="margin-top: 26px;">
					<el-col :span="24">
						<el-form-item label="结论" prop="result">
							<el-input v-model="form.result" placeholder="" maxlength="255" type="textarea" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="24">
						<el-form-item label="附加声明" prop="additionalStatement">
							<el-input v-model="form.additionalStatement" placeholder="" maxlength="255"
								type="textarea" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="6">
						<el-form-item label="检测" prop="testPerson">
							<el-input v-model="form.testPerson" placeholder="" maxlength="100" style="width: 100px;" />
						</el-form-item>
					</el-col>
					<el-col :span="5">
						<el-form-item label="审核" prop="examinePerson" label-width="100px">
							<el-input v-model="form.examinePerson" placeholder="" maxlength="100"
								style="width: 100px;" />
						</el-form-item>
					</el-col>
					<el-col :span="5">
						<el-form-item label="批准" prop="approvePerson" label-width="100px">
							<el-input v-model="form.approvePerson" placeholder="" maxlength="100"
								style="width: 100px;" />
						</el-form-item>
					</el-col>
					<el-col :span="8">
						<el-form-item label="日期" prop="reportDate" label-width="100px">
							<el-date-picker value-format="YYYY-MM-DD HH:mm:ss" v-model="form.reportDate" type="date"
								placeholder="选择日期">
							</el-date-picker>
						</el-form-item>
					</el-col>
				</el-row>
			</el-form>
			<template #footer>
				<div class="dialog-footer">
					<el-button type="primary" @click="submitForm">确 定</el-button>
					<el-button @click="cancel">取 消</el-button>
				</div>
			</template>
		</el-dialog>
	</div>
</template>

<script setup name="TestReportCB09">
	import {
		h
	} from 'vue';
	import {
		listTestReportCB09,
		getTestReportCB09,
		insertTestReportCB09,
		updateTestReportCB09,
		deleteTestReportCB09
	} from "@/api/business/moyunxiao/testReportCB09";

	const testReportCB09List = ref([]);
	const {
		proxy
	} = getCurrentInstance();
	const showSearch = ref(true);
	const loading = ref(true);
	const refreshTable = ref(true);
	const total = ref(0);
	const title = ref("");
	const open = ref(false);

	const data = reactive({
		form: {},
		queryParams: {
			testOrgName: undefined,
			projectName: undefined,
			pageNum: 1,
			pageSize: 10,
		},
		rules: {},
	});
	const {
		queryParams,
		form
	} = toRefs(data);

	/** 查询列表 */
	function getList() {
		loading.value = true;
		listTestReportCB09(queryParams.value).then(response => {
			testReportCB09List.value = response.rows;
			loading.value = false;
			total.value = response.total;
		});
	}

	/** 搜索按钮操作 */
	function handleQuery() {
		getList();
	}

	/** 重置按钮操作 */
	function resetQuery() {
		proxy.resetForm("queryRef");
		handleQuery();
	}

	/** 重置操作表单 */
	function reset() {
		form.value = {
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
		};
		proxy.resetForm("testReportCB09Ref");
	};

	/** 新增按钮操作 */
	function handleAdd(row) {
		reset();
		title.value = "添加";
		open.value = true;
	}

	/** 修改按钮操作 */
	function handleUpdate(row) {
		reset();
		const id = row.id;
		getTestReportCB09(id).then(response => {
			form.value = response.data;
			open.value = true;
			title.value = "修改";
		});
	}

	/** 删除按钮操作 */
	function handleDelete(row) {
		const id = row.id;
		// const h= this.$createElement
		proxy.$modal.confirmHtml('是否确认删除ID为<span style="font-size:42px;color:red;">' + id + '</span>的数据项？').then(
	function() {
			return deleteTestReportCB09(id);
		}).then(() => {
			getList();
			proxy.$modal.msgSuccess("删除成功");
		}).catch(() => {});
	};

	/** 提交按钮 */
	function submitForm() {
		proxy.$refs["testReportCB09Ref"].validate(valid => {
			if (valid) {
				if (form.value.id != undefined) {
					updateTestReportCB09(form.value).then(response => {
						proxy.$modal.msgSuccess("修改成功");
						open.value = false;
						getList();
					});
				} else {
					insertTestReportCB09(form.value).then(response => {
						proxy.$modal.msgSuccess("新增成功");
						open.value = false;
						getList();
					});
				}
			}
		});
	}

	/** 取消按钮 */
	function cancel() {
		open.value = false;
		reset();
	}

	getList();
</script>

<style>
</style>