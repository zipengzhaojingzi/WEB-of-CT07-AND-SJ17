package com.ruoyi.system.service.impl;
import com.github.pagehelper.PageInfo;
import com.ruoyi.common.core.domain.Sj17;
import com.ruoyi.common.utils.PageUtils;
import com.ruoyi.system.mapper.Sj17Mapper;
import com.ruoyi.system.service.Sj17Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 土壤数据 业务层处理
 *
 */
@Service
public class Sj17ServiceImpl implements Sj17Service {
    private static final Logger log = LoggerFactory.getLogger(Sj17ServiceImpl.class);

    @Autowired
    private Sj17Mapper sj17Mapper;

    /**
     * 根据条件分页查询土壤数据列表
     * 
     * @param sj17 土壤数据信息
     * @return 土壤数据信息集合信息
     */
    @Override
    public PageInfo<Sj17> selectSj17List(Sj17 sj17, Integer pageNum,
                                             Integer pageSize){
        // 使用分页插件pagehelper 进行分页
        PageUtils.startPage();
        return new PageInfo<>(sj17Mapper.selectSj17List(sj17));
    }
    
    /**
     * 通过土壤数据ID查询土壤数据
     * 
     * @param id 土壤数据ID
     * @return 土壤数据对象信息
     */
    @Override
    public Sj17 selectSj17ById(Long id) {
        return sj17Mapper.selectSj17ById(id);
    }
    
    /**
     * 新增保存土壤数据信息
     * 
     * @param sj17 土壤数据信息
     * @return 结果
     */
    @Override
    @Transactional
    public int insertSj17(Sj17 sj17){
        // 新增土壤数据信息
        int rows = sj17Mapper.insertSj17(sj17);
        return rows;
    }
    
    /**
     * 修改保存土壤数据信息
     * 
     * @param sj17 土壤数据信息
     * @return 结果
     */
    @Override
    @Transactional
    public int updateSj17(Sj17 sj17) {
        return sj17Mapper.updateSj17(sj17);
    }
    
    /**
     * 通过土壤数据ID删除土壤数据
     * 
     * @param id 土壤数据ID
     * @return 结果
     */
    @Override
    @Transactional
    public int deleteSj17ById(Long id){
        return sj17Mapper.deleteSj17ById(id);
    }

    /**
     * 批量删除土壤数据信息
     * 
     * @param ids 需要删除的土壤数据ID
     * @return 结果
     */
    @Override
    @Transactional
    public int deleteSj17ByIds(Long[] ids) {
        return sj17Mapper.deleteSj17ByIds(ids);
    }
    
}
