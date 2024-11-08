<template>
	<!-- <div class="app-container">
		<!-- <div>详情页查询并显示</div> -->
	<!-- </div> -->
	<table id="ct07Table">
		<table>
			<tr>
				<td colspan="18" style="text-align: left;font-size: smaller;">土工试表CT07</td>
			</tr>
			<tr>
				<td colspan="18" style="font-weight: 700;">土承载比（CBR）试验检测记录表 <br>（贯入试验）（二）</td>
			</tr>
			<tr>
				<td colspan="3">检测单位名称:</td>
				<td colspan="9">{{form.jcdwmc}}</td>
				<td colspan="3">记录编号:</td>
				<td colspan="3">{{form.jlbh}}</td>
			</tr>
			<tr>
				<td colspan="3">工程名称</td>
				<td colspan="6">{{form.gcmc}}</td>
				<td colspan="3">合同段</td>
				<td colspan="6">{{form.htd}}</td>
			</tr>
			<tr>
				<td colspan="3">施工单位</td>
				<td colspan="6">{{form.sgdw}}</td>
				<td colspan="3">监理单位</td>
				<td colspan="6">{{form.jldw}}</td>
			</tr>
			<tr>
				<td colspan="3">工程部位/用途</td>
				<td colspan="15">{{form.gcbwyt}}</td>
			</tr>
			<tr>
				<td colspan="3">样品信息</td>
				<td colspan="15">{{form.ypxx}}</td>
			</tr>
			<tr>
				<td colspan="3">试验检测日期</td>
				<td colspan="6">{{form.syjcrq}}</td>
				<td colspan="3">试验条件</td>
				<td colspan="6" style="text-align: center;">温度:{{form.wd}}℃，相对湿度:{{form.xdsd}}%</td>
			</tr>
			<tr>
				<td colspan="3">检测依据</td>
				<td colspan="6">{{form.jcyj}}</td>
				<td colspan="3">判定依据</td>
				<td colspan="6">{{form.pdyj}}</td>
			</tr>
			<tr>
				<td colspan="3">主要仪器设备名称及编号</td>
				<td colspan="15">{{form.zyyqsbmcjbh}}</td>
			</tr>
			<tr>
				<td colspan="3">取样地点</td>
				<td colspan="4">{{form.qydd}}</td>
				<td colspan="2">取样深度</td>
				<td colspan="3">{{form.qysd}}</td>
				<td colspan="1">取样日期</td>
				<td colspan="5">{{form.qyrq}}</td>
			</tr>
			<tr>
				<td colspan="3">最大干密度(g/cm³)</td>
				<td colspan="2">{{form.zdgmd}}</td>
				<td colspan="2">最佳含水率(%)</td>
				<td colspan="1">{{form.zjhsl}}</td>
				<td colspan="3">每层击数</td>
				<td colspan="1">50</td>
				<td colspan="4">贯入杆面积A(cm²)</td>
				<td colspan="2">{{form.grgmjA}}</td>
			</tr>
			<tr>
				<td colspan="4">测力环回归方程y=ax+b</td>
				<td colspan="1">a(N/0.01mm)=</td>
				<td colspan="2">{{form.a}}</td>
				<td colspan="1">b(N)=</td>
				<td colspan="2">{{form.b}}</td>
				<td colspan="4">测力环校正系数(N/0.01mm)</td>
				<td colspan="4">{{form.clhjzxs}}</td>
			</tr>
			<tr>
				<td colspan="1">筒号</td>
				<td colspan="5">{{form.th1}}</td>

				<td colspan="1">筒号</td>
				<td colspan="5">{{form.th2}}</td>

				<td colspan="1">筒号</td>
				<td colspan="5">{{form.th3}}</td>
			</tr>
			<tr>
				<td colspan="1" rowspan="2">测力环百分表读数(0.01mm)</td>
				<td colspan="1" rowspan="2">单位压力(kPa)</td>
				<td colspan="3">贯入量百分表读数(0.01mm)</td>
				<td colspan="1" rowspan="2">贯入量(mm)</td>
				<td colspan="1" rowspan="2">测力环百分表读数(0.01mm)</td>
				<td colspan="1" rowspan="2">单位压力(kPa)</td>
				<td colspan="3">贯入量百分表读数(0.01mm)</td>
				<td colspan="1" rowspan="2">贯入量(mm)</td>
				<td colspan="1" rowspan="2">测力环百分表读数(0.01mm)</td>
				<td colspan="1" rowspan="2">单位压力(kPa)</td>
				<td colspan="3">贯入量百分表读数(0.01mm)</td>
				<td colspan="1" rowspan="2">贯入量(mm)</td>
			</tr>
			<tr>
				<td colspan="1">左</td>
				<td colspan="1">右</td>
				<td colspan="1">平均值</td>
				<td colspan="1">左</td>
				<td colspan="1">右</td>
				<td colspan="1">平均值</td>
				<td colspan="1">左</td>
				<td colspan="1">右</td>
				<td colspan="1">平均值</td>
			</tr>
			<tr>
				<td colspan="1" style="height: 40px;">{{form.aList[0].clhbfbds1}}</td>
				<td colspan="1">{{form.aList[0].dwyl1}}</td>
				<td colspan="1">{{form.aList[0].z1}}</td>
				<td colspan="1">{{form.aList[0].y1}}</td>
				<td colspan="1">{{form.aList[0].pjz1}}</td>
				<td colspan="1">{{form.aList[0].grl1}}</td>
				<td colspan="1">{{form.bList[0].clhbfbds1}}</td>
				<td colspan="1">{{form.bList[0].dwyl1}}</td>
				<td colspan="1">{{form.bList[0].z1}}</td>
				<td colspan="1">{{form.bList[0].y1}}</td>
				<td colspan="1">{{form.bList[0].pjz1}}</td>
				<td colspan="1">{{form.bList[0].grl1}}</td>
				<td colspan="1">{{form.cList[0].clhbfbds1}}</td>
				<td colspan="1">{{form.cList[0].dwyl1}}</td>
				<td colspan="1">{{form.cList[0].z1}}</td>
				<td colspan="1">{{form.cList[0].y1}}</td>
				<td colspan="1">{{form.cList[0].pjz1}}</td>
				<td colspan="1">{{form.cList[0].grl1}}</td>
			</tr>
			<tr>
				<td colspan="1" style="height: 40px;">{{form.aList[1].clhbfbds1}}</td>
				<td colspan="1">{{form.aList[1].dwyl1}}</td>
				<td colspan="1">{{form.aList[1].z1}}</td>
				<td colspan="1">{{form.aList[1].y1}}</td>
				<td colspan="1">{{form.aList[1].pjz1}}</td>
				<td colspan="1">{{form.aList[1].grl1}}</td>
				<td colspan="1">{{form.bList[1].clhbfbds1}}</td>
				<td colspan="1">{{form.bList[1].dwyl1}}</td>
				<td colspan="1">{{form.bList[1].z1}}</td>
				<td colspan="1">{{form.bList[1].y1}}</td>
				<td colspan="1">{{form.bList[1].pjz1}}</td>
				<td colspan="1">{{form.bList[1].grl1}}</td>
				<td colspan="1">{{form.cList[1].clhbfbds1}}</td>
				<td colspan="1">{{form.cList[1].dwyl1}}</td>
				<td colspan="1">{{form.cList[1].z1}}</td>
				<td colspan="1">{{form.cList[1].y1}}</td>
				<td colspan="1">{{form.cList[1].pjz1}}</td>
				<td colspan="1">{{form.cList[1].grl1}}</td>
			</tr>
			<tr>
				<td colspan="1" style="height: 40px;">{{form.aList[2].clhbfbds1}}</td>
				<td colspan="1">{{form.aList[2].dwyl1}}</td>
				<td colspan="1">{{form.aList[2].z1}}</td>
				<td colspan="1">{{form.aList[2].y1}}</td>
				<td colspan="1">{{form.aList[2].pjz1}}</td>
				<td colspan="1">{{form.aList[2].grl1}}</td>
				<td colspan="1">{{form.bList[2].clhbfbds1}}</td>
				<td colspan="1">{{form.bList[2].dwyl1}}</td>
				<td colspan="1">{{form.bList[2].z1}}</td>
				<td colspan="1">{{form.bList[2].y1}}</td>
				<td colspan="1">{{form.bList[2].pjz1}}</td>
				<td colspan="1">{{form.bList[2].grl1}}</td>
				<td colspan="1">{{form.cList[2].clhbfbds1}}</td>
				<td colspan="1">{{form.cList[2].dwyl1}}</td>
				<td colspan="1">{{form.cList[2].z1}}</td>
				<td colspan="1">{{form.cList[2].y1}}</td>
				<td colspan="1">{{form.cList[2].pjz1}}</td>
				<td colspan="1">{{form.cList[2].grl1}}</td>
			</tr>
			<tr>
				<td colspan="1" style="height: 40px;">{{form.aList[3].clhbfbds1}}</td>
				<td colspan="1">{{form.aList[3].dwyl1}}</td>
				<td colspan="1">{{form.aList[3].z1}}</td>
				<td colspan="1">{{form.aList[3].y1}}</td>
				<td colspan="1">{{form.aList[3].pjz1}}</td>
				<td colspan="1">{{form.aList[3].grl1}}</td>
				<td colspan="1">{{form.bList[3].clhbfbds1}}</td>
				<td colspan="1">{{form.bList[3].dwyl1}}</td>
				<td colspan="1">{{form.bList[3].z1}}</td>
				<td colspan="1">{{form.bList[3].y1}}</td>
				<td colspan="1">{{form.bList[3].pjz1}}</td>
				<td colspan="1">{{form.bList[3].grl1}}</td>
				<td colspan="1">{{form.cList[3].clhbfbds1}}</td>
				<td colspan="1">{{form.cList[3].dwyl1}}</td>
				<td colspan="1">{{form.cList[3].z1}}</td>
				<td colspan="1">{{form.cList[3].y1}}</td>
				<td colspan="1">{{form.cList[3].pjz1}}</td>
				<td colspan="1">{{form.cList[3].grl1}}</td>
			</tr>
			<tr>
				<td colspan="1" style="height: 40px;">{{form.aList[4].clhbfbds1}}</td>
				<td colspan="1">{{form.aList[4].dwyl1}}</td>
				<td colspan="1">{{form.aList[4].z1}}</td>
				<td colspan="1">{{form.aList[4].y1}}</td>
				<td colspan="1">{{form.aList[4].pjz1}}</td>
				<td colspan="1">{{form.aList[4].grl1}}</td>
				<td colspan="1">{{form.bList[4].clhbfbds1}}</td>
				<td colspan="1">{{form.bList[4].dwyl1}}</td>
				<td colspan="1">{{form.bList[4].z1}}</td>
				<td colspan="1">{{form.bList[4].y1}}</td>
				<td colspan="1">{{form.bList[4].pjz1}}</td>
				<td colspan="1">{{form.bList[4].grl1}}</td>
				<td colspan="1">{{form.cList[4].clhbfbds1}}</td>
				<td colspan="1">{{form.cList[4].dwyl1}}</td>
				<td colspan="1">{{form.cList[4].z1}}</td>
				<td colspan="1">{{form.cList[4].y1}}</td>
				<td colspan="1">{{form.cList[4].pjz1}}</td>
				<td colspan="1">{{form.cList[4].grl1}}</td>
			</tr>
			<tr>
				<td colspan="1" style="height: 40px;">{{form.aList[5].clhbfbds1}}</td>
				<td colspan="1">{{form.aList[5].dwyl1}}</td>
				<td colspan="1">{{form.aList[5].z1}}</td>
				<td colspan="1">{{form.aList[5].y1}}</td>
				<td colspan="1">{{form.aList[5].pjz1}}</td>
				<td colspan="1">{{form.aList[5].grl1}}</td>
				<td colspan="1">{{form.bList[5].clhbfbds1}}</td>
				<td colspan="1">{{form.bList[5].dwyl1}}</td>
				<td colspan="1">{{form.bList[5].z1}}</td>
				<td colspan="1">{{form.bList[5].y1}}</td>
				<td colspan="1">{{form.bList[5].pjz1}}</td>
				<td colspan="1">{{form.bList[5].grl1}}</td>
				<td colspan="1">{{form.cList[5].clhbfbds1}}</td>
				<td colspan="1">{{form.cList[5].dwyl1}}</td>
				<td colspan="1">{{form.cList[5].z1}}</td>
				<td colspan="1">{{form.cList[5].y1}}</td>
				<td colspan="1">{{form.cList[5].pjz1}}</td>
				<td colspan="1">{{form.cList[5].grl1}}</td>
			</tr>
			<tr>
				<td colspan="1" style="height: 40px;">{{form.aList[6].clhbfbds1}}</td>
				<td colspan="1">{{form.aList[6].dwyl1}}</td>
				<td colspan="1">{{form.aList[6].z1}}</td>
				<td colspan="1">{{form.aList[6].y1}}</td>
				<td colspan="1">{{form.aList[6].pjz1}}</td>
				<td colspan="1">{{form.aList[6].grl1}}</td>
				<td colspan="1">{{form.bList[6].clhbfbds1}}</td>
				<td colspan="1">{{form.bList[6].dwyl1}}</td>
				<td colspan="1">{{form.bList[6].z1}}</td>
				<td colspan="1">{{form.bList[6].y1}}</td>
				<td colspan="1">{{form.bList[6].pjz1}}</td>
				<td colspan="1">{{form.bList[6].grl1}}</td>
				<td colspan="1">{{form.cList[6].clhbfbds1}}</td>
				<td colspan="1">{{form.cList[6].dwyl1}}</td>
				<td colspan="1">{{form.cList[6].z1}}</td>
				<td colspan="1">{{form.cList[6].y1}}</td>
				<td colspan="1">{{form.cList[6].pjz1}}</td>
				<td colspan="1">{{form.cList[6].grl1}}</td>
			</tr>
			<tr>
				<td colspan="1" style="height: 40px;">{{form.aList[7].clhbfbds1}}</td>
				<td colspan="1">{{form.aList[7].dwyl1}}</td>
				<td colspan="1">{{form.aList[7].z1}}</td>
				<td colspan="1">{{form.aList[7].y1}}</td>
				<td colspan="1">{{form.aList[7].pjz1}}</td>
				<td colspan="1">{{form.aList[7].grl1}}</td>
				<td colspan="1">{{form.bList[7].clhbfbds1}}</td>
				<td colspan="1">{{form.bList[7].dwyl1}}</td>
				<td colspan="1">{{form.bList[7].z1}}</td>
				<td colspan="1">{{form.bList[7].y1}}</td>
				<td colspan="1">{{form.bList[7].pjz1}}</td>
				<td colspan="1">{{form.bList[7].grl1}}</td>
				<td colspan="1">{{form.cList[7].clhbfbds1}}</td>
				<td colspan="1">{{form.cList[7].dwyl1}}</td>
				<td colspan="1">{{form.cList[7].z1}}</td>
				<td colspan="1">{{form.cList[7].y1}}</td>
				<td colspan="1">{{form.cList[7].pjz1}}</td>
				<td colspan="1">{{form.cList[7].grl1}}</td>
			</tr>
			<tr>
				<td colspan="1" style="height: 40px;">{{form.aList[8].clhbfbds1}}</td>
				<td colspan="1">{{form.aList[8].dwyl1}}</td>
				<td colspan="1">{{form.aList[8].z1}}</td>
				<td colspan="1">{{form.aList[8].y1}}</td>
				<td colspan="1">{{form.aList[8].pjz1}}</td>
				<td colspan="1">{{form.aList[8].grl1}}</td>
				<td colspan="1">{{form.bList[8].clhbfbds1}}</td>
				<td colspan="1">{{form.bList[8].dwyl1}}</td>
				<td colspan="1">{{form.bList[8].z1}}</td>
				<td colspan="1">{{form.bList[8].y1}}</td>
				<td colspan="1">{{form.bList[8].pjz1}}</td>
				<td colspan="1">{{form.bList[8].grl1}}</td>
				<td colspan="1">{{form.cList[8].clhbfbds1}}</td>
				<td colspan="1">{{form.cList[8].dwyl1}}</td>
				<td colspan="1">{{form.cList[8].z1}}</td>
				<td colspan="1">{{form.cList[8].y1}}</td>
				<td colspan="1">{{form.cList[8].pjz1}}</td>
				<td colspan="1">{{form.cList[8].grl1}}</td>
			</tr>
			<tr>
				<td colspan="1" style="height: 40px;">{{form.aList[9].clhbfbds1}}</td>
				<td colspan="1">{{form.aList[9].dwyl1}}</td>
				<td colspan="1">{{form.aList[9].z1}}</td>
				<td colspan="1">{{form.aList[9].y1}}</td>
				<td colspan="1">{{form.aList[9].pjz1}}</td>
				<td colspan="1">{{form.aList[9].grl1}}</td>
				<td colspan="1">{{form.bList[9].clhbfbds1}}</td>
				<td colspan="1">{{form.bList[9].dwyl1}}</td>
				<td colspan="1">{{form.bList[9].z1}}</td>
				<td colspan="1">{{form.bList[9].y1}}</td>
				<td colspan="1">{{form.bList[9].pjz1}}</td>
				<td colspan="1">{{form.bList[9].grl1}}</td>
				<td colspan="1">{{form.cList[9].clhbfbds1}}</td>
				<td colspan="1">{{form.cList[9].dwyl1}}</td>
				<td colspan="1">{{form.cList[9].z1}}</td>
				<td colspan="1">{{form.cList[9].y1}}</td>
				<td colspan="1">{{form.cList[9].pjz1}}</td>
				<td colspan="1">{{form.cList[9].grl1}}</td>
			</tr>
			<tr>
				<td colspan="1" style="height: 40px;">{{form.aList[10].clhbfbds1}}</td>
				<td colspan="1">{{form.aList[10].dwyl1}}</td>
				<td colspan="1">{{form.aList[10].z1}}</td>
				<td colspan="1">{{form.aList[10].y1}}</td>
				<td colspan="1">{{form.aList[10].pjz1}}</td>
				<td colspan="1">{{form.aList[10].grl1}}</td>
				<td colspan="1">{{form.bList[10].clhbfbds1}}</td>
				<td colspan="1">{{form.bList[10].dwyl1}}</td>
				<td colspan="1">{{form.bList[10].z1}}</td>
				<td colspan="1">{{form.bList[10].y1}}</td>
				<td colspan="1">{{form.bList[10].pjz1}}</td>
				<td colspan="1">{{form.bList[10].grl1}}</td>
				<td colspan="1">{{form.cList[10].clhbfbds1}}</td>
				<td colspan="1">{{form.cList[10].dwyl1}}</td>
				<td colspan="1">{{form.cList[10].z1}}</td>
				<td colspan="1">{{form.cList[10].y1}}</td>
				<td colspan="1">{{form.cList[10].pjz1}}</td>
				<td colspan="1">{{form.cList[10].grl1}}</td>
			</tr>
			<tr>
				<td colspan="1" style="height: 40px;">{{form.aList[11].clhbfbds1}}</td>
				<td colspan="1">{{form.aList[11].dwyl1}}</td>
				<td colspan="1">{{form.aList[11].z1}}</td>
				<td colspan="1">{{form.aList[11].y1}}</td>
				<td colspan="1">{{form.aList[11].pjz1}}</td>
				<td colspan="1">{{form.aList[11].grl1}}</td>
				<td colspan="1">{{form.bList[11].clhbfbds1}}</td>
				<td colspan="1">{{form.bList[11].dwyl1}}</td>
				<td colspan="1">{{form.bList[11].z1}}</td>
				<td colspan="1">{{form.bList[11].y1}}</td>
				<td colspan="1">{{form.bList[11].pjz1}}</td>
				<td colspan="1">{{form.bList[11].grl1}}</td>
				<td colspan="1">{{form.cList[11].clhbfbds1}}</td>
				<td colspan="1">{{form.cList[11].dwyl1}}</td>
				<td colspan="1">{{form.cList[11].z1}}</td>
				<td colspan="1">{{form.cList[11].y1}}</td>
				<td colspan="1">{{form.cList[11].pjz1}}</td>
				<td colspan="1">{{form.cList[11].grl1}}</td>
			</tr>
		</table>
		<el-button link type="primary" @click="genExcel()">生成excel</el-button>
	</table>
