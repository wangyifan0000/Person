package com.kgc.tcmp077.wangyf.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.tcmp077.wangyf.entity.person;
import com.kgc.tcmp077.wangyf.mapper.personMapper;
import com.kgc.tcmp077.wangyf.service.personService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author wangyf
 * @create 2020-10-04 23:24
 */
@Service("personService")
public class personServiceImpl implements personService {
    @Resource
    personMapper personMapper;

    @Override
    public PageInfo<person> getList() {
        PageHelper.orderBy("id desc");
        List<person> people = personMapper.selectByExample(null);
        PageInfo<person> personPageInfo = new PageInfo<>(people);
        return personPageInfo;
    }

    @Override
    public int addPerson(person person) {
        int insert = personMapper.insert(person);
        return insert;
    }

    @Override
    public int delPerson(long id) {
        int i = personMapper.deleteByPrimaryKey(id);
        return i;
    }
}
