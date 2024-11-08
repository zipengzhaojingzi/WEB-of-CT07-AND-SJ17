import upload from '@/utils/upload'
import request from '@/utils/request'

// 列表查询
export function getSj17s(pageNum, pageSize) {
  const data = {
    pageNum,
    pageSize
  }
  return request({
    url: '/getSj17s',
    method: 'get',
    params: data
  })
}

// 添加数据
export function addSj17(data) {
  return request({
    url: '/addSj17',
    method: 'post',
	data: data
  })
}

