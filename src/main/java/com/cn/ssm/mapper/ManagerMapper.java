package com.cn.ssm.mapper;

import com.cn.ssm.model.Classes;
import com.cn.ssm.model.Department;
import com.cn.ssm.model.Student;
import org.springframework.stereotype.Component;

import java.util.List;


/**
 * 持久层
 * Created by Administrator on 2016/9/12 0012.
 */
@Component
public interface ManagerMapper {
    public void insertDepartment(Department department);//专业插入映射的SQL语句
    public List<Department> selectDepartment();//获取所有的专业信息映射的SQL语句
    public void deleteDepartment(int i);//通过id删除专业信息
    public List<Classes> selectClasses();//获取班级信息的映射SQL语句
    public void insertClasses(Classes classes);//插入班级信息映射的SQL语句
    public void insertStudents(Student student);//插入学生信息
    public List<Student> selectStudents();//查询所有的学生信息
    public void updateDepartid();//通过数据库中表与表之间的关系，实现专业信息的更新
    public Student selectStudent(String id);//通过学生的id信息搜索到相应的学生信息
    public List<Student> selectGrade(String id);//通过选择的班级ID进行字段匹配输出成绩信息
    public void updateStudent(Student student);//持久层中对通过学生的id来进行逻辑结构的更新
}
