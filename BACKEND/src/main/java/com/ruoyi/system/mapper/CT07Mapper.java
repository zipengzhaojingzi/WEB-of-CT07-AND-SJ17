package com.ruoyi.system.mapper;

import com.ruoyi.common.core.domain.CT07;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 土承载比试验数据表 数据层
 * 
 * @author ruoyi
 */
public interface CT07Mapper
{
    /**
     * 根据条件分页查询土承载比试验数据列表
     * 
     * @param ct07 土承载比试验数据信息
     * @return 土承载比试验数据信息集合信息
     */
    public List<CT07> selectCT07List(CT07 ct07);

    /**
     * 通过土承载比试验数据ID查询土承载比试验数据
     * 
     * @param id 土承载比试验数据ID
     * @return 土承载比试验数据对象信息
     */
    public CT07 selectCT07(Long id);

    /**
     * 通过土承载比试验数据记录编号jlbh查询土承载比试验数据
     *
     * @param jlbh 土承载比试验数据记录编号jlbh
     * @return 土承载比试验数据对象信息
     */
    public CT07 selectCT07ByJlbh(Long jlbh);

    /**
     * 新增土承载比试验数据信息
     * 
     * @param ct07 土承载比试验数据信息
     * @return 结果
     */
    public int insertCT07(CT07 ct07);

    /**
     * 修改土承载比试验数据信息
     * 
     * @param ct07 土承载比试验数据信息
     * @return 结果
     */
    public int updateCT07(CT07 ct07);

    /**
     * 通过土承载比试验数据ID删除土承载比试验数据
     * 
     * @param id 土承载比试验数据ID
     * @return 结果
     */
    public int deleteCT07ById(Long id);

//    /**
//     * 通过土承载比试验数据记录编号jlbh删除土承载比试验数据
//     *
//     * @param jlbh 土承载比试验数据记录编号jlbh
//     * @return 结果
//     */
//    public int deleteCT07ByJlbh(Long jlbh);

    /**
     * 批量删除土承载比试验数据信息
     * 
     * @param ids 需要删除的土承载比试验数据ID
     * @return 结果
     */
    public int deleteCT07ByIds(Long[] ids);

//    /**
//     * 根据记录编号jlbh批量删除土承载比试验数据信息
//     *
//     * @param jlbhs 需要删除的土承载比试验数据ID
//     * @return 结果
//     */
//    public int deleteCT07ByJlbhs(Long[] jlbhs);
}
