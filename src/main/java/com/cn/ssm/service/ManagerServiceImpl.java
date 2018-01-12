package com.cn.ssm.service;

import com.cn.ssm.mapper.ManagerMapper;
import com.cn.ssm.model.Classes;
import com.cn.ssm.model.Department;
import com.cn.ssm.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 业务实现层
 * Created by Administrator on 2016/9/12 0012.
 */
@Service("managerService")//注入标志
public class ManagerServiceImpl implements ManagerService {

    @Autowired
    ManagerMapper managerMapper;

    @Override
    public void insertDepartment(Department department) {
        managerMapper.insertDepartment(department);
    }

    @Override
    public List<Department> selectDepartment() {
        return managerMapper.selectDepartment();
    }

    @Override
    public void deleteDepartmnet(int i) {
        managerMapper.deleteDepartment(i);
    }

    @Override
    public List<Classes> selectClasses() {
        return managerMapper.selectClasses();
    }

    @Override
    public void insertClasses(Classes classes) {
        managerMapper.insertClasses(classes);
    }

    @Override
    public void insertStudents(Student student) {
        managerMapper.insertStudents(student);
    }

    @Override
    public List<Student> selectStudents() {
        return managerMapper.selectStudents();
    }

    @Override
    public void updateDepartid() {
        managerMapper.updateDepartid();
    }

    @Override
    public Student selectStudent(String id) {
        return managerMapper.selectStudent(id);
    }

    @Override
    public List<Student> selectGrade(String id) {
        return managerMapper.selectGrade(id);
    }

    @Override
    public void updateStudent(Student student) {
        managerMapper.updateStudent(student);
    }
}
