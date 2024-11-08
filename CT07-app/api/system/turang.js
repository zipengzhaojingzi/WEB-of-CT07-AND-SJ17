import upload from '@/utils/upload'
import request from '@/utils/request'

// 列表查询
export function getTurangs(pageNum, pageSize) {
  const data = {
    pageNum,
    pageSize
  }
  return request({
    url: '/getTurangs',
    method: 'get',
    params: data
  })
}

// 添加数据
export function addTurang(data) {
  return request({
    url: '/addTurang',
    method: 'post',
	data: data
  })
}

