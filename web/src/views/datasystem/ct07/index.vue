<template>
	<div class="app-container">
		<el-row :gutter="24">
			<!--用户数据-->
			<el-col :span="24" :xs="24">
				<el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
					<el-form-item label="记录编号" prop="jlbh">
						<el-input v-model="queryParams.jlbh" placeholder="请输入记录编号" clearable style="width: 240px"
							@keyup.enter="handleQuery" />
					</el-form-item>
					<el-form-item>
						<el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
						<el-button icon="Refresh" @click="resetQuery">重置</el-button>
					</el-form-item>
				</el-form>

				<el-row :gutter="10" class="mb8">
					<el-col :span="1.5">
						<el-button type="primary" plain icon="Plus" @click="handleAdd"
							v-hasPermi="['system:user:add']">新增</el-button>
					</el-col>
					<el-col :span="1.5">
						<el-button type="success" plain icon="Edit" :disabled="single" @click="handleUpdate"
							v-hasPermi="['system:user:edit']">修改</el-button>
					</el-col>
					<el-col :span="1.5">
						<el-button type="danger" plain icon="Delete" :disabled="multiple" @click="handleDelete"
							v-hasPermi="['system:user:remove']">删除</el-button>
					</el-col>
					<el-col :span="1.5">
						<el-button type="info" plain icon="Upload" @click="handleImport"
							v-hasPermi="['system:user:import']">导入</el-button>
					</el-col>
					<el-col :span="1.5">
						<el-button type="warning" plain icon="Download" @click="handleExport"
							v-hasPermi="['system:user:export']">导出</el-button>
					</el-col>
					<right-toolbar v-model:showSearch="showSearch" @queryTable="getList"
						:columns="columns"></right-toolbar>
				</el-row>

				<el-table v-loading="loading" :data="userList" @selection-change="handleSelectionChange" border
					style="width: 100%;">
					<el-table-column type="selection" width="50" align="center" />

					<el-table-column label="检测单位名称" align="center" key="jcdwmc" prop="jcdwmc" width="150" />
					<el-table-column label="记录编号" align="center" key="jlbh" prop="jlbh" width="150" />
					<el-table-column label="工程名称" align="center" key="gcmc" prop="gcmc" width="100" />
					<el-table-column label="合同段" align="center" key="htd" prop="htd" width="100" />
					<el-table-column label="施工单位" align="center" key="sgdw" prop="sgdw" />
					<el-table-column label="监理单位" align="center" key="jldw" prop="jldw" />
					<el-table-column label="工程部位/用途" align="center" key="gcbwyt" prop="gcbwyt" />
					<el-table-column label="样品信息" align="center" key="ypxx" prop="ypxx" />
					<el-table-column label="试验检测日期" align="center" key="syjcrq" prop="syjcrq" />
					<el-table-column label="温度" align="center" key="wd" prop="wd" />
					<el-table-column label="相对湿度" align="center" key="xdsd" prop="xdsd" />
					<el-table-column label="检测依据" align="center" key="jcyj" prop="jcyj" />
					<el-table-column label="判断依据" align="center" key="pdyj" prop="pdyj" />
					<el-table-column label="主要仪器设备名称及编号" align="center" key="zyyqsbmcjbh" prop="zyyqsbmcjbh" />
					<el-table-column label="取样地点" align="center" key="qydd" prop="qydd" />
					<el-table-column label="取样深度" align="center" key="qysd" prop="qysd" />
					<el-table-column label="取样日期" align="center" key="qyrq" prop="qyrq" />
					<el-table-column label="最大干密度" align="center" key="zdgmd" prop="zdgmd" />
					<el-table-column label="最大含水率" align="center" key="zjhsl" prop="zjhsl" />
					<el-table-column label="每层击数" align="center" key="mcjs" prop="mcjs" />
					<el-table-column label="贯入杆面积A" align="center" key="grgmjA" prop="grgmjA" />
					<el-table-column label="a" align="center" key="a" prop="a" />
					<el-table-column label="b" align="center" key="b" prop="b" />
					<el-table-column label="测力环校正系数" align="center" key="clhjzxs" prop="clhjzxs" />
					<el-table-column label="筒号" align="center" key="th1" prop="th1" />
					<el-table-column label="筒号" align="center" key="th2" prop="th2" />
					<el-table-column label="筒号" align="center" key="th3" prop="th3" />

					<el-table-column label="操作" align="center" width="150" class-name="small-padding fixed-width">
						<template #default="scope">
							<el-tooltip content="查看详情" placement="top" v-if="scope.row.id !== 1">
								<el-button link type="primary" icon="view" @click="Detail(scope.row)"
								v-hasPermi="['Details']"></el-button>
							</el-tooltip>
							<el-tooltip content="修改" placement="top" v-if="scope.row.id !== 1">
								<el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)"
									v-hasPermi="['system:user:edit']"></el-button>
							</el-tooltip>
							<el-tooltip content="删除" placement="top" v-if="scope.row.id !== 1">
								<el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)"
									v-hasPermi="['system:user:remove']"></el-button>
							</el-tooltip>
						</template>
					</el-table-column>
				</el-table>
				<pagination v-show="total > 0" :total="total" v-model:page="queryParams.pageNum"
					v-model:limit="queryParams.pageSize" @pagination="getList" />
			</el-col>
		</el-row>

		<!-- 添加或修改 土承载比试验检测记录数据 配置对话框 -->
		<el-dialog :title="title" v-model="open" width="1000px" str append-to-body>
			<!-- <div style="margin: 0px auto;width: 800px865;"> -->
			<el-form :model="form" :rules="rules" ref="userRef" label-width="80px">
				<el-row>
					<el-col :span="14">
						<el-form-item label="检测单位名称" prop="jcdwmc" label-width="110px">
							<el-input v-model="form.jcdwmc" placeholder="请输入检测单位名称" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="10">
						<el-form-item label="记录编号" prop="jlbh">
							<el-input v-model="form.jlbh" placeholder="请输入记录编号" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="12">
						<el-form-item label="工程名称" prop="gcmc">
							<el-input v-model="form.gcmc" placeholder="请输入工程名称" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="合同段" prop="htd">
							<el-input v-model="form.htd" placeholder="请输入合同段" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="12">
						<el-form-item label="施工单位" prop="sgdw">
							<el-input v-model="form.sgdw" placeholder="请输入施工单位" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="监理单位" prop="jldw">
							<el-input v-model="form.jldw" placeholder="请输入监理单位" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="24">
						<el-form-item label="工程部位/用途" prop="gcbwyt" label-width="110px">
							<el-input v-model="form.gcbwyt" placeholder="请输入工程部位/用途" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="24">
						<el-form-item label="样品信息" prop="ypxx">
							<el-input v-model="form.ypxx" placeholder="请输入样品信息" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="10">
						<el-form-item label="试验检测日期" prop="syjcrq" label-width="110px">
							<el-date-picker v-model="form.syjcrq" value-format="YYYY-MM-DD" type="date"
								style="width: 100%;"></el-date-picker>
						</el-form-item>
					</el-col>
					<el-col :span="2">
						<el-form-item label="试验条件" prop="syjcrq" label-width="80px">
						</el-form-item>
					</el-col>
					<el-col :span="6">
						<el-form-item label="温度" prop="wd">
							<el-input v-model="form.wd" placeholder="请输入温度" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="6">
						<el-form-item label="相对湿度" prop="xdsd">
							<el-input v-model="form.xdsd" placeholder="请输入相对湿度" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="12">
						<el-form-item label="检测依据" prop="jcyj">
							<el-input v-model="form.jcyj" placeholder="请输入检测依据" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="判断依据" prop="pdyj">
							<el-input v-model="form.pdyj" placeholder="请输入判断依据" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="24">
						<el-form-item label="主要仪器设备名称及编号" prop="zyyqsbmcjbh" label-width="180px">
							<el-input v-model="form.zyyqsbmcjbh" placeholder="请输入主要仪器设备名称及编号" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="8">
						<el-form-item label="取样地点" prop="qydd">
							<el-input v-model="form.qydd" placeholder="请输入取样地点" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="6">
						<el-form-item label="取样深度" prop="qysd">
							<el-input v-model="form.qysd" placeholder="请输入取样深度" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="10">
						<el-form-item label="取样日期" prop="qyrq">
							<el-date-picker v-model="form.qyrq" value-format="YYYY-MM-DD" type="date"
								style="width: 100%;"></el-date-picker>
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="6">
						<el-form-item label="最大干密度" prop="zdgmd" label-width="100px">
							<el-input v-model="form.zdgmd" placeholder="请输入最大干密度" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="6">
						<el-form-item label="最佳含水率" prop="zjhsl" label-width="100px">
							<el-input v-model="form.zjhsl" placeholder="请输入最佳含水率" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="4">
						<el-form-item label="每层击数" prop="mcjs">
							<el-input v-model="form.mcjs" placeholder="请输入每层击数" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="8">
						<el-form-item label="贯入杆面积A" prop="grgmjA" label-width="110px">
							<el-input v-model="form.grgmjA" placeholder="请输入贯入杆面积A" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="4">
						<el-form-item label="测力环回归方程y=ax+b" prop="syjcrq" label-width="200px">
						</el-form-item>
					</el-col>
					<el-col :span="5">
						<el-form-item label="a" prop="a">
							<el-input v-model="form.a" placeholder="请输入a值" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="5">
						<el-form-item label="b" prop="b">
							<el-input v-model="form.b" placeholder="请输入b值" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="8">
						<el-form-item label="测力环校正系数" prop="clhjzxs" label-width="140px">
							<el-input v-model="form.clhjzxs" placeholder="请输入测力环校正系数" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row>

				<el-row>
					<!-- 第一个筒表格 开始 -->
					<el-col :span="8">
						<el-form-item label="筒号" prop="th1">
							<el-input v-model="form.th1" placeholder="请输入筒号" maxlength="30" />
						</el-form-item>
						<el-table :data="form.aList" style="width: 100%" border stripe class="table-bordered">

							<!-- 	<el-table-column prop="th1" align="center" width="250">
								<template #header>
									<el-form-item style="margin-bottom: 1px;" label="筒号" prop="th1">
										<el-input v-model="form.th1" placeholder="请输入筒号" maxlength="30" />
									</el-form-item>
								</template> -->

							<el-table-column prop="clhbfbds1" label="测力环百分表读数" align="center" width="60">
								<template #default="scope">
									<el-input v-model="scope.row.clhbfbds1" style="width: 35px" />
								</template>
							</el-table-column>
							<el-table-column prop="dwyl1" label="单位压力" align="center" width="60">
								<template #default="scope">
									<el-input v-model="scope.row.dwyl1" style="width: 35px" />
								</template>
							</el-table-column>
							<el-table-column label="贯入量百分表读数" align="center" width="155">
								<el-table-column prop="z1" label="左" align="center" width="50">
									<template #default="scope">
										<el-input v-model="scope.row.z1" style="width: 35px" />
									</template>
								</el-table-column>
								<el-table-column prop="y1" label="右" align="center" width="50">
									<template #default="scope">
										<el-input v-model="scope.row.y1" style="width: 35px" />
									</template>
								</el-table-column>
								<el-table-column prop="pjz1" label="平均值" align="center" width="50">
									<template #default="scope">
										<el-input v-model="scope.row.pjz1" style="width: 35px" />
									</template>
								</el-table-column>
							</el-table-column>
							<el-table-column prop="grl1" label="贯入量" align="center" width="55">
								<template #default="scope">
									<el-input v-model="scope.row.grl1" style="width: 35px" />
								</template>
							</el-table-column>
						</el-table>
					</el-col>
					<!-- 第一个筒表格 结束-->

					<!-- 第二个筒表格 开始-->
					<el-col :span="8">
						<el-form-item label="筒号" prop="th2">
							<el-input v-model="form.th2" placeholder="请输入筒号" maxlength="30" />
						</el-form-item>
						<el-table :data="form.bList" style="width: 100%" border stripe class="table-bordered">
							<el-table-column prop="clhbfbds1" label="测力环百分表读数" align="center" width="60">
								<template #default="scope">
									<el-input v-model="scope.row.clhbfbds1" style="width: 35px" />
								</template>
							</el-table-column>
							<el-table-column prop="dwyl1" label="单位压力" align="center" width="60">
								<template #default="scope">
									<el-input v-model="scope.row.dwyl1" style="width: 35px" />
								</template>
							</el-table-column>
							<el-table-column label="贯入量百分表读数" align="center" width="155">
								<el-table-column prop="z1" label="左" align="center" width="50">
									<template #default="scope">
										<el-input v-model="scope.row.z1" style="width: 35px" />
									</template>
								</el-table-column>
								<el-table-column prop="y1" label="右" align="center" width="50">
									<template #default="scope">
										<el-input v-model="scope.row.y1" style="width: 35px" />
									</template>
								</el-table-column>
								<el-table-column prop="pjz1" label="平均值" align="center" width="50">
									<template #default="scope">
										<el-input v-model="scope.row.pjz1" style="width: 35px" />
									</template>
								</el-table-column>
							</el-table-column>
							<el-table-column prop="grl1" label="贯入量" align="center" width="55">
								<template #default="scope">
									<el-input v-model="scope.row.grl1" style="width: 35px" />
								</template>
							</el-table-column>
						</el-table>
					</el-col>
					<!-- 第二个筒表格 结束-->

					<!-- 第三个筒表格 开始-->
					<el-col :span="8">
						<el-form-item label="筒号" prop="th3">
							<el-input v-model="form.th3" placeholder="请输入筒号" maxlength="30" />
						</el-form-item>
						<el-table :data="form.cList" style="width: 100%" border stripe class="table-bordered">
							<el-table-column prop="clhbfbds1" label="测力环百分表读数" align="center" width="60">
								<template #default="scope">
									<el-input v-model="scope.row.clhbfbds1" style="width: 35px" />
								</template>
							</el-table-column>
							<el-table-column prop="dwyl1" label="单位压力" align="center" width="60">
								<template #default="scope">
									<el-input v-model="scope.row.dwyl1" style="width: 35px" />
								</template>
							</el-table-column>
							<el-table-column label="贯入量百分表读数" align="center" width="155">
								<el-table-column prop="z1" label="左" align="center" width="50">
									<template #default="scope">
										<el-input v-model="scope.row.z1" style="width: 35px" />
									</template>
								</el-table-column>
								<el-table-column prop="y1" label="右" align="center" width="50">
									<template #default="scope">
										<el-input v-model="scope.row.y1" style="width: 35px" />
									</template>
								</el-table-column>
								<el-table-column prop="pjz1" label="平均值" align="center" width="50">
									<template #default="scope">
										<el-input v-model="scope.row.pjz1" style="width: 35px" />
									</template>
								</el-table-column>
							</el-table-column>
							<el-table-column prop="grl1" label="贯入量" align="center" width="55">
								<template #default="scope">
									<el-input v-model="scope.row.grl1" style="width: 35px" />
								</template>
							</el-table-column>
						</el-table>
					</el-col>
					<!-- 第三个筒表格 结束-->
				</el-row>
				<!-- 	<el-row>
					<el-col :span="8">
						<el-form-item label="采集数据的时间" prop="time" label-width="110px" style="margin-top: 20px;">
							<el-date-picker v-model="form.time" value-format="YYYY-MM-DD HH:mm:ss" type="date"
								style="width: 100%;"></el-date-picker>
						</el-form-item>
					</el-col>
					<el-col :span="8">
						<el-form-item label="采集数据的地点" prop="position" label-width="110px" style="margin-top: 20px;">
							<el-input v-model="form.position" placeholder="请输入采集数据的时间" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="8">
						<el-form-item label="采集人员编号" prop="userid" label-width="110px" style="margin-top: 20px;">
							<el-input v-model="form.userid" placeholder="请输入采集数据的时间" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row> -->
			</el-form>
			<template #footer>
				<div class="dialog-footer">
					<el-button type="primary" @click="submitForm">确 定</el-button>
					<el-button @click="cancel">取 消</el-button>
				</div>
			</template>
		</el-dialog>

		<!-- 土壤数据导入对话框 -->
		<el-dialog :title="upload.title" v-model="upload.open" width="400px" append-to-body>
			<el-upload ref="uploadRef" :limit="1" accept=".xlsx, .xls" :headers="upload.headers"
				:action="upload.url + '?updateSupport=' + upload.updateSupport" :disabled="upload.isUploading"
				:on-progress="handleFileUploadProgress" :on-success="handleFileSuccess" :auto-upload="false" drag>
				<el-icon class="el-icon--upload"><upload-filled /></el-icon>
				<div class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
				<template #tip>
					<div class="el-upload__tip text-center">
						<div class="el-upload__tip">
							<el-checkbox v-model="upload.updateSupport" />是否更新已经存在的土壤数据数据
						</div>
						<span>仅允许导入xls、xlsx格式文件。</span>
						<el-link type="primary" :underline="false" style="font-size:12px;vertical-align: baseline;"
							@click="importTemplate">下载模板</el-link>
					</div>
				</template>
			</el-upload>
			<template #footer>
				<div class="dialog-footer">
					<el-button type="primary" @click="submitFileForm">确 定</el-button>
					<el-button @click="upload.open = false">取 消</el-button>
				</div>
			</template>
		</el-dialog>
	</div>
