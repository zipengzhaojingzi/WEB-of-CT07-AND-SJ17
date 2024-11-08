<template>
	<view>
		<view class="title">
			土承载比试验检测记录表 <!-- view相当于div -->
			<navigator url="addCT07" hover-class="navigator-hover">
				<button type="default" class="userbtn" style="width: 100px;">添加记录表</button>
			</navigator>
		</view>
		<hr>
		<!-- <view v-for="item in userlist">
			<view>{{item.id}}--{{item.username}}--{{item.password}}</view>
		</view> -->
		<uni-list-chat v-for="item in ct07List" :avatar-circle="true" :title="item.id" avatar=""
			:note="'检测单位名称:'+item.jcdwmc+'记录编号:'+item.jlbh+'工程名称:'+item.gcmc+'合同段:'+item.htd"
			:time="item.syjcrq"></uni-list-chat>
		<hr>

	</view>
</template>

<script>
	import {
		getCT07s
	} from '@/api/system/ct07';
	export default {
		data() {
			return {
				ct07List: [{
					// id: 1,
					// name: "广西土壤",
					// shidu: "12",
					// wendu: "23",
					// createdate: '2024-10-30 15:18:13'
				}]
			}
		},
		onLoad() {
			this.getCTs(1);
		},
		onPullDownRefresh() {
			console.log("向下拉一下");
			this.getUsers(1); //更新第一页数据
			uni.stopPullDownRefresh(); //关闭刷新
			//定时器， 1000 毫秒， 调用里面的时间
			setTimeout(function() {
				uni.stopPullDownRefresh();
			}, 1000)
		},
		//触底时候调用该事件
		onReachBottom() {
			console.log("已经触底了");
			const request = uni.request({
				url: "/api/user/getUsers",
				data: {
					pageIndex: 2,
					pageSize: 15
				},
				method: "get",
				success: res => {
					console.log(res.data.data);
					this.userList = [...this.userList, ...res.data.data];
					console.log(this.userList)
				}
			})
		},
		methods: {
			getCTs(page) {
				getCT07s(1, 20).then(res => {
					console.log(44);
					console.log(res);
					this.ct07List = res.data.list;
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

<style>
	.title {
		font-size: 20px;
		margin: 0px;
		color: blueviolet;
		width: 100%;
		padding-left: 3px;
		padding-top: 8px;
		padding-bottom: 15px;
		padding-right: 8px;
	}

	.userbtn {
		width: 100px;
		font-size: 12px;
		background-color: aqua;
	}

	uni-navigator {
		display: inline-block;
		float: right;
		margin-right: 8px;
	}
</style>