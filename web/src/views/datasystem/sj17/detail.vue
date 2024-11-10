<template>
	<view>
			<table id="sj17Table"        @cell-dblclick="tabClick"
      :row-class-name="tableRowClassName"
      :cell-class-name="tableCellClassName" style="width: 800px;table-layout: auto;">
			<tr><td colspan="6" style="text-align: left;">记录表SJ17</td></tr>
			<tr><td colspan="6"></td></tr>
			<tr class="header">
				<td colspan="6" style="font-weight: bold;">沥青混凝土路面面层施工记录表</td>
			</tr>
			<tr>
				<td>施工单位:</td>
				<td colspan="3" class="header-red">{{form.sgdw}}</td>
				
				<td>合同号:</td>
				<td class="header-red">{{form.hth}}</td>

				<!-- <el-input v-model="form.hth" placeholder="{{form.hth}}" maxlength="30" /> -->
				<!-- <td class="red-bg">string {{form.hth}}</td> -->
			</tr>
			<tr >
				<td>监理单位:</td>
				<td colspan="3" class="header-red">{{form.jldw}}</td>

				<!-- <el-input v-model="form.jldw" placeholder="{{form.jldw}}" maxlength="30" /> -->
				<!-- <td class="red-bg">string {{form.jldw}}</td> -->
				<td>编号:</td>
				<!-- <el-input v-model="form.bh" placeholder="{{form.bh}}" maxlength="30" /> -->
				<td class="header-red">{{ form.bh }}</td>
			</tr>
			<tr>
				<td colspan="2">工程名称</td>
				<td class="yellow-bg ">{{form.gcmc}}</td>
				<td colspan="2">施工时间</td>
				<!-- <el-input v-model="form.sgsj" placeholder="{{form.sgsj}}" maxlength="30" /> -->
				<td class="yellow-bg">{{form.sgsj}}</td>
			</tr>
			<tr>
				<td colspan="2">桩号及工程部位</td>
				<td colspan="4" class="yellow-bg ">{{form.zhjgcbw}}</td>
			</tr>
			<tr>
				<td colspan="2">结构类型</td>
				<td class="yellow-bg">{{form.jglx}}</td>
				<td rowspan="4" style="writing-mode: vertical-lr;width: 30px;">拌料情况</td>
				<td >拌和方式</td>
				<td class="yellow-bg">{{form.bhfs}}</td>
			</tr>
			<tr>
				<td rowspan="4">设计</td>
				<td>压实厚度(cm)</td>
				<td class="yellow-bg">{{ form.yshd }}</td>
				<td>每盘用料
				</td>
				<td class="yellow-bg">{{ form.mpyl }}</td>
			</tr>
			<tr>
				
				<td>宽度(m)</td>
				<td class="yellow-bg">{{ form.kd }}</td>
				<td >出料温度
				</td>
				<td class="yellow-bg">{{ form.clwd }}</td>
			</tr>
			<tr>
				<td>横坡(%)</td>
				<td class="yellow-bg">{{ form.hp }}</td>
				<td>油石比检查</td>
				<td class="yellow-bg">{{ form.ysbjc }}</td>				
			</tr>
			<tr>
				<td>油石比(%)</td>
				<td class="yellow-bg">{{ form.ysbjc }}</td>	
				<td rowspan="2" style="writing-mode: vertical-lr;width: 30px;">运料情况</td>		
				<td>运输方式</td>
				<td class="yellow-bg">{{ form.ysbjc }}</td>				
			</tr>
			<tr>
				<td rowspan="3" colspan="2">沥青检验情况</td>
				<td rowspan="3" class="yellow-bg" style="width: 200px;">{{ form.lqjcqk }}</td>				
				<td>到达温度</td>
				<td class="yellow-bg">{{ form.ddwd }}</td>
			</tr>
			<tr>
				<td rowspan="5" style="writing-mode: vertical-lr;width: 30px;">摊铺情况</td>
			<td>摊铺方法</td>
			<td class="yellow-bg">{{ form.tpff }}</td> 	
			</tr>
		
			<tr>
				<td>摊铺温度</td>
				<td class="yellow-bg">{{ form.tpwd }}</td>
			</tr>
			<tr>
				<td colspan="2">粗集料岩石名称</td>
				<td class="yellow-bg">{{ form.cjlysmc }}</td>
				
				<td>平整度</td>
				<td class="yellow-bg">{{ form.pzd }}</td>
			</tr>
			<tr>
				<td colspan="2">填充料类别
				</td>
				<td class="yellow-bg">{{ form.tcllb }}</td>
				<td>厚度</td>
				<td class="yellow-bg">{{ form.hd }}</td>

			</tr>
			<tr>
				<td colspan="2">集料配合比</td>
				<td class="yellow-bg">{{ form.jlphb }}</td>
				<td>横坡</td>
				<td class="yellow-bg">{{ form.tphp }}</td>
				
			</tr>
			<tr>
				<td colspan="2">现场级配情况</td>
				<td class="yellow-bg">{{ form.xcjpqk }}</td>
				
				<td rowspan="5" style="writing-mode: vertical-lr;width: 30px;">碾压情况</td>
				<td>碾压机具</td>
				<td class="yellow-bg">{{ form.nyjj }}</td>
			</tr>
			<tr>
				<td colspan="2">料场防污措施</td>
				<td class="yellow-bg">{{ form.lcfwrcs }}</td>
				<td>碾压遍数</td>
				<td class="yellow-bg">{{ form.nybs }}</td>
				
			</tr>
			<tr>
				<td rowspan="2" >沥青加工</td>	
				<td style="width: 100px;">掺配情况</td>
				<td class="yellow-bg">{{ form.cpqk }}</td>
				<td>碾压质量</td>
				<td class="yellow-bg">{{ form.nyzl }}</td>
			</tr>
			<tr>
				<td>加温记录</td>	
				<td class="yellow-bg">{{ form.jwjl }}</td>
				<td>碾压温度</td>
				<td class="yellow-bg">{{ form.nywd }}</td>
			</tr>
			
			<tr>
				<td colspan="2">矿料加热温度</td>
				<td class="yellow-bg">{{ form.kljrwd }}</td>
				<td>碾压结束温度</td>
				<td class="yellow-bg">{{ form.nyjswd }}</td>
			</tr>
			<tr>
				<td colspan="2">施工气候情况</td>
				<td colspan="4">开工气温:  <span class="highlight-cell">{{ form.kgqw }}</span>
					&nbsp;&nbsp;结束气温： <span class="highlight-cell">{{ form.jsqw }}</span>
				
					&nbsp;&nbsp;气候变化情况： <span class="highlight-cell">{{ form.qwbhqk }}</span></td>
				
			</tr>
			<tr>
				<td> 施工员:</td>
				<td colspan="2">{{  form.sgy }}</td>
				<td colspan="2">专业工程师:</td>
				<td >{{  form.zygcs }}</td>
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
		  filename: "沥青混凝土路面面层施工记录表",
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
	.highlight-cell {
            background-color: #ffff00;
            /* Yellow background for highlights */
            color: black;
        }
</style>