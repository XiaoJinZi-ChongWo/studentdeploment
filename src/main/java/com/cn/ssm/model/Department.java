package com.cn.ssm.model;

import java.io.Serializable;

/**
 * 专业对应的数据库表
 * Created by Administrator on 2016/9/12 0012.
 */
public class Department implements Serializable {
    private Integer depart_Id;
    private String depart_Name;

    public Integer getDepart_Id() {
        return depart_Id;
    }

    public void setDepart_Id(Integer depart_Id) {
        this.depart_Id = depart_Id;
    }

    public String getDepart_Name() {
        return depart_Name;
    }

    public void setDepart_Name(String depart_Name) {
        this.depart_Name = depart_Name;
    }
}
