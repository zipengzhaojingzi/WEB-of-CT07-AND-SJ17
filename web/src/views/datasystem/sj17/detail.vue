<template>
	<view>
			<table id="sj17Table"        @cell-dblclick="tabClick"
      :row-class-name="tableRowClassName"
      :cell-class-name="tableCellClassName">
			<tr class="header">
				<td colspan="4">沥青混凝土路面面层施工记录表</td>
			</tr>
			<tr class="header-red">
				<td>施工单位:</td>
				<td class="red-bg">{{form.sgdw}}</td>
				<!-- <td  style="width:10">
				<el-input  v-model="form.sgdw" placeholder="{{form.sgdw}}" maxlength="30" />
				</td> -->

				      <!-- <el-table-column
        label="这是名称"
        show-overflow-tooltip
      >
        <template slot-scope="scope">
          <div v-if="scope.row.index === clickRow && scope.column.index === clickCell">
            <el-input
              ref="editInput"
              v-model="scope.row.position"
              maxlength="300"
              size="mini"
              @blur="inputBlur"
            />
          </div>
          <div v-else>{{ scope.row.position }}</div>
        </template>
      </el-table-column> -->
				<!-- <td class="red-bg">string {{form.sgdw}}</td> -->
				<td>合同号:</td>
				<td class="red-bg">{{form.hth}}</td>

				<!-- <el-input v-model="form.hth" placeholder="{{form.hth}}" maxlength="30" /> -->
				<!-- <td class="red-bg">string {{form.hth}}</td> -->
			</tr>
			<tr class="header-red">
				<td>监理单位:</td>
				<td class="red-bg">{{form.jldw}}</td>

				<!-- <el-input v-model="form.jldw" placeholder="{{form.jldw}}" maxlength="30" /> -->
				<!-- <td class="red-bg">string {{form.jldw}}</td> -->
				<td>编号:</td>
				<!-- <el-input v-model="form.bh" placeholder="{{form.bh}}" maxlength="30" /> -->
				<td class="red-bg">string</td>
			</tr>
			<tr>
				<td class="yellow-bg">工程名称</td>
				<td class="yellow-bg input-string">string {{form.a}}</td>
				<td class="yellow-bg">施工时间</td>
				<!-- <el-input v-model="form.sgsj" placeholder="{{form.sgsj}}" maxlength="30" /> -->
				<td class="yellow-bg">Year/month/day {{form.sgsj}}</td>
			</tr>
			<tr>
				<td class="yellow-bg">桩号及工程部位</td>
				<td colspan="3" class="yellow-bg input-string">string{{form.c}}</td>
			</tr>
			<tr>
				<td class="yellow-bg">结构类型</td>
				<td class="yellow-bg input-string">string</td>
				<td class="yellow-bg">拌和情况</td>
				<td class="yellow-bg">拌和方式</td>
			</tr>
			<tr>
				<td>设计</td>
				<td>压实厚度(cm)</td>
				<td>宽度(m)</td>
				<td>出料温度</td>
			</tr>
			<tr>
				<td></td>
				<td class="input-number">1</td>
				<td class="input-number">Float</td>
				<td class="input-number">Float</td>
			</tr>
			<tr>
				<td>横坡(%)</td>
				<td class="input-number">2</td>
				<td>油石比检查</td>
				<td class="input-string">string</td>
			</tr>
			<tr>
				<td>油石比(%)</td>
				<td class="input-string">string</td>
				<td>运输方式</td>
				<td class="input-number">8</td>
			</tr>
			<tr>
				<td>沥青检查情况</td>
				<td class="input-string">string</td>
				<td>到达温度</td>
				<td class="input-number">Float</td>
			</tr>
			<tr>
				<td>粗集料岩石名称</td>
				<td class="input-number">3</td>
				<td>填料种类</td>
				<td class="input-number">4</td>
			</tr>
			<tr>
				<td>集料配合比</td>
				<td class="input-string">string</td>
				<td>摊铺方法</td>
				<td class="input-number">10</td>
			</tr>
			<tr>
				<td>现场级配情况</td>
				<td class="input-number">5</td>
				<td>摊铺温度</td>
				<td class="input-number">Float</td>
			</tr>
			<tr>
				<td>料场防污措施</td>
				<td class="input-number">6</td>
				<td>平整度</td>
				<td class="input-number">11</td>
			</tr>
			<tr>
				<td>厚度</td>
				<td class="input-number">12</td>
				<td>横坡</td>
				<td class="input-number">13</td>
			</tr>
			<tr>
				<td>碾压机具</td>
				<td class="input-number">14</td>
				<td>碾压遍数</td>
				<td class="input-number">15</td>
			</tr>
			<tr>
				<td>碾压质量</td>
				<td class="input-number">16</td>
				<td>碾压温度</td>
				<td class="input-number">Float</td>
			</tr>
			<tr>
				<td>碾压结束温度</td>
				<td class="input-number">Float</td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td>施工气候情况</td>
				<td class="footer">开工气温: Float</td>
				<td class="footer">结束气温: Float</td>
				<td class="footer">气候变化情况: string</td>
			</tr>
			<tr>
				<td>施工员:</td>
				<td colspan="3" class="input-string">专业工程师</td>
			</tr>
		</table>

		<view>
			<!-- <el-button type="primary" @click="submitForm">修改</el-button> -->
			<el-button type="primary" @click="genExcel">下载</el-button>
		</view>
	</view>
