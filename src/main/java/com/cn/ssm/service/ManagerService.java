package com.cn.ssm.service;

import com.cn.ssm.model.Classes;
import com.cn.ssm.model.Department;
import com.cn.ssm.model.Student;

import java.util.List;

/**
 * 业务层
 * Created by Administrator on 2016/9/12 0012.
 */
public interface ManagerService {
    public void insertDepartment(Department department);
    public List<Department> selectDepartment();
    public void deleteDepartmnet(int i);
    public List<Classes> selectClasses();
    public void insertClasses(Classes classes);
    public void insertStudents(Student student);
    public List<Student> selectStudents();
    public void updateDepartid();
    public Student selectStudent(String id);
    public List<Student> selectGrade(String id);
    public void updateStudent(Student student);
}
