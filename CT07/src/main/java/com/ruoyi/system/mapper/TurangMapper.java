package com.ruoyi.system.mapper;

import com.ruoyi.common.core.domain.Turang;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 土壤数据表 数据层
 * 
 * @author ruoyi
 */
public interface TurangMapper
{
    /**
     * 根据条件分页查询土壤数据列表
     * 
     * @param turang 土壤数据信息
     * @return 土壤数据信息集合信息
     */
    public List<Turang> selectTurangList(Turang turang);

    /**
     * 通过土壤数据ID查询土壤数据
     * 
     * @param id 土壤数据ID
     * @return 土壤数据对象信息
     */
    public Turang selectTurangById(Long id);

    /**
     * 新增土壤数据信息
     * 
     * @param turang 土壤数据信息
     * @return 结果
     */
    public int insertTurang(Turang turang);

    /**
     * 修改土壤数据信息
     * 
     * @param turang 土壤数据信息
     * @return 结果
     */
    public int updateTurang(Turang turang);

    /**
     * 通过土壤数据ID删除土壤数据
     * 
     * @param id 土壤数据ID
     * @return 结果
     */
    public int deleteTurangById(Long id);

    /**
     * 批量删除土壤数据信息
     * 
     * @param ids 需要删除的土壤数据ID
     * @return 结果
     */
    public int deleteTurangByIds(Long[] ids);
}
