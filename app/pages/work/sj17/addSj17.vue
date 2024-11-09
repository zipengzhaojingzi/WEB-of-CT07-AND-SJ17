<template>
	<view>
		<uni-forms ref="form" modelValue="sj17Data" labelWidth="100px">

			<uni-forms-item label="合同号" name="hth">
				<uni-easyinput v-model="sj17Data.hth" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="施工单位" name="sgdw">
				<uni-easyinput v-model="sj17Data.sgdw" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="监理单位" name="jldw">
				<uni-easyinput v-model="sj17Data.jldw" placeholder="" />
			</uni-forms-item>

			<uni-forms-item label="编号" name="bh">
				<uni-easyinput v-model="sj17Data.bh" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="工程名称" name="gcmc">
				<uni-easyinput v-model="sj17Data.gcmc" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="施工时间" name="sgsj">
				<uni-datetime-picker v-model="sj17Data.sgsj" placeholder="" type="date" />
			</uni-forms-item>
			<uni-forms-item label="桩号和工程部位" name="zhhgcbw">
				<uni-easyinput v-model="sj17Data.zhhgcbw" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="结构类型" name="jglx">
				<uni-easyinput v-model="sj17Data.jglx" placeholder="" />
			</uni-forms-item>
			<!-- <uni-forms-item label="拌和方式" name="bhfs">
				<uni-easyinput v-model="sj17Data.bhfs" placeholder="" />
			</uni-forms-item> -->
			<uni-section title="拌和方式" style="margin-bottom: 20px;">
				<uni-data-select v-model="sj17Data.bhfs" :localdata="rangebhfs" @change="change"></uni-data-select>
			</uni-section>
			<!-- <uni-forms-item label="压实厚度(cm)" name="yshd">
				<uni-easyinput v-model="sj17Data.yshd" placeholder="" />
			</uni-forms-item> -->
			<uni-section title="压实厚度(cm)" style="margin-bottom: 20px;">
				<uni-data-select v-model="sj17Data.yshd" :localdata="rangeyshd" @change="change"></uni-data-select>
			</uni-section>
			<uni-forms-item label="每盘用料" name="mpyl">
				<uni-easyinput v-model="sj17Data.mpyl" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="宽度(m)" name="kd">
				<uni-easyinput v-model="sj17Data.kd" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="出料温度" name="clwd">
				<uni-easyinput v-model="sj17Data.clwd" placeholder="" />
			</uni-forms-item>
			<uni-section title="横坡(%)" style="margin-bottom: 20px;">
				<uni-data-select v-model="sj17Data.hp" :localdata="rangehp" @change="change"></uni-data-select>
			</uni-section>
			<uni-forms-item label="油石比检查" name="ysbjc">
				<uni-easyinput v-model="sj17Data.ysbjc" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="油石比" name="ysb">
				<uni-easyinput v-model="sj17Data.ysb" placeholder="" />
			</uni-forms-item>

			<uni-section title="运输方式" style="margin-bottom: 20px;">
				<uni-data-select v-model="sj17Data.ysfs" :localdata="rangeysfs" @change="change"></uni-data-select>
			</uni-section>
			<uni-forms-item label="沥青检验情况" name="lqjcqk">
				<uni-easyinput v-model="sj17Data.lqjcqk" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="到达温度" name="ddwd">
				<uni-easyinput v-model="sj17Data.ddwd" placeholder="" />
			</uni-forms-item>
			<uni-section title="摊铺方法" style="margin-bottom: 20px;">
				<uni-data-select v-model="sj17Data.tpff" :localdata="rangetpff" @change="change"></uni-data-select>
			</uni-section>
			<uni-forms-item label="摊铺温度" name="tpwd">
				<uni-easyinput v-model="sj17Data.tpwd" placeholder="" />
			</uni-forms-item>

			<uni-section title="粗集料岩石名称" style="margin-bottom: 20px;">
				<uni-data-select v-model="sj17Data.cjlysmc" :localdata="rangecjlysmc"
					@change="change"></uni-data-select>
			</uni-section>

			<uni-section title="平整度" style="margin-bottom: 20px;">
				<uni-data-select v-model="sj17Data.pzd" :localdata="rangepzd" @change="change"></uni-data-select>
			</uni-section>

			<uni-section title="填充料类别" style="margin-bottom: 20px;">
				<uni-data-select v-model="sj17Data.tcllb" :localdata="rangetcllb" @change="change"></uni-data-select>
			</uni-section>

			<uni-section title="厚度" style="margin-bottom: 20px;">
				<uni-data-select v-model="sj17Data.hd" :localdata="rangehd" @change="change"></uni-data-select>
			</uni-section>
			<uni-forms-item label="集料配合比" name="jlphb">
				<uni-easyinput v-model="sj17Data.jlphb" placeholder="" />
			</uni-forms-item>


			<uni-section title="摊铺——横坡" style="margin-bottom: 20px;">
				<uni-data-select v-model="sj17Data.tphp" :localdata="rangetphp" @change="change"></uni-data-select>
			</uni-section>

			<uni-section title="现场级配情况" style="margin-bottom: 20px;">
				<uni-data-select v-model="sj17Data.xcjpqk" :localdata="rangexcjpqk" @change="change"></uni-data-select>
			</uni-section>

			<uni-section title="碾压机具" style="margin-bottom: 20px;">
				<uni-data-select v-model="sj17Data.nyjj" :localdata="rangenyjj" @change="change"></uni-data-select>
			</uni-section>

			<uni-section title="料场防污染措施" style="margin-bottom: 20px;">
				<uni-data-select v-model="sj17Data.lcfwrcs" :localdata="rangelcfwrcs"
					@change="change"></uni-data-select>
			</uni-section>

			<uni-section title="碾压遍数" style="margin-bottom: 20px;">
				<uni-data-select v-model="sj17Data.nybs" :localdata="rangenybs" @change="change"></uni-data-select>
			</uni-section>
			<uni-forms-item label="掺配情况" name="cpqk">
				<uni-easyinput v-model="sj17Data.cpqk" placeholder="" />
			</uni-forms-item>

			<uni-section title="碾压质量" style="margin-bottom: 20px;">
				<uni-data-select v-model="sj17Data.nyzl" :localdata="rangenyzl" @change="change"></uni-data-select>
			</uni-section>
			<uni-forms-item label="加温记录" name="jwjl">
				<uni-easyinput v-model="sj17Data.jwjl" placeholder="" />
			</uni-forms-item>

			<uni-forms-item label="碾压温度" name="nywd">
				<uni-easyinput v-model="sj17Data.nywd" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="矿料加热温度" name="kljrwd">
				<uni-easyinput v-model="sj17Data.kljrwd" placeholder="" />
			</uni-forms-item><uni-forms-item label="碾压结束温度" name="nyjswd">
				<uni-easyinput v-model="sj17Data.nyjswd" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="开工气温" name="kgqw">
				<uni-easyinput v-model="sj17Data.kgqw" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="结束气温" name="jswd">
				<uni-easyinput v-model="sj17Data.jswd" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="施工员" name="sgy">
				<uni-easyinput v-model="sj17Data.sgy" placeholder="" />
			</uni-forms-item>
			<uni-forms-item label="专业工程师" name="zygcs">
				<uni-easyinput v-model="sj17Data.zygcs" placeholder="" />
			</uni-forms-item>

		</uni-forms>
		<view style="display: flex;justify-content: center;align-items: center;">
			<view style="width: 40%;"><button type="primary" @click="addSj17">提交</button></view>
			<view style="width: 40%;margin-left: 50rpx;"><button type="default" @click="reset">重置</button></view>
		</view>
	</view>