</template>


<script>
import { getSj17, editSj17, addSj17 } from "@/api/system/sj17";
// import { Download } from "@element-plus/icons-vue";
import $ from "jquery";




export default {
  data() {
		return {
		
      form: {
        id: undefined,
        hth: undefined,
        sgdw: undefined,
        jldw: undefined,
        sgsj: undefined
      },

	        clickRow: null, // 当前点击的行
      clickCell: null, // 当前点击的列
      tabClickLabel: "", // 当前点击的列名

    //   open: false
    };
  },

  created() {
    var id = location.search.split("=")[1];
    console.log("ID是：" + id);
    this.handleSet(id);
	  console.log(111);
	//   this.proxy = new Proxy(this.form, {
	// 	  set(target, key, value) {
	// 		  target[key] = value;
	// 		  console.log(`Setting ${key} to ${value}`);
	// 		  return true;
	// 	  },
	// 	  get(target, key) {
	// 		  console.log(`Getting ${key}`);
	// 		  return target[key];
	// 	  }
	//   });
  },

	methods: {
		
    handleSet(id) {
      getSj17(id).then(response => {
        console.log(response.data);
        this.form = response.data;
      });
    },

    submitForm() {
      if (this.form.id !== undefined) {
        editSj17(this.form).then(response => {
          this.$modal.msgSuccess("修改成功");
        //   this.open = false;
          this.getList();
        });
      } else {
        addSj17(this.form).then(response => {
          this.$modal.msgSuccess("新增成功");
        //   this.open = false;
          this.getList();
        });
      }
		},

		genExcel() {
	$('#sj17Table').table2excel({
		  name: "SheetName",
		  filename: "table",
		exclude_img: true,
		exclude_links: true,
		exclude_inputs: true
	  });
	},

	  Download(  id) {
		  handleExport(id);
	  },

    getList() {
      // 获取列表的逻辑
      console.log("获取列表");

	  
    },
	    // 控制input显示 row 当前行 column 当前列
    tabClick(row, column, cell, event) {
      var that = this
      switch (column.label) {
        case "这是名称":
          that.clickRow = row.index;
          that.clickCell = column.index;
          that.tabClickLabel = column.label;
          break;
        case "这是第二个":
          that.clickRow = row.index;
          that.clickCell = column.index;
          that.tabClickLabel = column.label;
          break;
        default:
          return;
      }
    },
    // 把每一行的索引放进row
    tableRowClassName({ row, rowIndex }) {
      row.index = rowIndex;
    },
 
    // 把每一列的索引放进column
    tableCellClassName({ column, columnIndex }) {
      column.index = columnIndex;
    },
 
    // 失去焦点初始化
    inputBlur(row, event, column) {
      var that = this
      that.clickRow = null;
      that.clickCell = null;
      that.tabClickLabel = "";
    },
  }
};
</script>

<style>
	body {
		font-family: Arial, sans-serif;
	}

	table {
		width: 100%;
		border-collapse: collapse;
		table-layout: fixed;
	}

	th,
	td {
		border: 1px solid black;
		padding: 8px;
		text-align: center;
	}

	.red-bg {
		background-color: red;
	}

	.yellow-bg {
		background-color: yellow;
	}

	.header {
		background-color: #cccccc;
	}

	.header-red {
		background-color: red;
		color: white;
	}

	.input-string {
		color: red;
	}

	.input-number {
		color: blue;
	}

	.footer {
		background-color: yellow;
	}
</style>