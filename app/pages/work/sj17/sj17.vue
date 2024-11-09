<template>
	<view class="container">
		<view class="title">

			<navigator url="addSj17" hover-class="navigator-hover">
				<button type="default" class="userbtn">add</button>
			</navigator>
		</view><!-- view 相当于div-->

		<hr>
		<!-- <view v-for="item in userList">
			<view>{{item.id}}-{{item.username}}
				-{{item.password}}</view>
		</view> -->
		<uni-list-chat v-for="item in sj17List" :avatar-circle="true" :title="item.hth" avatar=""
			:note="'施工单位：' + item.sgdw + ' 监理单位：' + item.jldw" :time="item.sgsj"></uni-list-chat>
		<hr>
	</view>
</template>

<script>
	import {
		getSj17s
	} from '@/api/system/sj17';
	export default {
		data() {
			return {
				sj17List: [{
					id: 1,
					hth: "天津土壤",
					sgdw: "12%",
					jldw: "23",
					sgsj: '2024-10-30 15:17:13'
				}]
			}
		},
		onLoad() {
			this.getTrs(1);
		},
		onPullDownRefresh() {
			console.log("向下拉一下");
			// this.getSj17s(1); // 更新第一页
			// // 定时器，2000毫秒调用里面的事件
			// setTimeout(function() {
			// 	uni.stopPullDownRefresh();// 关闭刷新
			// }, 2000)
		},
		// 触底时候调用该事件
		onReachBottom() {
			console.log("已经触底了");
			// const request =  uni.request({
			// 	url: "/api/user/getUsers",
			// 	data: {
			// 		pageIndex: 2,
			// 		pageSize: 15
			// 	},
			// 	method: "get",
			// 	success: res => {
			// 		console.log(res.data.data);
			// 		this.userList=[...this.userList, ...res.data.data];
			// 	}
			// })
		},
		methods: {
			getTrs(page) {
				getSj17s(1, 20).then(res => {
					console.log(44);
					console.log(res);
					this.sj17List = res.data.list;
				})
				// const request = uni.request({
				// 	url: "/api/user/getUsers",
				// 	data: {
				// 		pageIndex: page,
				// 		pageSize: 15
				// 	},
				// 	method: "get",
				// 	success: res => {
				// 		console.log(res.data);
				// 		this.userList = res.data.data
				// 	}
				// })
				// console.log(request);
			}
		}
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