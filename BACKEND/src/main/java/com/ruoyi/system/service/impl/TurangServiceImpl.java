package com.ruoyi.system.service.impl;
import com.github.pagehelper.PageInfo;
import com.ruoyi.common.core.domain.Turang;
import com.ruoyi.common.utils.PageUtils;
import com.ruoyi.system.mapper.TurangMapper;
import com.ruoyi.system.service.TurangService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

/**
 * 土壤数据 业务层处理
 *
 */
@Service
public class TurangServiceImpl implements TurangService
{
    private static final Logger log = LoggerFactory.getLogger(TurangServiceImpl.class);

    @Autowired
    private TurangMapper turangMapper;

    /**
     * 根据条件分页查询土壤数据列表
     * 
     * @param turang 土壤数据信息
     * @return 土壤数据信息集合信息
     */
    @Override
    public PageInfo<Turang> selectTurangList(Turang turang, Integer pageNum,
                                             Integer pageSize) {
        // 使用分页插件
        PageUtils.startPage();
        return new PageInfo<>(turangMapper.selectTurangList(turang));
    }
    
    /**
     * 通过土壤数据ID查询土壤数据
     * 
     * @param id 土壤数据ID
     * @return 土壤数据对象信息
     */
    @Override
    public Turang selectTurangById(Long id) {
        return turangMapper.selectTurangById(id);
    }

    /**
     * 新增保存土壤数据信息
     * 
     * @param turang 土壤数据信息
     * @return 结果
     */
    @Override
    @Transactional
    public int insertTurang(Turang turang) {
        // 新增土壤数据信息
        int rows = turangMapper.insertTurang(turang);
        return rows;
    }

    /**
     * 修改保存土壤数据信息
     * 
     * @param turang 土壤数据信息
     * @return 结果
     */
    @Override
    @Transactional
    public int updateTurang(Turang turang) {
        return turangMapper.updateTurang(turang);
    }

    /**
     * 通过土壤数据ID删除土壤数据
     * 
     * @param id 土壤数据ID
     * @return 结果
     */
    @Override
    @Transactional
    public int deleteTurangById(Long id) {
        return turangMapper.deleteTurangById(id);
    }

    /**
     * 批量删除土壤数据信息
     * 
     * @param ids 需要删除的土壤数据ID
     * @return 结果
     */
    @Override
    @Transactional
    public int deleteTurangByIds(Long[] ids) {
        return turangMapper.deleteTurangByIds(ids);
    }

}