</template>

<script setup name="User">
	
	import {
		ref
	} from 'vue'
	const input = ref('')

	import {
		getToken
	} from "@/utils/auth";
	import {
		getCT07s,
		getCT07,
		addCT07,
		editCT07,
		deleteCT07
	} from "@/api/system/ct07";

	
const router = useRouter();
	const {
		proxy
	} = getCurrentInstance();

	const userList = ref([]);
	const open = ref(false);
	const loading = ref(true);
	const showSearch = ref(true);
	const ids = ref([]);
	const single = ref(true);
	const multiple = ref(true);
	const total = ref(0);
	const title = ref("");
	const dateRange = ref([]);
	const deptName = ref("");
	const deptOptions = ref(undefined);
	const initPassword = ref(undefined);
	const postOptions = ref([]);
	const roleOptions = ref([]);
	/*** 土壤数据导入参数 */
	const upload = reactive({
		// 是否显示弹出层（土壤数据导入）
		open: false,
		// 弹出层标题（土壤数据导入）
		title: "",
		// 是否禁用上传
		isUploading: true,
		// 是否更新已经存在的土壤数据数据
		updateSupport: 0,
		// 设置上传的请求头部
		headers: {
			Authorization: "Bearer " + getToken()
		},
		// 上传的地址
		url: import.meta.env.VITE_APP_BASE_API + "/system/user/importData"
	});
