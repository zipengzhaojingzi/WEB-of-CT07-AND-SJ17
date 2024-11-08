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

			<uni-forms-item label="施工时间" name="sgsj">
				<uni-datetime-picker v-model="sj17Data.sgsj" placeholder="" type="date" />
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
					sgsj: ''
				},
				rules: {}
			}
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