package com.ruoyi.system.service.impl;
import com.github.pagehelper.PageInfo;
import com.ruoyi.common.core.domain.CT07;
import com.ruoyi.common.core.domain.CT07_1;
import com.ruoyi.common.utils.PageUtils;
import com.ruoyi.system.mapper.CT07Mapper;
import com.ruoyi.system.mapper.CT07_1Mapper;
import com.ruoyi.system.service.CT07Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * 土承载比试验数据 业务层处理
 *
 */
@Service
public class CT07ServiceImpl implements CT07Service
{
    private static final Logger log = LoggerFactory.getLogger(CT07ServiceImpl.class);

    @Resource
    private CT07Mapper ct07Mapper;

    @Resource
    private CT07_1Mapper ct07_1Mapper;

    /**
     * 根据条件分页查询土承载比试验数据列表
     * 
     * @param ct07 土承载比试验数据信息
     * @return 土承载比试验数据信息集合信息
     */
    @Override
    public PageInfo<CT07> selectCT07List(CT07 ct07, Integer pageNum,
                                             Integer pageSize) {


        // 使用分页插件
        PageUtils.startPage();
        return new PageInfo<>(ct07Mapper.selectCT07List(ct07));
    }
    
    /**
     * 通过土承载比试验数据ID查询土承载比试验数据
     * 
     * @param id 土承载比试验数据ID
     * @return 土承载比试验数据对象信息
     */
    @Override
    public CT07 selectCT07(Long id) {

        CT07 ct07 = ct07Mapper.selectCT07(id);

        // 查询子表内容 赋值到主表
        CT07_1 ct07_1 = new CT07_1();
        ct07_1.setId(ct07.getId());
        ct07_1.setTh1(ct07.getTh1());
        System.out.println(333333);
        System.out.println(ct07.getId());
        List<CT07_1> aList = ct07_1Mapper.selectCT07_1List(ct07.getTh1());
        ct07.setaList(aList);
        List<CT07_1> bList = ct07_1Mapper.selectCT07_1List(ct07.getTh2());
        ct07.setbList(bList);
        List<CT07_1> cList = ct07_1Mapper.selectCT07_1List(ct07.getTh3());
        ct07.setcList(cList);
        return ct07;

//        return ct07Mapper.selectCT07(id);
    }

    /**
     * 通过土承载比试验数据记录编号jlbh查询土承载比试验数据
     *
     * @param jlbh 土承载比试验数据记录编号jlbh
     * @return 土承载比试验数据对象信息
     */
    @Override
    public CT07 selectCT07ByJlbh(Long jlbh) {
        return ct07Mapper.selectCT07ByJlbh(jlbh);
    }

    /**
     * 新增保存土承载比试验数据信息
     * 
     * @param ct07 土承载比试验数据信息
     * @return 结果
     */
    @Override
    @Transactional
    public int insertCT07(CT07 ct07) {

        int rows = ct07Mapper.insertCT07(ct07);
        // 组装筒1数据
        System.out.println("筒号"+ct07.getTh1());
        List<CT07_1> aList = ct07.getaList();
        for (CT07_1 ct07_1 : aList) {
            ct07_1.setId(ct07.getId());
            ct07_1.setTh1(ct07.getTh1());
            ct07_1.setDwyl1((int) (ct07_1.getClhbfbds1()*ct07.getClhjzxs()/ct07.getGrgmjA()*10));
            ct07_1.setPjz1((ct07_1.getZ1()+ct07_1.getY1())/2);
            ct07_1.setGrl1(((float)ct07_1.getPjz1())/100);
            ct07_1Mapper.insertCT07_1(ct07_1);

            System.out.println(ct07_1);
        }
        // 组装筒2数据
        List<CT07_1> bList = ct07.getbList();
        for (CT07_1 ct07_1 : bList) {
            ct07_1.setId(ct07.getId());
            ct07_1.setTh1(ct07.getTh2());
            ct07_1.setDwyl1((int)(ct07_1.getClhbfbds1()*ct07.getClhjzxs()/ct07.getGrgmjA()*10));
            ct07_1.setPjz1((ct07_1.getZ1()+ct07_1.getY1())/2);
            ct07_1.setGrl1(((float)ct07_1.getPjz1())/100);
            ct07_1Mapper.insertCT07_1(ct07_1);

            System.out.println(ct07_1);
        }
//        ct07.setaList();
        // 组装筒3数据
        List<CT07_1> cList = ct07.getcList();
        for (CT07_1 ct07_1 : cList) {
            ct07_1.setId(ct07.getId());
            ct07_1.setTh1(ct07.getTh3());
            ct07_1.setDwyl1((int)(ct07_1.getClhbfbds1()*ct07.getClhjzxs()/ct07.getGrgmjA()*10));
            ct07_1.setPjz1((ct07_1.getZ1()+ct07_1.getY1())/2);
            ct07_1.setGrl1(((float)ct07_1.getPjz1())/100);
            ct07_1Mapper.insertCT07_1(ct07_1);

            System.out.println(ct07_1);
        }

        return rows;
    }

