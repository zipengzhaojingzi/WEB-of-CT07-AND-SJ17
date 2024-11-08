import request from '@/utils/request'
import { parseStrEmpty } from "@/utils/ruoyi";

// 查询用户列表
export function getTurangs(query) {
  return request({
    url: '/getTurangs',
    method: 'get',
    params: query
  })
}

// 查询用户详细(查询单个)
export function getTurang(id) {
  return request({
    url: '/getTurang/' + parseStrEmpty(id),
    method: 'get'
  })
}

// 新增用户
export function addTurang(data) {
  return request({
    url: '/addTurang',
    method: 'post',
    data: data
  })
}

// 修改用户
export function editTurang(data) {
  return request({
    url: '/editTurang',
    method: 'put',
    data: data
  })
}

// 删除用户
export function deleteTurang(id) {
  return request({
    url: '/deleteTurang/' + id,
    method: 'delete'
  })
}

// 用户头像上传
export function uploadAvatar(data) {
  return request({
    url: '//profile/avatar',
    method: 'post',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    data: data
  })
}