</template>

<script>
	import {
		getCT07,
		editCT07,
		addCT07
	} from "@/api/system/ct07";

	import $ from 'jquery';

	export default {
		data() {
			return {
				form: {
					id: undefined,
					jcdwmc: undefined, // 检测单位名称
					jlbh: undefined, // 记录编号
					gcmc: undefined, // 工程名称
					htd: undefined, // 合同段
					sgdw: undefined, // 施工单位
					jldw: undefined, // 监理单位
				},
			};
		},

		created() {
			var id = location.search.split("=")[1];
			console.log("ID是：" + id);
			this.handleSet(id);
			console.log(111);
		},

		methods: {
			handleSet(id) {
				getCT07(id).then(response => {
					console.log(response.data);
					this.form = response.data;
				});
			},

			submitForm() {
				if (this.form.id !== undefined) {
					editCT07(this.form).then(response => {
						this.$modal.msgSuccess("修改成功");
						//   this.open = false;
						this.getList();
					});
				} else {
					addCT07(this.form).then(response => {
						this.$modal.msgSuccess("新增成功");
						//   this.open = false;
						this.getList();
					});
				}
			},
			getList() {
				// 获取列表的逻辑
				console.log("获取列表");
			},
			genExcel() {
				$('#ct07Table').table2excel({
					name: "土承载比试验表格",
					filename: "土承载比试验表格",
					exclude_img: true,
					exclude_links: true,
					exclude_inputs: true
				})
			}
		}
	};

	/** 导出按钮操作 */
	function handleExport() {
		proxy.download("exportExcel", {
			...queryParams.value,
		}, `user_${new Date().getTime()}.xlsx`);
	};
</script>

<style>
	/* .equal-width-table td {
		width: 100px;
	} */

	table {
		border-collapse: collapse;
		width: 70%;
		margin-top: 10px;
		margin-left: 10px;
		margin-bottom: 10px;
	}

	th,
	td {
		border: 1px solid black;
		padding: 8px;
		text-align: center;
	}
</style>