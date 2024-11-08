package com.ruoyi.system.mapper;

import com.ruoyi.common.core.domain.Sj17;

import java.util.List;

/**
 * 土壤数据表 数据层
 * 
 * ctrl+R 替换
 */
public interface Sj17Mapper
{
    /**
     * 根据条件分页查询土壤数据列表
     * 
     * @param sj17 土壤数据信息
     * @return 土壤数据信息集合信息
     */
    public List<Sj17> selectSj17List(Sj17 sj17);

    /**
     * 通过土壤数据ID查询土壤数据
     * 
     * @param id 土壤数据ID
     * @return 土壤数据对象信息
     */
    public Sj17 selectSj17ById(Long id);

    /**
     * 新增土壤数据信息
     * 
     * @param sj17 土壤数据信息
     * @return 结果
     */
    public int insertSj17(Sj17 sj17);

    /**
     * 修改土壤数据信息
     * 
     * @param sj17 土壤数据信息
     * @return 结果
     */
    public int updateSj17(Sj17 sj17);
    
    /**
     * 通过土壤数据ID删除土壤数据
     * 
     * @param id 土壤数据ID
     * @return 结果
     */
    public int deleteSj17ById(Long id);

    /**
     * 批量删除土壤数据信息
     * 
     * @param ids 需要删除的土壤数据ID
     * @return 结果
     */
    public int deleteSj17ByIds(Long[] ids);

}
