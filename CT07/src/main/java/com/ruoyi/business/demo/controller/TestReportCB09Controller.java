package com.ruoyi.business.demo.controller;

import com.github.pagehelper.PageInfo;
import com.ruoyi.business.demo.domain.TestReportCB09;
import com.ruoyi.business.demo.mapper.TestReportCB09Mapper;
import com.ruoyi.common.constant.HttpStatus;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/business/demo/testReportCB09")
public class TestReportCB09Controller {
    @Autowired
    private TestReportCB09Mapper reportCB09Mapper;

//    @PreAuthorize("@ss.hasPermi('demo:testReportCB09:list')")
    @PostMapping("/list")
    public TableDataInfo list(@RequestBody TestReportCB09 report)
    {
        PageUtils.startPage();
        List<TestReportCB09> reportCB09List = reportCB09Mapper.selectReportList(report);
        PageUtils.clearPage();
        return getDataTable(reportCB09List);
    }

//    @PreAuthorize("@ss.hasPermi('demo:testReportCB09:get')")
    @GetMapping(value = "/get/{id}")
    public AjaxResult get(@PathVariable Long id)
    {
        return AjaxResult.success(reportCB09Mapper.selectByPrimaryKey(id));
    }

    @PostMapping("/insert")
    public AjaxResult insert(@RequestBody TestReportCB09 report) {
        try{
            if (null != report){
                report.setCreateTime(new Date());
            }
            reportCB09Mapper.insertSelective(report);
            return AjaxResult.success("成功插入！");
        }catch (Exception e){
            return AjaxResult.error("插入失败："+e.getMessage()+"!");
        }
    }

    @PostMapping("/update")
    public AjaxResult update(@RequestBody TestReportCB09 report) {
        try{
            if (null != report){
                report.setUpdateTime(new Date());
            }
            reportCB09Mapper.updateByPrimaryKey(report);
            return AjaxResult.success("成功修改！");
        }catch (Exception e){
            return AjaxResult.error("失败修改："+e.getMessage()+"!");
        }
    }

    @PostMapping("/delete/{id}")
    public AjaxResult delete(@PathVariable Long id) {
        try{
            reportCB09Mapper.deleteByPrimaryKey(id);
            return AjaxResult.success("删除成功！");
        }catch (Exception e){
            return AjaxResult.error("删除失败："+e.getMessage()+"!");
        }
    }

    protected TableDataInfo getDataTable(List<?> list)
    {
        TableDataInfo rspData = new TableDataInfo();
        rspData.setCode(HttpStatus.SUCCESS);
        rspData.setMsg("查询成功");
        rspData.setRows(list);
        rspData.setTotal(new PageInfo(list).getTotal());
        return rspData;
    }
}
