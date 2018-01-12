<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/20 0020
  Time: 上午 8:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>查询学生成绩</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../jsUi/Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../jsUi/Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="../jsUi/Css/style.css" />
    <script type="text/javascript" src="../jsUi/Js/jquery.js"></script>
    <script type="text/javascript" src="../jsUi/Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="../jsUi/Js/bootstrap.js"></script>
    <script type="text/javascript" src="../jsUi/Js/ckform.js"></script>
    <script type="text/javascript" src="../jsUi/Js/common.js"></script>
    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }
    </style>
</head>
<body>
<form class="form-inline definewidth m20" action="/selectGrade.do" method="post">
    班级：
    <select name="classes.classes_Id">
        <c:forEach items="${list}" var="c">
            <option value="${c.classes_Id}">${c.classes_Describe}</option>
        </c:forEach>
    </select>&nbsp;&nbsp;
    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp;
</form>
    <table class="table table-bordered table-hover definewidth m10">
            <tbody>
            <tr><td>学号</td><td>姓名</td><td>英语</td><td>数学</td></tr>
            <c:forEach items="${list1}" var="b">
                <tr>
                <td>${b.students_Id}</td>
                <td>${b.students_Name}</td>
                <td>${b.students_English}</td>
                <td>${b.students_Math}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
</body>
</html>
