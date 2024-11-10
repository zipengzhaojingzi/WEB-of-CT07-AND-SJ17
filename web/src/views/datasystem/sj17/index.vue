<template>
	<div class="app-container">
		<el-row :gutter="24">
			<!--用户数据-->
			<el-col :span="24" :xs="24">
				<el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
					<el-form-item label="合同号" prop="hth">
						<el-input v-model="queryParams.hth" placeholder="请输入合同号" clearable style="width: 240px"
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

				<el-table v-loading="loading" :data="userList" @selection-change="handleSelectionChange">
					<el-table-column type="selection" width="50" align="center" />
					<el-table-column label="合同号" align="center" key="hth" prop="hth" />
					<el-table-column label="施工单位" align="center" key="sgdw" prop="sgdw" />
					<el-table-column label="监理单位" align="center" key="jldw" prop="jldw" />
					<el-table-column label="施工时间" align="center" key="sgsj" prop="sgsj" />


					<el-table-column label="操作" align="center" width="150" class-name="small-padding fixed-width">
						<template #default="scope">
							<el-tooltip content="查看详情" placement="top" v-if="scope.row.id !== 1">
								<el-button link type="primary"  icon="view" @click="Detail(scope.row)"
									v-hasPermi="['system:user:remove']"></el-button>
								<!-- there are some places needed to modify -->
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

		<!-- 添加或修改数据配置对话框 -->
		<el-dialog :title="title" v-model="open" width="600px" append-to-body>
			<el-form :model="form" :rules="rules" ref="userRef" label-width="80px">
				<el-row>
					<el-col :span="12">
						<el-form-item label="合同号" prop="hth">
							<el-input v-model="form.hth" placeholder="请输入合同号" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="施工单位" prop="sgdw">
							<el-input v-model="form.sgdw" placeholder="请输入施工单位" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="12">
						<el-form-item label="监理单位" prop="jldw">
							<el-input v-model="form.jldw" placeholder="请输入监理单位" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="编号" prop="bh">
							<el-input v-model="form.bh" placeholder="请输入编号" maxlength="30" />
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
						<el-form-item label="施工时间" prop="sgsj">
							<!-- <el-input v-model="form.sgsj" placeholder="请输入施工时间" maxlength="30" /> -->
							<el-date-picker v-model="form.sgsj" value-format="YYYY-MM-DD" type="date"
								style="width: 100%;"></el-date-picker>
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="24"> 
						<el-form-item  label="桩号及工程部位" prop="zhjgcbw" label-width="110px">
							<el-input  v-model="form.zhjgcbw" placeholder="请输入桩号及工程部位" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="12">
						<el-form-item label="结构类型" prop="jglx">
							<el-input v-model="form.jglx" placeholder="请输入结构类型" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="拌合方式" prop="bhfs">
							<el-select v-model="form.bhfs" placeholder="请输入拌合方式" style="width: 100%">
          <el-option label="设备集中拌和" value="设备集中拌和" />
        </el-select>
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="12">
						<el-form-item label="压实厚度(cm)" prop="yshd"  label-width="110px"	>
							<!-- <el-input v-model="form.yshd" placeholder="请输入压实厚度(cm)" maxlength="30" /> -->
							<el-select v-model="form.yshd" placeholder="请输入压实厚度(cm)" style="width: 100%">
          <el-option label="8" value="8" />
          <el-option label="6" value="6" />
          <el-option label="4" value="4" />
        </el-select>
						</el-form-item>
				
					</el-col>
					<el-col :span="12">
						<el-form-item label="每盘用料" prop="mpyl">
							<el-input v-model="form.mpyl" placeholder="请输入每盘用料" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row><el-row>
					<el-col :span="12">
						<el-form-item label="宽度(m)" prop="kd">
							<el-input v-model="form.kd" placeholder="请输入宽度(m)" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="出料温度" prop="clwd">
							<el-input v-model="form.clwd" placeholder="请输入出料温度" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row><el-row>
					<el-col :span="12">
						<el-form-item label="横坡(%)" prop="hp">
							<el-select v-model="form.hp" placeholder="请输入横坡(%)" style="width: 100%">
          <el-option label="2" value="2" />
          <el-option label="3" value="3" />
          <el-option label="4" value="4" />
          <el-option label="5" value="5" />
        </el-select>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="油石比检查" prop="ysbjc"  label-width="110px">
							<el-input v-model="form.ysbjc" placeholder="请输入油石比检查" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row><el-row>
					<el-col :span="12">
						<el-form-item label="油石比(%)" prop="ysb">
							<el-input v-model="form.ysb" placeholder="请输入油石比(%)" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="运输方式" prop="ysfs">
							<el-select v-model="form.ysfs" placeholder="请输入运输方式" style="width: 100%">
          <el-option label="覆盖篷布自卸式运输车" value="覆盖篷布自卸式运输车" />
        </el-select>
						</el-form-item>
					</el-col>
				</el-row><el-row>
					
					<el-col :span="12">
						<el-form-item label="沥青检验情况" prop="lqjcqk"  label-width="110px">
							<el-input v-model="form.lqjcqk" placeholder="请输入沥青检验情况" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="到达温度" prop="ddwd">
							<el-input v-model="form.ddwd" placeholder="请输入到达温度" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row><el-row>
					<el-col :span="12">
						<el-form-item label="摊铺方法" prop="tpff">
							<el-select v-model="form.tpff" placeholder="请输入摊铺方法" style="width: 100%">
          <el-option label="沥青摊铺机摊铺" value="沥青摊铺机摊铺" />
        </el-select>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="摊铺温度" prop="tpwd">
						
							<el-input v-model="form.tpwd" placeholder="请输入摊铺温度" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row><el-row>
					<el-col :span="12">
						<el-form-item label="粗料集岩石名称" prop="cjlysmc"  label-width="110px">
							<el-select v-model="form.cjlysmc" placeholder="请输入粗料集岩石名称" style="width: 100%">
          <el-option label="花岗岩" value="花岗岩" />
          <el-option label="石灰岩" value="石灰岩" />
        </el-select>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="平整度" prop="pzd">
							<el-select v-model="form.pzd" placeholder="请输入平整度" style="width: 100%">
          <el-option label="表面平整" value="表面平整" />
        </el-select>
						</el-form-item>
					</el-col>
				</el-row><el-row>
					<el-col :span="12">
						<el-form-item label="填充料类别" prop="tcllb"  label-width="110px">
							<el-select v-model="form.tcllb" placeholder="请输入填充料类别" style="width: 100%">
          <el-option label="矿粉" value="矿粉" />
        </el-select>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="厚度" prop="hd">
							<el-select v-model="form.hd" placeholder="请输入厚度" style="width: 100%">
          <el-option label="符合设计及规范要求" value="符合设计及规范要求" />
        </el-select>
						</el-form-item>
					</el-col>
				</el-row><el-row>
					<el-col :span="12">
						<el-form-item label="集料配合比" prop="jlphb"  label-width="110px">
							<el-input v-model="form.jlphb" placeholder="请输入集料配合比" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="摊铺横坡" prop="tphp">
							<el-select v-model="form.tphp" placeholder="请输入摊铺横坡" style="width: 100%">
          <el-option label="符合设计及规范要求" value="符合设计及规范要求" />
        </el-select>
						</el-form-item>
					</el-col>
				</el-row><el-row>
					<el-col :span="12">
						<el-form-item label="现场级配情况" prop="xcjpqk"  label-width="110px">
							<el-select v-model="form.xcjpqk" placeholder="请输入现场级配情况" style="width: 100%">
          <el-option label="符合设计及规范要求" value="符合设计及规范要求" />
        </el-select>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="碾压机具" prop="nyjj">
							<el-select v-model="form.nyjj" placeholder="请输入碾压机具" style="width: 100%">
          <el-option label="单钢轮、双钢轮、胶轮压路机" value="单钢轮、双钢轮、胶轮压路机" />
        </el-select>
						</el-form-item>
					</el-col>
				</el-row><el-row>
					<el-col :span="12">
						<el-form-item label="料场防污染措施" prop="lcfwrcs"  label-width="110px">
							<el-select v-model="form.lcfwrcs" placeholder="请输入料场防污染措施" style="width: 100%">
          <el-option label="场地硬化，排水措施良好" value="场地硬化，排水措施良好" />
        </el-select>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="碾压遍数" prop="nybs">
							<el-select v-model="form.nybs" placeholder="请输入碾压遍数" style="width: 100%">
          <el-option label="6遍" value="6遍" />
          <el-option label="7遍" value="7遍" />
          <el-option label="8遍" value="8遍" />
        </el-select>
						</el-form-item>
					</el-col>
				</el-row><el-row>
					<el-col :span="12">
						<el-form-item label="掺配情况" prop="cpqk">
							<el-input v-model="form.cpqk" placeholder="请输入掺配情况" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="碾压质量" prop="nyzl">
							<el-select v-model="form.nyzl" placeholder="请输入碾压质量" style="width: 100%">
          <el-option label="表面平整、无松散、无泛油现象" value="表面平整、无松散、无泛油现象" />
        </el-select>
						</el-form-item>
					</el-col>
				</el-row><el-row>
					<el-col :span="12">
						<el-form-item label="加温记录" prop="jwjl">
							<el-input v-model="form.jwjl" placeholder="请输入加温记录" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="碾压温度" prop="nywd">
							<el-input v-model="form.nywd" placeholder="请输入碾压温度" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row><el-row>
					<el-col :span="12">
						<el-form-item label="矿料加热温度" prop="kljrwd"  label-width="110px">
							<el-input v-model="form.kljrwd" placeholder="请输入矿料加热温度" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="碾压结束温度" prop="nyjswd" label-width="110px">
							<el-input v-model="form.nyjswd" placeholder="请输入碾压结束温度" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row><el-row>
					<el-col :span="12">
						<el-form-item label="开工气温" prop="kgqw">
							<el-input v-model="form.kgqw" placeholder="请输入开工气温" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="结束气温" prop="jsqw">
							<el-input v-model="form.jsqw" placeholder="请输入结束气温" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="24">
						<el-form-item label="气候变化情况" prop="qwbhqk"  label-width="110px">
							<el-input v-model="form.qwbhqk" placeholder="气候变化情况" maxlength="30" />
						</el-form-item>
					</el-col>
				</el-row><el-row>
					<el-col :span="12">
						<el-form-item label="施工员" prop="sgy">
							<el-input v-model="form.sgy" placeholder="请输入施工员" maxlength="30" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="专业工程师" prop="zygcs"  label-width="110px">
							<el-input v-model="form.zygcs" placeholder="请输入专业工程师" maxlength="30" />
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

		<!-- 数据导入对话框 -->
		<el-dialog :title="upload.title" v-model="upload.open" width="400px" append-to-body>
			<el-upload ref="uploadRef" :limit="1" accept=".xlsx, .xls" :headers="upload.headers"
				:action="upload.url + '?updateSupport=' + upload.updateSupport" :disabled="upload.isUploading"
				:on-progress="handleFileUploadProgress" :on-success="handleFileSuccess" :auto-upload="false" drag>
				<el-icon class="el-icon--upload"><upload-filled /></el-icon>
				<div class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
				<template #tip>
					<div class="el-upload__tip text-center">
						<div class="el-upload__tip">
							<el-checkbox v-model="upload.updateSupport" />是否更新已经存在的数据数据
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

