<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/20 0020
  Time: 上午 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
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
    <form action="/update.do" method="post">
        <table class="table table-bordered table-hover definewidth m10">
            <td><input type="hidden" value="${list2.students_Id}" name="students_Id"></td></tr>
            <tr><td class="tableleft">专业：</td>
                <td>
                 <select name="classes.department.depart_Id">
                    <c:forEach items="${list}" var="c">
                        <option value=" ${c.depart_Id}">${c.depart_Name}</option>
                    </c:forEach>
                 </select>
                </td>
            </tr>
            <tr><td class="tableleft">班级：</td>
                <td>
                    <select name="classes.classes_Id">
                        <c:forEach items="${list1}" var="c">
                            <option value="${c.classes_Id}">${c.classes_Describe}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr><td class="tableleft">姓名：</td><td><input type="text" value="${list2.students_Name}" name="students_Name"></td></tr>
            <tr><td class="tableleft">性别：</td><td><input type="text" value="${list2.students_Sex}" name="students_Sex"></td></tr>
            <tr><td class="tableleft">密码：</td><td><input type="text" value="${list2.students_Password}" name="students_Password"></td></tr>
            <tr><td class="tableleft">数学：</td><td><input type="text" value="${list2.students_Math}" name="students_Math"></td></tr>
            <tr><td class="tableleft">英语：</td><td><input type="text" value="${list2.students_English}" name="students_English"></td></tr>
        </table>
        <center>
        <input type="submit" value="保存">
        </center>
    </form>
</body>
</html>
