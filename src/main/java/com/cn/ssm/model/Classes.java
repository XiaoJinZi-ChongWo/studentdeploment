package com.cn.ssm.model;

import java.io.Serializable;

/**
 * 班级对应的数据库中的表
 * Created by Administrator on 2016/9/12 0012.
 */
public class Classes implements Serializable {
    private String classes_Id;
    private Department department;
    private Integer classes_Year;
    private String classes_Describe;

    public String getClasses_Describe() {
        return classes_Describe;
    }

    public void setClasses_Describe(String classes_Describe) {
        this.classes_Describe = classes_Describe;
    }

    public String getClasses_Id() {
        return classes_Id;
    }

    public void setClasses_Id(String classes_Id) {
        this.classes_Id = classes_Id;
    }

    public Integer getClasses_Year() {
        return classes_Year;
    }

    public void setClasses_Year(Integer classes_Year) {
        this.classes_Year = classes_Year;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }
}
