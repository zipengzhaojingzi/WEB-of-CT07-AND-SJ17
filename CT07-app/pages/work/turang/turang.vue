<template>
	<view>
		<view class="title">
			土壤列表 <!-- view相当于div -->
		<navigator url="addTurang" hover-class="navigator-hover">
			<button type="default" class="userbtn">添加土壤数据</button>
		</navigator>
		</view>
		<hr>
		<!-- <view v-for="item in userlist">
			<view>{{item.id}}--{{item.username}}--{{item.password}}</view>
		</view> -->
		<uni-list-chat v-for="item in turangList" 
		:avatar-circle="true" :title="item.name"
		avatar=""
		:note="'温度:'+item.wendu+'湿度:'+item.shidu"
		:time="item.createdate"></uni-list-chat>
		<hr>

	</view>
</template>

<script>
	import { getTurangs } from '@/api/system/turang';
	export default {
		data() {
			return {
				turangList: [{
						id: 1,
						name: "广西土壤",
						shidu: "12",
						wendu: "23",
						createdate: '2024-10-30 15:18:13'
					}
				]
			}
		},
		onLoad() {
			this.getTrs(1);
		},
		onPullDownRefresh() {
			// console.log("向下拉一下");
			// this.getUsers(1); //更新第一页数据
			// uni.stopPullDownRefresh(); //关闭刷新
			// 定时器，1000毫秒，调用里面的时间
			// setTimeout(function(){
			// 	uni.stopPullDownRefresh();
			// },1000)
		},
		//触底时候调用该事件
		onReachBottom() {
			console.log("已经触底了");
			// const request = uni.request({
			// 	url: "/api/user/getUsers",
			// 	data: {
			// 		pageIndex: 2,
			// 		pageSize: 15
			// 	},
			// 	method: "get",
			// 	success: res => {
			// 		console.log(res.data.data);
			// 		this.userList = [...this.userList,...res.data.data];
			// 		console.log(this.userList)
			// 	}
			// })
		},
		methods: {
			getTrs(page) {
				getTurangs(1,20).then(res => {
					console.log(44);
					console.log(res);
					this.turangList = res.data.list;
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