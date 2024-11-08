package com.ruoyi.system.mapper;

import com.ruoyi.common.core.domain.CT07_1;

import java.util.List;

/**
 * 土承载比试验数据表 数据层
 * 
 * @author ruoyi
 */
public interface CT07_1Mapper
{
    /**
     * 根据条件分页查询土承载比试验数据列表
     *
     * @param th1 土承载比试验数据信息
     * @return 土承载比试验数据信息集合信息
     */
    public List<CT07_1> selectCT07_1List(String th1);

    /**
     * 通过土承载比试验数据ID查询土承载比试验数据
     *
     * @param ct07_1 土承载比试验数据ID
     * @return 土承载比试验数据对象信息
     */
    public CT07_1 selectCT07_1(Long ct07_1);

    /**
     * 新增土承载比试验数据信息
     * 
     * @param ct07_1 土承载比试验数据信息
     * @return 结果
     */
    public int insertCT07_1(CT07_1 ct07_1);

    /**
     * 修改土承载比试验数据信息
     * 
     * @param ct07_1 土承载比试验数据信息
     * @return 结果
     */
    public int updateCT07_1(CT07_1 ct07_1);

    /**
     * 通过筒号删除土承载比试验数据
     *
     * @param id 土承载比试验数据ID
     * @return 结果
     */
    public int deleteCT07_1ById(Long id);


    /**
     * 批量删除土承载比试验数据信息
     *
     * @param ids 需要删除的土承载比试验数据ID
     * @return 结果
     */
    public int deleteCT07_1ByIds(Long[] ids);

}