    /**
     * 修改保存土承载比试验数据信息
     * 
     * @param ct07 土承载比试验数据信息
     * @return 结果
     */
    @Override
    @Transactional
    public int updateCT07(CT07 ct07) {

        // 更新主表数据
        int rows = ct07Mapper.updateCT07(ct07);
        ct07_1Mapper.deleteCT07_1ById((long)(ct07.getId()));
        // 组装并插入新的筒1数据
        List<CT07_1> aList = ct07.getaList();
        for (CT07_1 ct07_1 : aList) {
            ct07_1.setId(ct07.getId());
            ct07_1.setTh1(ct07.getTh1());
            ct07_1.setDwyl1((int) (ct07_1.getClhbfbds1() * ct07.getClhjzxs() / ct07.getGrgmjA() * 10));
            ct07_1.setPjz1((ct07_1.getZ1() + ct07_1.getY1()) / 2);
            ct07_1.setGrl1(((float) ct07_1.getPjz1()) / 100);
            ct07_1Mapper.insertCT07_1(ct07_1);
        }
        List<CT07_1> bList = ct07.getbList();
        for (CT07_1 ct07_1 : bList) {
            ct07_1.setId(ct07.getId());
            ct07_1.setTh1(ct07.getTh2());
            ct07_1.setDwyl1((int) (ct07_1.getClhbfbds1() * ct07.getClhjzxs() / ct07.getGrgmjA() * 10));
            ct07_1.setPjz1((ct07_1.getZ1() + ct07_1.getY1()) / 2);
            ct07_1.setGrl1(((float) ct07_1.getPjz1()) / 100);
            ct07_1Mapper.insertCT07_1(ct07_1);
        }
        List<CT07_1> cList = ct07.getcList();
        for (CT07_1 ct07_1 : cList) {
            ct07_1.setId(ct07.getId());
            ct07_1.setTh1(ct07.getTh3());
            ct07_1.setDwyl1((int) (ct07_1.getClhbfbds1() * ct07.getClhjzxs() / ct07.getGrgmjA() * 10));
            ct07_1.setPjz1((ct07_1.getZ1() + ct07_1.getY1()) / 2);
            ct07_1.setGrl1(((float) ct07_1.getPjz1()) / 100);
            ct07_1Mapper.insertCT07_1(ct07_1);
        }
        return rows;
//        return ct07Mapper.updateCT07(ct07);
    }

    /**
     * 通过土承载比试验数据ID删除土承载比试验数据
     * 
     * @param id 土承载比试验数据ID
     * @return 结果
     */
    @Override
    @Transactional
    public int deleteCT07ById(Long id) {
        return ct07Mapper.deleteCT07ById(id);
    }

//    /**
//     * 通过土承载比试验数据记录编号jlbh删除土承载比试验数据
//     *
//     * @param jlbh 土承载比试验数据记录编号jlbh
//     * @return 结果
//     */
//    @Override
//    @Transactional
//    public int deleteCT07ByJlbh(Long jlbh) {
//        return ct07Mapper.deleteCT07ByJlbh(jlbh);
//    }

    /**
     * 批量删除土承载比试验数据信息
     * 
     * @param ids 需要删除的土承载比试验数据ID
     * @return 结果
     */
    @Override
    @Transactional
    public int deleteCT07ByIds(Long[] ids) {
        return ct07Mapper.deleteCT07ByIds(ids);
    }


//    /**
//     * 根据记录编号jlbh批量删除土承载比试验数据信息
//     *
//     * @param jlbhs 需要删除的土承载比试验数据记录编号jlbh
//     * @return 结果
//     */
//    @Override
//    @Transactional
//    public int deleteCT07ByJlbhs(Long[] jlbhs) {
//        return ct07Mapper.deleteCT07ByJlbhs(jlbhs);
//    }

}
