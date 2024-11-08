import upload from '@/utils/upload'
import request from '@/utils/request'

// 列表查询
export function getCT07s(pageNum, pageSize) {
	const data = {
		pageNum,
		pageSize
	}
	return request({
		url: '/getCT07s',
		method: 'get',
		params: data
	})
}

// 添加数据
export function addCT07(data) {
	return request({
		url: '/addCT07',
		method: 'post',
		data: data
	})
}