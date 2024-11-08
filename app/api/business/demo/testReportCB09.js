import request from '@/utils/request'

export function insertTestReportCB09(data) {
  return request({
    url: '/business/demo/testReportCB09/insert',
    method: 'post',
    data: data
  })
}

// 查询列表
export function listTestReportCB09(data) {
  let pageNum = data.pageNum ? data.pageNum : 1;
  if (!(pageNum instanceof Number)){
	  pageNum = pageNum.current
	  data.pageNum = pageNum
  }
  let pageSize = data.pageSize ? data.pageSize: 10;
  return request({
    url: '/business/demo/testReportCB09/list?pageNum='+pageNum+"&pageSize="+pageSize,
    method: 'post',
    data: data
  })
}

export function getTestReportCB09(id) {
	return request({
	  url: '/business/demo/testReportCB09/get/'+id,
	  method: 'get',
	})
}
