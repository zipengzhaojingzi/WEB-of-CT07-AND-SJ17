import request from '@/utils/request'
import {
	parseStrEmpty
} from "@/utils/ruoyi";

// 查询列表
export function listTestReportCB09(data) {
	let pageNum = data.pageNum ? data.pageNum : 1;
	let pageSize = data.pageSize ? data.pageSize : 10;
	return request({
		url: '/business/moyunxiao/testReportCB09/list?pageNum=' + pageNum + "&pageSize=" + pageSize,
		method: 'post',
		data: data
	})
}

export function getTestReportCB09(id) {
	return request({
		url: '/business/moyunxiao/testReportCB09/get/' + id,
		method: 'get',
	})
}

export function updateTestReportCB09(data) {
	return request({
		url: '/business/moyunxiao/testReportCB09/update',
		method: 'post',
		data: data
	})
}

export function insertTestReportCB09(data) {
	return request({
		url: '/business/moyunxiao/testReportCB09/insert',
		method: 'post',
		data: data
	})
}

export function deleteTestReportCB09(id) {
	return request({
		url: '/business/moyunxiao/testReportCB09/delete/' + id,
		method: 'post',
	})
}