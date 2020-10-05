package com.kgc.tcmp077.wangyf.service;

import com.github.pagehelper.PageInfo;
import com.kgc.tcmp077.wangyf.entity.person;

import java.util.List;

/**
 * @author wangyf
 * @create 2020-10-04 23:22
 */
public interface personService {
    PageInfo<person> getList();
    int addPerson(person person);
    int delPerson(long id);
}
