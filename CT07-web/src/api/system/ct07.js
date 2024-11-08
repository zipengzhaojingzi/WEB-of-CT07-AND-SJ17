import request from '@/utils/request'
import { parseStrEmpty } from "@/utils/ruoyi";

// 查询用户列表
export function getCT07s(query) {
  return request({
    url: '/getCT07s',
    method: 'get',
    params: query
  })
}

// 查询用户详细(查询单个)
export function getCT07(id) {
  return request({
    url: '/getCT07/' + parseStrEmpty(id),
    method: 'get'
  })
}

// 新增用户
export function addCT07(data) {
  return request({
    url: '/addCT07',
    method: 'post',
    data: data
  })
}

// 修改用户
export function editCT07(data) {
  return request({
    url: '/editCT07',
    method: 'put',
    data: data
  })
}

// 删除用户
export function deleteCT07(id) {
  return request({
    url: '/deleteCT07/' + id,
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