</template>

<script>
	import {
		addSj17
	} from '@/api/system/sj17';
	export default {
		data() {
			return {
				sj17Data: {
					sgdw: '',
					jldw: '',
					hth: '',
					sgsj: '',
					bh: '',
					gcmc: '',
					zhjgcbw: '',
					jglx: '',
					bhfs: '',
					yshd: '',
					mpyl: '',
					kd: '',
					clwd: '',
					hp: '',
					ysbjc: '',
					ysb: '',
					ysfs: '',
					lqjcqk: '',
					ddwd: '',
					tpff: '',
					tpwd: '',
					cjlysmc: '',
					pzd: '',
					tcllb: '',
					hd: '',
					jlphb: '',
					tphp: '',
					xcjpqk: '',
					nyjj: '',
					lcfwrcs: '',
					nybs: '',
					cpqk: '',
					nyzl: '',
					jwjl: '',
					nywd: '',
					kljrwd: '',
					nyjswd: '',
					kgqw: '',
					jsqw: '',
					qwbhqk: '',
					sgy: '',
					zygcs: '',
				},
				rules: {},
				rangeyshd: [{
					value: 8,
					text: "8"
				}, {
					value: 6,
					text: "6"
				}, {
					value: 4,
					text: "4"
				}, ],
				rangehp: [{
					value: 2,
					text: "2"
				}, {
					value: 3,
					text: "3"
				}, {
					value: 4,
					text: "4"
				}, {
					value: 5,
					text: "5"
				}, ],
				rangecjlysmc: [{
					value: "花岗岩",
					text: "花岗岩"
				}, {
					value: "石灰岩",
					text: "石灰岩"
				}, ],
				rangetcllb: [{
					value: "矿粉",
					text: "矿粉"
				}, ],
				rangexcjpqk: [{
					value: "符合设计及规范要求",
					text: "符合设计及规范要求"
				}, ],
				rangelcfwrcs: [{
					value: "场地硬化，排水措施良好",
					text: "场地硬化，排水措施良好"
				}, ],
				rangebhfs: [{
					value: "设备集中拌和",
					text: "设备集中拌和"
				}, ],
				rangeysfs: [{
					value: "覆盖篷布自卸式运输车",
					text: "覆盖篷布自卸式运输车"
				}, ],
				rangetpff: [{
					value: "沥青摊铺机摊铺",
					text: "沥青摊铺机摊铺"
				}, ],
				rangepzd: [{
					value: "表面平整",
					text: "表面平整"
				}, ],
				rangehd: [{
					value: "符合设计及规范要求",
					text: "符合设计及规范要求"
				}, ],
				rangetphp: [{
					value: "符合设计及规范要求",
					text: "符合设计及规范要求"
				}, ],
				rangenyjj: [{
					value: "单钢轮、双钢轮、胶轮压路机",
					text: "单钢轮、双钢轮、胶轮压路机"
				}, ],
				rangenybs: [{
					value: "6遍",
					text: "6遍"
				}, {
					value: "7遍",
					text: "7遍"
				}, {
					value: "8遍",
					text: "8遍"
				}, ],
				rangenyzl: [{
					value: "表面平整、无松散、无泛油现象",
					text: "表面平整、无松散、无泛油现象"
				}, ],

			};
		},
		methods: {
			change(e) {
				this.single = e;
				console.log("-change事件:", e);
			},
			addSj17() {
				addSj17(this.sj17Data).then(res => {
					console.log(555);
					console.log(res);
					this.$modal.msgSuccess("添加成功！");
				})
				// console.log(this.userData);
				// const req = uni.request({
				// 	url: "/api/user/addUser",
				// 	data: JSON.stringify(this.userData),
				// 	method: "post",
				// 	header: { "Content-Type": "application/json" },
				// 	success: res => {
				// 		console.log(123);
				// 		console.log(res);
				// 	}
				// })
			}
		}
	}
</script>

<style>
	.uni-forms-item {
		margin-left: 10px;
		margin-right: 10px;
	}
</style>