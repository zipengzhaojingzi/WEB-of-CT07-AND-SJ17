import request from '@/utils/request'

export function testController(data) {
  return request({
    url: 'http://localhost:8080/test',
    method: 'post',
    data: data
  })
}