<script setup hth="User">
	import {
		getToken
	} from "@/utils/auth";
	import {
		getSj17s,
		getSj17,
		addSj17,
		editSj17,
		deleteSj17
	} from "@/api/system/sj17";
	import {
		useRouter
	} from 'vue-router';
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
	/*** 数据导入参数 */
	const upload = reactive({
		// 是否显示弹出层（数据导入）
		open: false,
		// 弹出层标题（数据导入）
		title: "",
		// 是否禁用上传
		isUploading: false,
		// 是否更新已经存在的数据数据
		updateSupport: 0,
		// 设置上传的请求头部
		headers: {
			Authorization: "Bearer " + getToken()
		},
		// 上传的地址
		url: import.meta.env.VITE_APP_BASE_API + "/system/user/importData"
	});

	const data = reactive({
		form: {},
		queryParams: {
			pageNum: 1,
			pageSize: 10,
			hth: undefined
		},
		rules: {
			userName: [{
				required: true,
				message: "数据名称不能为空",
				trigger: "blur"
			}, {
				min: 2,
				max: 20,
				message: "数据名称长度必须介于 2 和 20 之间",
				trigger: "blur"
			}],
			nickName: [{
				required: true,
				message: "数据昵称不能为空",
				trigger: "blur"
			}],
			password: [{
				required: true,
				message: "数据密码不能为空",
				trigger: "blur"
			}, {
				min: 5,
				max: 20,
				message: "数据密码长度必须介于 5 和 20 之间",
				trigger: "blur"
			}, {
				pattern: /^[^<>"'|\\]+$/,
				message: "不能包含非法字符：< > \" ' \\\ |",
				trigger: "blur"
			}],
			email: [{
				type: "email",
				message: "请输入正确的邮箱地址",
				trigger: ["blur", "change"]
			}],
			phonenumber: [{
				pattern: /^1[3|4|5|6|7|8|9][0-9]\d{8}$/,
				message: "请输入正确的手机号码",
				trigger: "blur"
			}]
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

	/** 查询数据列表 */
	function getList() {
		loading.value = true;
		console.log(555);
		getSj17s(queryParams.value).then(res => {
			console.log(123);
			console.log(res);
			loading.value = false;
			userList.value = res.data.list;
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
		const sj17Ids = row.id || ids.value;
		proxy.$modal.confirm('是否确认删除数据编号为"' + sj17Ids + '"的数据项？').then(function() {
			return deleteSj17(sj17Ids);
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
		upload.title = "数据导入";
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
			id: undefined,
			hth: undefined,
			sgdw: undefined,
			jldw: undefined,
			sgsj: undefined,
			bh: undefined,
			gcmc: undefined,
			zhjgcbw: undefined,
			jglx: undefined,
			bhfs: undefined,
			yshd: undefined,
			mpyl: undefined,
			kd: undefined,
			clwd: undefined,
			hp: undefined,
			ysbjc: undefined,
			ysb: undefined,
			ysfs: undefined,
			lqjcqk: undefined,
			ddwd: undefined,
			tpff: undefined,
			tpwd: undefined,
			cjlysmc: undefined,
			pzd: undefined,
			tcllb: undefined,
			hd: undefined,
			jlphb: undefined,
			tphp: undefined,
			xcjpqk: undefined,
			nyjj: undefined,
			lcfwrcs: undefined,
			nybs: undefined,
			cpqk: undefined,
			nyzl: undefined,
			jwjl: undefined,
			nywd: undefined,
			kljrwd: undefined,
			nyjswd: undefined,
			kgqw: undefined,
			jsqw: undefined,
			qwbhqk: undefined,
			sgy: undefined,
			zygcs: undefined,
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
	reset();
		
		open.value = true;
		title.value = "添加数据";
	};

	/** 修改按钮操作 */
	function handleUpdate(row) {
		reset();
		const id = row.id || ids.value;
		getSj17(id).then(response => {
			form.value = response.data;
			open.value = true;
			title.value = "修改数据";
		});
	};

	/** 提交按钮 */
	function submitForm() {
		proxy.$refs["userRef"].validate(valid => {
			if (valid) {
				if (form.value.id != undefined) {
					editSj17(form.value).then(response => {
						proxy.$modal.msgSuccess("修改成功");
						open.value = false;
						getList();
					});
				} else {
					addSj17(form.value).then(response => {
						proxy.$modal.msgSuccess("新增成功");
						open.value = false;
						getList();
					});
				}
				reset()
			}
		});
	};
	//const router = useRouter()
	const Detail = (row) => {
		console.log(row)
		console.log(row.id)
		router.push({
			path: "/detailsj17",
			query: {
				id: row.id
			}
		})
		//this.$router.push({ name: 'page', query: { id: '001' } })
	}

	getList();
</script>