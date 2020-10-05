package com.kgc.tcmp077.wangyf.mapper;

import com.kgc.tcmp077.wangyf.entity.person;
import com.kgc.tcmp077.wangyf.entity.personExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface personMapper {
    int countByExample(personExample example);

    int deleteByExample(personExample example);

    int deleteByPrimaryKey(Long id);

    int insert(person record);

    int insertSelective(person record);

    List<person> selectByExample(personExample example);

    person selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") person record, @Param("example") personExample example);

    int updateByExample(@Param("record") person record, @Param("example") personExample example);

    int updateByPrimaryKeySelective(person record);

    int updateByPrimaryKey(person record);
}