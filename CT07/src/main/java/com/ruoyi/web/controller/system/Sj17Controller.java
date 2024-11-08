package com.ruoyi.web.controller.system;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.Sj17;
import com.ruoyi.system.service.Sj17Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 控制层
 */
@RestController
public class Sj17Controller
{
    @Autowired
    private Sj17Service sj17Service;

    /**
     *  分页查询
     */
    @GetMapping("/getSj17s")
    public AjaxResult getSj17s(Sj17 sj17, Integer pageNum,
                                 Integer pageSize)
    {   // AjaxResult 诺依包装返回指定数据格式给前端的处理类
        AjaxResult ajax = AjaxResult.success(
                sj17Service.selectSj17List(sj17, pageNum, pageSize));
        ajax.put("code", 0);
        ajax.put("msg", "查询成功");
        return ajax;
    }

    /**
     *  单个查询
     */
    @GetMapping("/getSj17/{id}")
    public AjaxResult getSj17(@PathVariable("id") Long id)
    {   // AjaxResult 诺依包装返回指定数据格式给前端的处理类
        AjaxResult ajax = AjaxResult.success(
                sj17Service.selectSj17ById(id));
        ajax.put("code", 0);
        ajax.put("msg", "查询成功");
        return ajax;
    }

    /**
     *  添加
     */
    @PostMapping("/addSj17")
    public AjaxResult addSj17(@RequestBody Sj17 sj17)
    {   // AjaxResult 诺依包装返回指定数据格式给前端的处理类
        AjaxResult ajax = AjaxResult.success(sj17Service.insertSj17(sj17));
        ajax.put("code", 0);
        ajax.put("msg", "插入成功");
        return ajax;
    }

    /**
     *  修改
     */
    @PutMapping("/editSj17")
    public AjaxResult editSj17(@RequestBody Sj17 sj17)
    {   // AjaxResult 诺依包装返回指定数据格式给前端的处理类
        AjaxResult ajax = AjaxResult.success(sj17Service.updateSj17(sj17));
        ajax.put("code", 0);
        ajax.put("msg", "修改成功");
        return ajax;
    }

    /**
     *  删除
     */
    @DeleteMapping("/deleteSj17/{id}")
    public AjaxResult deleteSj17(@PathVariable("id") Long id)
    {   // AjaxResult 诺依包装返回指定数据格式给前端的处理类
        AjaxResult ajax = AjaxResult.success(sj17Service.deleteSj17ById(id));
        ajax.put("code", 0);
        ajax.put("msg", "删除成功");
        return ajax;
    }


}
