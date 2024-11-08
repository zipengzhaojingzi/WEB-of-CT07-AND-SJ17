package com.ruoyi.web.controller.system;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.Turang;
import com.ruoyi.system.service.TurangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 控制层
 */
@RestController
public class TurangController
{
    @Autowired
    private TurangService turangService;

    /**
     * 分页查询
     */
    @GetMapping("/getTurangs")
    public AjaxResult getTurangs(Turang turang, Integer pageNum,
                                 Integer pageSize)
    {   // AjaxResult 若依包装返回指定数据格式给前端的处理类
        AjaxResult ajax = AjaxResult.success(
                turangService.selectTurangList(turang, pageNum,pageSize));
        ajax.put("code", 0);
        ajax.put("msg", "查询成功");
        return ajax;
    }

    /**
     * 单个查询
     */
    @GetMapping("/getTurang/{id}")
    public AjaxResult getTurang(@PathVariable("id") Long id)
    {   // AjaxResult 若依包装返回指定数据格式给前端的处理类
        AjaxResult ajax = AjaxResult.success(
                turangService.selectTurangById(id));
        ajax.put("code", 0);
        ajax.put("msg", "查询成功");
        return ajax;
    }

    /**
     * 添加
     */
    @PostMapping("/addTurang")
    public AjaxResult addTurang(@RequestBody Turang turang)
    {   // AjaxResult 若依包装返回指定数据格式给前端的处理类
        AjaxResult ajax = AjaxResult.success(turangService.insertTurang(turang));
        ajax.put("code", 0);
        ajax.put("msg", "插入成功");
        return ajax;
    }

    /**
     * 修改
     */
    @PutMapping("/editTurang")
    public AjaxResult editTurang(@RequestBody Turang turang)
    {   // AjaxResult 若依包装返回指定数据格式给前端的处理类
        AjaxResult ajax = AjaxResult.success(turangService.updateTurang(turang));
        ajax.put("code", 0);
        ajax.put("msg", "修改成功");
        return ajax;
    }

    /**
     * 删除
     */
    @DeleteMapping("/deleteTurang/{id}")
    public AjaxResult deleteTurang(@PathVariable Long id)
    {   // AjaxResult 若依包装返回指定数据格式给前端的处理类
        AjaxResult ajax = AjaxResult.success(turangService.deleteTurangById(id));
        ajax.put("code", 0);
        ajax.put("msg", "删除成功");
        return ajax;
    }
}