// 	const sessionId = localStorage.getItem('sessionId') || '';
// if (!sessionId) {
//     const newSessionId = Math.random().toString(36).substr(2, 9); // 生成随机会话 ID
//     localStorage.setItem('sessionId', newSessionId);
// }

	const data = reactive({
		form: {
			aList: [{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				}
			],
			bList: [{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				}
			],
			cList: [{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				},
				{
					th1: '',
					clhbfbds1: '',
					dwyl1: '',
					z1: '',
					y1: '',
					pjz1: '',
					grl1: ''
				}
			]
		},
		queryParams: {
			pageNum: 1,
			pageSize: 50,
			name: undefined
		},
		rules: {
			// 	jcdwmc: [{
			// 		required: true,
			// 		message: "检测单位名称不能为空",
			// 		trigger: "blur"
			// 	}],
			// 	jlbh: [{
			// 		required: true,
			// 		message: "记录编号不能为空",
			// 		trigger: "blur"
			// 	}],
		}
	});

	const {
		queryParams,
		form,
		rules
	} = toRefs(data);

	/** 通过条件过滤节点  */
	const filterNode = (value, data) => {
		if (!value) return true;
		return data.label.indexOf(value) !== -1;
	};

	/** 查询土壤数据列表 */
	function getList() {
		loading.value = true;
		console.log(555);
		getCT07s(queryParams.value).then(res => {
			console.log(123);
			console.log(res);
			loading.value = false;
			var list = res.data.list;
			list.forEach(e => {

			})
			console.log(list);
			userList.value = list;
			total.value = res.data.total;
		});
	};



	/** 节点单击事件 */
	function handleNodeClick(data) {
		queryParams.value.deptId = data.id;
		handleQuery();
	};

	/** 搜索按钮操作 */
	function handleQuery() {
		queryParams.value.pageNum = 1;
		getList();
	};

	/** 重置按钮操作 */
	function resetQuery() {
		//dateRange.value = [];
		proxy.resetForm("queryRef");
		//queryParams.value.deptId = undefined;
		//proxy.$refs.deptTreeRef.setCurrentKey(null);
		handleQuery();
	};

	/** 删除按钮操作 */
	function handleDelete(row) {
		const ct07Ids = row.id || ids.value;
		proxy.$modal.confirm('是否确认删除土壤数据编号为"' + ct07Ids + '"的数据项？').then(function() {
			return deleteCT07(ct07Ids);
		}).then(() => {
			getList();
			proxy.$modal.msgSuccess("删除成功");
		}).catch(() => {});
	};

	/** 导出按钮操作 */
	function handleExport() {
		proxy.download("system/user/export", {
			...queryParams.value,
		}, `user_${new Date().getTime()}.xlsx`);
	};

	/** 更多操作 */
	function handleCommand(command, row) {
		switch (command) {
			case "handleResetPwd":
				handleResetPwd(row);
				break;
			case "handleAuthRole":
				handleAuthRole(row);
				break;
			default:
				break;
		}
	};

	/** 选择条数  */
	function handleSelectionChange(selection) {
		ids.value = selection.map(item => item.id);
		single.value = selection.length != 1;
		multiple.value = !selection.length;
	};

	/** 导入按钮操作 */
	function handleImport() {
		upload.title = "土壤数据导入";
		upload.open = true;
	};

	/** 下载模板操作 */
	function importTemplate() {
		proxy.download("system/user/importTemplate", {}, `user_template_${new Date().getTime()}.xlsx`);
	};

	/**文件上传中处理 */
	const handleFileUploadProgress = (event, file, fileList) => {
		upload.isUploading = true;
	};
	const Detail = (row) => {
		console.log(row)
		console.log(row.id)
		router.push({
			path: "/detailct07",
			query: {
				id: row.id
			}
		})
	}


	/** 文件上传成功处理 */
	const handleFileSuccess = (response, file, fileList) => {
		upload.open = false;
		upload.isUploading = false;
		proxy.$refs["uploadRef"].handleRemove(file);
		proxy.$alert("<div style='overflow: auto;overflow-x: hidden;max-height: 70vh;padding: 10px 20px 0;'>" +
			response.msg + "</div>", "导入结果", {
				dangerouslyUseHTMLString: true
			});
		getList();
	};

	/** 提交上传文件 */
	function submitFileForm() {
		proxy.$refs["uploadRef"].submit();
	};

	/** 重置操作表单 */
	function reset() {
		form.value = {
			jcdwmc: undefined, // 检测单位名称
			jlbh: undefined, // 记录编号
			gcmc: undefined, // 工程名称
			htd: undefined, // 合同段
			sgdw: undefined, // 施工单位
			jldw: undefined, // 监理单位
			gcbwyt: undefined, // 工程部位/用途
			ypxx: undefined, // 样品信息
			syjcrq: undefined, // 试验检测日期
			wd: undefined, // 温度
			xdsd: undefined, // 相对湿度
			jcyj: undefined, // 检测依据
			pdyj: undefined, // 判断依据
			zyyqsbmcjbh: undefined, // 主要仪器设备名称及编号
			qydd: undefined, // 取样地点
			qysd: undefined, // 取样深度
			qyrq: undefined, // 取样日期
			zdgmd: undefined, // 最大干密度
			zjhsl: undefined, // 最佳含水率
			mcjs: undefined, // 每层击数
			grgmjA: undefined, // 贯入杆面积A
			a: undefined, // 测力环回归方程中的a值
			b: undefined, // 测力环回归方程中的b值
			clhjzxs: undefined, // 测力环校正系数
			th1: undefined, // 筒号
			clhbfbds1: undefined, // 测力环百分表读数
			dwyl1: undefined, // 单位压力
			z1: undefined, // 贯入量百分表读数左
			y1: undefined, // 贯入量百分表读数右
			pjz1: undefined, // 平均值
			grl1: undefined // 贯入量
		};
		proxy.resetForm("userRef");
	};

	/** 取消按钮 */
	function cancel() {
		open.value = false;
		reset();
	};

	/** 新增按钮操作 */
	function handleAdd() {
		open.value = true;
		title.value = "添加土承载比试验检测记录数据";
	};

	/** 修改按钮操作 */
	function handleUpdate(row) {
		reset();
		const id = row.id || ids.value;
		getCT07(id).then(response => {
			console.log(888)
			console.log(response.data)
			form.value = response.data;
			loading.value = false;

			open.value = true;
			title.value = "土承载比试验检测记录土壤数据";
		});
	};

	/** 提交按钮 */
	function submitForm() {
		proxy.$refs["userRef"].validate(valid => {
			if (valid) {
				if (form.value.id != undefined) {
					editCT07(form.value).then(response => {
						proxy.$modal.msgSuccess("修改成功");
						open.value = false;
						getList();
					});
				} else {
					addCT07(form.value).then(response => {
						proxy.$modal.msgSuccess("新增成功");
						open.value = false;
						getList();
					});
				}
				reset()
			}
		});
	};

	getList();
</script>

/* <style>
	.table-bordered .el-table__body-wrapper {
		border: 1px solid #ebeef5;
		border-bottom: 0;
	}

	td {
		border: 1px solid black;
		padding: 8px;
		text-align: center;
	}
</style> */