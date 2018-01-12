package com.cn.ssm.model;

import java.io.Serializable;

/**
 * 学生数据库对应表
 * Created by Administrator on 2016/9/12 0012.
 */
public class Student implements Serializable {
    private String students_Id;
    private Classes classes;
    private String students_Name;
    private String students_Password;
    private String students_Sex;
    private Integer students_Math;
    private Integer students_English;

    public Classes getClasses() {
        return classes;
    }

    public void setClasses(Classes classes) {
        this.classes = classes;
    }

    public Integer getStudents_English() {
        return students_English;
    }

    public void setStudents_English(Integer students_English) {
        this.students_English = students_English;
    }

    public String getStudents_Id() {
        return students_Id;
    }

    public void setStudents_Id(String students_Id) {
        this.students_Id = students_Id;
    }

    public Integer getStudents_Math() {
        return students_Math;
    }

    public void setStudents_Math(Integer students_Math) {
        this.students_Math = students_Math;
    }

    public String getStudents_Name() {
        return students_Name;
    }

    public void setStudents_Name(String students_Name) {
        this.students_Name = students_Name;
    }

    public String getStudents_Password() {
        return students_Password;
    }

    public void setStudents_Password(String students_Password) {
        this.students_Password = students_Password;
    }

    public String getStudents_Sex() {
        return students_Sex;
    }

    public void setStudents_Sex(String students_Sex) {
        this.students_Sex = students_Sex;
    }
}
