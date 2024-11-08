<template>
	<view>
		<uni-forms :modelValue="form" style="margin-top: 10px;" label-position="left">
			<!-- <uni-forms-item label="土壤名称" name="name">
				<uni-easyinput type="text" v-model="form.name" placeholder="请输入土壤名称" />
			</uni-forms-item> -->
			<uni-forms-item label="检测单位名称" name="jcdwmc" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.jcdwmc" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="记录编号" name="jlbh" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.jlbh" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="工程名称" name="gcmc" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.gcmc" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="合同段" name="htd" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.htd" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="施工单位" name="sgdw" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.sgdw" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="监理单位" name="jldw" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.jldw" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="工程部位/用途" name="gcbwyt" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.gcbwyt" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="样品信息" name="ypxx" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.ypxx" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="试验检测日期" name="syjcrq" style="width: 300px;" labelWidth="100px">
				<uni-datetime-picker type="date" v-model="form.syjcrq" @change="changeLog" />
			</uni-forms-item>
			<uni-forms-item label="温度" name="wd" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.wd" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="相对湿度" name="xdsd" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.xdsd" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="检测依据" name="jcyj" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.jcyj" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="判定依据" name="pdyj" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.pdyj" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="主要仪器设备名称及编号" name="zyyqsbmcjbh" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.zyyqsbmcjbh" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="取样地点" name="qydd" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.qydd" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="取样深度" name="qysd" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.qysd" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="取样日期" name="qyrq" style="width: 300px;" labelWidth="100px">
				<uni-datetime-picker type="date" v-model="form.qyrq" @change="changeLog" />
			</uni-forms-item>
			<uni-forms-item label="最大干密度" name="zdgmd" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.zdgmd" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="最佳含水率" name="zjhsl" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.zjhsl" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="每层击数" name="mcjs" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.mcjs" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="贯入杆面积A" name="grgmjA" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.grgmjA" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="a(N/0.01mm)" name="a" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.a" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="b(N)" name="b" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.b" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="测力环校正系数" name="clhjzxs" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.clhjzxs" placeholder="" />
			</uni-forms-item>

			<view class="hr-line"></view>
			<!-- 第一个筒 -->
			<uni-forms-item label="筒号" name="th1" style="width: 300px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.th1" placeholder="" />
			</uni-forms-item>
			<uni-table :data="form.aList" style="width: 100%" border stripe class="table-bordered">
				<uni-tr>
					<uni-th>测力环百分表读数</uni-th>
					<uni-th>左</uni-th>
					<uni-th>右</uni-th>
				</uni-tr>
				<uni-tr v-for="(item, index) in form.aList" :key="index">
					<uni-td>
						<uni-easyinput type="text" v-model="item.clhbfbds1" placeholder="" />
					</uni-td>
					<uni-td>
						<uni-easyinput type="text" v-model="item.z1" placeholder="" />
					</uni-td>
					<uni-td>
						<uni-easyinput type="text" v-model="item.y1" placeholder="" />
					</uni-td>
				</uni-tr>
			</uni-table>

			<view class="hr-line"></view>
			<!-- 第二个筒 -->
			<uni-forms-item label="筒号" name="th2" style="width: 300px;margin-top: 20px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.th2" placeholder="" />
			</uni-forms-item>
			<uni-table :data="form.bList" style="width: 100%" border stripe class="table-bordered">
				<uni-tr>
					<uni-th>测力环百分表读数</uni-th>
					<uni-th>左</uni-th>
					<uni-th>右</uni-th>
				</uni-tr>
				<uni-tr v-for="(item, index) in form.bList" :key="index">
					<uni-td>
						<uni-easyinput type="text" v-model="item.clhbfbds1" placeholder="" />
					</uni-td>
					<uni-td>
						<uni-easyinput type="text" v-model="item.z1" placeholder="" />
					</uni-td>
					<uni-td>
						<uni-easyinput type="text" v-model="item.y1" placeholder="" />
					</uni-td>
				</uni-tr>
			</uni-table>

			<view class="hr-line"></view>
			<!-- 第三个筒 -->
			<uni-forms-item label="筒号" name="th3" style="width: 300px;margin-top: 20px;" labelWidth="100px">
				<uni-easyinput type="text" v-model="form.th3" placeholder="" />
			</uni-forms-item>
			<uni-table :data="form.cList" style="width: 100%" border stripe class="table-bordered">
				<uni-tr>
					<uni-th>测力环百分表读数</uni-th>
					<uni-th>左</uni-th>
					<uni-th>右</uni-th>
				</uni-tr>
				<uni-tr v-for="(item, index) in form.cList" :key="index">
					<uni-td>
						<uni-easyinput type="text" v-model="item.clhbfbds1" placeholder="" />
					</uni-td>
					<uni-td>
						<uni-easyinput type="text" v-model="item.z1" placeholder="" />
					</uni-td>
					<uni-td>
						<uni-easyinput type="text" v-model="item.y1" placeholder="" />
					</uni-td>
				</uni-tr>
			</uni-table>

		</uni-forms>
		<button @click="addCT07" style="color: white;background-color: blue;margin-top: 20px;">提交</button>
	</view>
</template>

<script setup>
	// import {
	// 	ref
	// } from 'vue';
	// const input = ref('')
	import {

		addCT07
	} from '@/api/system/ct07';
	export default {
		data() {
			return {
				form: {
					jcdwmc: '', // 检测单位名称
					jlbh: '', // 记录编号
					gcmc: '', // 工程名称
					htd: '', // 合同段
					sgdw: '', // 施工单位
					jldw: '', // 监理单位
					gcbwyt: '', // 工程部位/用途
					ypxx: '', // 样品信息
					syjcrq: '', // 试验检测日期
					wd: '', // 温度
					xdsd: '', // 相对湿度
					jcyj: '', // 检测依据
					pdyj: '', // 判断依据
					zyyqsbmcjbh: '', // 主要仪器设备名称及编号
					qydd: '', // 取样地点
					qysd: '', // 取样深度
					qyrq: '', // 取样日期
					zdgmd: '', // 最大干密度
					zjhsl: '', // 最佳含水率
					mcjs: '', // 每层击数
					grgmjA: '', // 贯入杆面积A
					a: '', // 测力环回归方程中的a值
					b: '', // 测力环回归方程中的b值
					clhjzxs: '', // 测力环校正系数
					th1: '', // 筒号
					th2: '', // 筒号
					th3: '', // 筒号

					aList: [{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						}
					],
					bList: [{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						}
					],
					cList: [{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						},
						{
							clhbfbds1: '',
							z1: '',
							y1: ''
						}
					]
				},
				rules: {}
			}
		},
		methods: {
			change(e) {
				this.single = e;
				console.log("-change事件:", e);
			},
			addCT07() {
				addCT07(this.form).then(res => {
					console.log(555);
					console.log(res);
					this.$modal.msgSuccess("添加成功！");
				})
			}
		}
	}
</script>

<style>
	/* #ifndef H5 */
	/* page {
		padding-top: 85px;
	} */
	/* #endif */
	.uni-forms {
		display: flex;
		align-items: center;
		background-color: aliceblue;
	}


	td {
		background-color: aliceblue;
	}

	.hr-line {
		border-bottom: 5px solid #ccc;
		/* 可以根据需要调整颜色和粗细 */
		margin: 20px 0;
		/* 上下边距可以根据需要调整 */
	}
</style>