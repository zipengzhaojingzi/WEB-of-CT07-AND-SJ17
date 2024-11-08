package com.ruoyi.business.demo.mapper;


import com.ruoyi.business.demo.domain.TestReportCB09;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface TestReportCB09Mapper {
    int deleteByPrimaryKey(Long id);

    int insert(TestReportCB09 row);

    int insertSelective(TestReportCB09 row);

    TestReportCB09 selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TestReportCB09 row);

    int updateByPrimaryKey(TestReportCB09 row);

    List<TestReportCB09> selectReportList(TestReportCB09 report);
}