import request from '@/utils/request'
import {
	parseStrEmpty
} from "@/utils/ruoyi";
// const {
// 	proxy
// } = getCurrentInstance();

// 查询土壤数据列表
export function getSj17s(query) {
	return request({
		url: '/getSj17s',
		method: 'get',
		params: query
	})
}

// export function handleExport(queryParams) {
// 	proxy.download("exportExcel", {
// 		queryParams: queryParams.value,
// 	}, 'user_${new Date().getTime()}.xlsx');
// };

// 查询土壤数据详细
export function getSj17(id) {
	return request({
		url: '/getSj17/' + parseStrEmpty(id),
		method: 'get'
	})
}

// 新增土壤数据
export function addSj17(data) {
	return request({
		url: '/addSj17',
		method: 'post',
		data: data
	})
}

// 修改土壤数据
export function editSj17(data) {
	return request({
		url: '/editSj17',
		method: 'put',
		data: data
	})
}

// 删除土壤数据
export function deleteSj17(id) {
	return request({
		url: '/deleteSj17/' + id,
		method: 'delete'
	})
}

// 土壤数据头像上传 //useless
export function uploadAvatar(data) {
	return request({
		url: '//profile/avatar',
		method: 'post',
		headers: {
			'Content-Type': 'application/x-www-form-urlencoded'
		},
		data: data
	})
}