<template>
	<view>
		<uni-forms :modelValue="turangData" style="margin-top: 10px;" label-position="top">
			<uni-forms-item label="土壤名称" name="name">
				<uni-easyinput type="text" v-model="turangData.name" placeholder="请输入土壤名称" />
			</uni-forms-item>
			<uni-forms-item label="温度" name="wendu">
				<uni-easyinput type="text" v-model="turangData.wendu" placeholder="请输入温度" />
			</uni-forms-item>
			<uni-forms-item label="湿度" name="shidu">
				<uni-easyinput type="text" v-model="turangData.shidu" placeholder="请输入湿度" />
			</uni-forms-item>
			<uni-forms-item label="创建日期" name="createdate">
				<!-- <uni-easyinput type="text" v-model="turangData.createdate" placeholder="请输入创建日期" /> -->
				<uni-datetime-picker type="datetime" v-model="turangData.createdate" @change="changeLog" />
			</uni-forms-item>
		</uni-forms>
		<button @click="addTurang">提交</button>
	</view>
</template>

<script>
	import {
		addTurang
	} from '@/api/system/turang';
	export default {
		data() {
			return {
				turangData: {
					name: '',
					wendu: '',
					shidu: '',
					createdate: ''
				},
				rules: {}
			}
		},
		methods: {
			change(e) {
				this.single = e;
				console.log("-change事件:", e);
			},
			addTurang() {
				addTurang(this.turangData).then(res => {
					console.log(555);
					console.log(res);
					this.$modal.msgSuccess("添加成功！");
				})
				// console.log(this.userData);
				// const req = uni.request({
				// 	url:"/api/user/addUser",
				// 	data: JSON.stringify(this.userData),
				// 	method:"post",
				// 	header:{ "Content-Type":"application/json"},
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
</style>