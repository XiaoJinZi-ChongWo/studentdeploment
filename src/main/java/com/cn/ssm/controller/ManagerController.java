package com.cn.ssm.controller;

import com.cn.ssm.model.Classes;
import com.cn.ssm.model.Department;
import com.cn.ssm.model.Student;
import com.cn.ssm.service.ManagerServiceImpl;
import com.sun.org.apache.xerces.internal.xs.StringList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * 请求处理层
 * Created by Administrator on 2016/9/12 0012.
 */
@Controller
public class ManagerController {
    @Autowired
    ManagerServiceImpl managerService;
   //private Department department;

    //实现添加专业的请求处理器
    @RequestMapping(value = "/insertDepartment.do",method = RequestMethod.POST)
    public String insertDepartment(Department department){
        managerService.insertDepartment(department);
        return "insertDepartment";
    }
    //实现所有专业查找显示的处理器（其中为解决其中的单个字段回显两次的问题）
    @RequestMapping(value = "/selectDepartment.do")
    public String selectDepartment(ModelMap modelMap){
        List<Department> list = managerService.selectDepartment();
        modelMap.addAttribute("list",list);
        return "deleteDepartment";
    }

    //实现复选框中删除专业的信息
    @RequestMapping(value = "/deleteDepartment.do" ,method = RequestMethod.POST)
    public String deleteDepartment(@RequestParam("deletedepart") int[] deletedepart,ModelMap modelMap){
        //通过for循环的方式遍历删除选中的专业信息
        for(int i=0;i<deletedepart.length;i++){
            managerService.deleteDepartmnet(deletedepart[i]);
        }
        List<Department> list = managerService.selectDepartment();
        modelMap.addAttribute("list",list);
        return "deleteDepartment";
    }


   //跳转添加班级界面并带上查询过后的专业信息参数
    @RequestMapping(value = "/insertclass.do",method = RequestMethod.GET)
    public String insertclass(Map<String,Object> map,ModelMap modelMap){
        List<Department> list = managerService.selectDepartment();
        //map.put("depart",department);
        modelMap.addAttribute("list",list);
        map.put("classes",new Classes());
        return "insertClasses";
    }

    //添加班级信息
    @RequestMapping(value="/insertClassess.do",method = RequestMethod.POST)
    public String insertClassess(Classes classes,ModelMap modelMap){
        managerService.insertClasses(classes);
        List<Classes> list = managerService.selectClasses();
        modelMap.addAttribute("list",list);
        return "selectClasses";
    }
    //浏览班级的信息
    @RequestMapping(value = "/selectclass.do")
    public String selectclass(ModelMap modelMap){
        List<Classes> list = managerService.selectClasses();
        modelMap.addAttribute("list",list);
        return "selectClasses";
    }

    //添加学生信息之前的获取班级名称信息
    @RequestMapping(value="/insertstudent.do",method=RequestMethod.GET)
    public String insertstudent(Map<String,Object> map,ModelMap modelMap){
        List<Classes> list = managerService.selectClasses();
        modelMap.addAttribute("list",list);
        map.put("students",new Student());
        return "insertStudents";
    }

    //添加学生信息
    @RequestMapping(value = "/insertStudent.do",method = RequestMethod.POST)
    public String insertStudent(Student student,ModelMap modelMap){
       // System.out.println(student.getClasses().getClasses_Id());
        managerService.insertStudents(student);
        managerService.updateDepartid();
        List<Student> list = managerService.selectStudents();
        modelMap.addAttribute("list",list);
        return "updateStudents";
    }

    //查询所有学生信息，并可带更改
    @RequestMapping(value = "/updatestudent.do")
    public String updatestudent(ModelMap modelMap){
        List<Student> list = managerService.selectStudents();
        modelMap.addAttribute("list",list);
        return "updateStudents";
    }

    //点击修改按钮对应学生id查询学生信息跳转修改界面
    @RequestMapping(value = "/updeateStudent.do")
    public String insertStudent(String id,ModelMap modelMap){
        System.out.println(id);
        //获取专业信息复选框中显示
        List<Department> list = managerService.selectDepartment();
        modelMap.addAttribute("list",list);
        //获取班级信息选框中显示
        List<Classes> list1 = managerService.selectClasses();
        modelMap.addAttribute("list1",list1);
        Student student= managerService.selectStudent(id);
//        String i=student.getStudents_Name();
//        System.out.print(i);
        modelMap.addAttribute("list2",student);
        return "updateStudent";
    }
    //修改后跳转修改后的界面
    @RequestMapping(value = "/update.do",method = RequestMethod.POST)
    public String updateStudent(Student student,ModelMap modelMap){
        managerService.updateStudent(student);
        List<Student> list = managerService.selectStudents();
        modelMap.addAttribute("list",list);
        return "updateStudents";
    }

    //查询班级信息页面的跳转
    @RequestMapping(value = "/selectgrade.do")
    public String selectGrade(ModelMap modelMap){
        List<Classes> list = managerService.selectClasses();
        modelMap.addAttribute("list",list);
        return "selectGrade";
    }

    //点击选中的班级查询出班级成绩
    @RequestMapping(value = "/selectGrade.do",method = RequestMethod.POST)
    public String selectGrade(@RequestParam("classes.classes_Id")String classes_Id,ModelMap modelMap){
        List<Classes> list = managerService.selectClasses();
        modelMap.addAttribute("list",list);
        List<Student> list1 = managerService.selectGrade(classes_Id);
        modelMap.addAttribute("list1",list1);
        return "selectGrade";
    }
}
