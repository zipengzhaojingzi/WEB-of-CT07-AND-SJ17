<template>
	<div class="app-container">
		<div>
			<div>请求方法：</div>
			
			<el-select
			  v-model="requestMethod"
			  size="large"
			  style="width: 100px"
			>
			  <el-option
				v-for="item in requestMethodOptions"
				:key="item.value"
				:label="item.label"
				:value="item.value"
			  />
			</el-select>
		</div>
		<div>
			<div>请求URL:</div>
			<el-input v-model="url" style="width: 600px" placeholder="URL" />
		</div>
		<div>
			<div>请求JSON：</div>
			<el-input
			    v-model="requestJson"
			    style="width: 600px"
			    :rows="16"
			    type="textarea"
			  />
		</div>
		<div>
			<el-button type="primary" @click="submitRequest()">提交请求</el-button>
		</div>
		<div>
			<div>响应JSON：</div>
			<json-viewer
			  :value="JSON.parse(resultJson)"
			  :expand-depth="5"
			  boxed
			  sort
			  :show-array-index="false"
			  copyable
			>
			  <template slot="copy">
				<i class="el-icon-document-copy" title="复制"></i>
			  </template>
			</json-viewer>
		</div>
	</div>
</template>

<script setup>
import { ref } from 'vue'
import { testController } from "@/api/system/test"


const requestMethod = ref('GET')
const url = ref('')
const requestJson = ref('')
const resultJson = ref('{}')

const requestMethodOptions = [
  {
    value: 'GET',
    label: 'GET',
  },
  {
    value: 'POST',
    label: 'POST',
  },
  {
    value: 'PUT',
    label: 'PUT',
  },
  {
    value: 'DELETE',
    label: 'DELETE',
  },
]	

function submitRequest(){
	testController({'requestMethod':requestMethod._value, 'url':url._value, 'requestJson':requestJson._value}).then(res => {
		if (res.data) {
			resultJson.value = res.data
		}else if (res.msg) {
			resultJson.value = res.msg
		}
		
	})
}
</script>

<style>
</style>