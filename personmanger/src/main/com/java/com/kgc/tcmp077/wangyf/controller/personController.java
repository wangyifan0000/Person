package com.kgc.tcmp077.wangyf.controller;

import com.github.pagehelper.PageInfo;
import com.kgc.tcmp077.wangyf.entity.person;
import com.kgc.tcmp077.wangyf.service.impl.personServiceImpl;
import org.apache.ibatis.annotations.Lang;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * @author wangyf
 * @create 2020-10-04 23:28
 */
@Controller
public class personController {
    @Resource
    personServiceImpl personServiceimpl;
    @RequestMapping("/getList")
    public  String toGetList(Model model){
        PageInfo<person> list = personServiceimpl.getList();
        model.addAttribute("list",list);
        return "main";
    }
    @RequestMapping("/insertPerson")
    public String insertPerson(){
        return "toAddPerson";
    }
    @RequestMapping("/doInsertPerson")
    public String doInsertPerson(String name,int age,String gender,String department,int rank,Model model){
        person person = new person();
        person.setId(null);
        person.setAge(age);
        person.setDepartment(department);
        person.setName(name);
        person.setRank(rank);
        person.setGender(gender);
        if(personServiceimpl.addPerson(person)>0){
            model.addAttribute("success","添加学员成功");
        }else{
            model.addAttribute("fail","添加学员失败");
        }
        return "redirect:getList";
    }
    @RequestMapping("/todelPerson/{id}")
    public String todelPerson(@PathVariable("id") int id, Model model){
        int i = personServiceimpl.delPerson(id);
        if(i>0){
            model.addAttribute("success","删除成功");
        }else{
            model.addAttribute("fail","删除失败");
        }
        return "redirect:getList";
    }
}
