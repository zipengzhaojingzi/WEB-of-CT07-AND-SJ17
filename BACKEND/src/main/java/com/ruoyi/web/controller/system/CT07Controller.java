package com.ruoyi.web.controller.system;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.CT07;
import com.ruoyi.system.service.CT07Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 控制层
 */
@RestController
public class CT07Controller
{
    @Autowired
    private CT07Service ct07Service;

    /**
     * 分页查询
     */
    @GetMapping("/getCT07s")
    public AjaxResult getCT07s(CT07 ct07, Integer pageNum,
                                 Integer pageSize)
    {   // AjaxResult 若依包装返回指定数据格式给前端的处理类
        AjaxResult ajax = AjaxResult.success(
                ct07Service.selectCT07List(ct07, pageNum,pageSize));
        ajax.put("code", 0);
        ajax.put("msg", "查询成功");
        return ajax;
    }

    /**
     * 使用ID单个查询
     */
    @GetMapping("/getCT07/{id}")
    public AjaxResult getCT07(@PathVariable("id") Long id)
    {   // AjaxResult 若依包装返回指定数据格式给前端的处理类
        AjaxResult ajax = AjaxResult.success(
                ct07Service.selectCT07(id));
        ajax.put("code", 0);
        ajax.put("msg", "查询成功");
        return ajax;
    }

    /**
     * 使用记录编号jlbh单个查询
     */
    @GetMapping("/getCT07ByJlbh/{jlbh}")
    public AjaxResult getCT07ByJlbh(@PathVariable("jlbh") Long jlbh)
    {   // AjaxResult 若依包装返回指定数据格式给前端的处理类
        AjaxResult ajax = AjaxResult.success(
                ct07Service.selectCT07ByJlbh(jlbh));
        ajax.put("code", 0);
        ajax.put("msg", "查询成功");
        return ajax;
    }

    /**
     * 添加
     */
    @PostMapping("/addCT07")
    public AjaxResult addCT07(@RequestBody CT07 ct07)
    {   // AjaxResult 若依包装返回指定数据格式给前端的处理类
        AjaxResult ajax = AjaxResult.success(ct07Service.insertCT07(ct07));
        ajax.put("code", 0);
        ajax.put("msg", "插入成功");
        return ajax;
    }

    /**
     * 修改
     */
    @PutMapping("/editCT07")
    public AjaxResult editCT07(@RequestBody CT07 ct07)
    {   // AjaxResult 若依包装返回指定数据格式给前端的处理类
        AjaxResult ajax = AjaxResult.success(ct07Service.updateCT07(ct07));
        ajax.put("code", 0);
        ajax.put("msg", "修改成功");
        return ajax;
    }

    /**
     * 使用ID删除
     */
    @DeleteMapping("/deleteCT07/{id}")
    public AjaxResult deleteCT07(@PathVariable Long id)
    {   // AjaxResult 若依包装返回指定数据格式给前端的处理类
        AjaxResult ajax = AjaxResult.success(ct07Service.deleteCT07ById(id));
        ajax.put("code", 0);
        ajax.put("msg", "删除成功");
        return ajax;
    }

//    /**
//     * 使用记录编号jlbh删除
//     */
//    @DeleteMapping("/deleteCT07ByJlbh/{jlbh}")
//    public AjaxResult deleteCT07ByJlbh(@PathVariable Long jlbh)
//    {   // AjaxResult 若依包装返回指定数据格式给前端的处理类
//        AjaxResult ajax = AjaxResult.success(ct07Service.deleteCT07ByJlbh(jlbh));
//        ajax.put("code", 0);
//        ajax.put("msg", "删除成功");
//        return ajax;
//    }
}
