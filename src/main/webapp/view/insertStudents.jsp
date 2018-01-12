<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<!--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/14 0014
  Time: 下午 2:57
  To change this template use File | Settings | File Templates.
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<center>
    <form:form action="/insertStudent.do" method="post" modelAttribute="students">
        <table class="table table-bordered table-hover definewidth m10">
            <!-- path对应html中的那么属性 -->
            <!--
             表单回显的方式
             注意：可以通过modelAttribute属性指定绑定的模型属性
              若没有该指定的属性，则会从request域对象中读取command的表单bean
              如果该属性值不存在，则会发生错误。
              -->
            <tbody>
            <tr><td class="tableleft">姓 名:</td><td><form:input path="students_Name"/></td></tr>
            <tr><td class="tableleft">学 号：</td><td><form:input path="students_Id"/></td></tr>
            <tr><td class="tableleft">班 级：</td><td>
                <select name="classes.classes_Id">
                    <c:forEach items="${list}" var="c">
                        <option value="${c.classes_Id}">${c.classes_Describe}</option>
                    </c:forEach>
                </select>
            </td></tr>
            <tr><td class="tableleft">密 码：</td><td><form:input path="students_Password" type="password"/></td></tr>
            <!-- 使用springmvc的自带标签实现 -->
            <%
                Map<String,String> sexs = new HashMap<String, String>();
                sexs.put("女","女");
                sexs.put("男","男");
                request.setAttribute("sexs",sexs);
            %>
            <tr><td class="tableleft">性 别：</td><td><form:radiobuttons path="students_Sex" items="${sexs}" /></td></tr>
            <tr><td class="tableleft">数学成绩：</td><td><form:input path="students_Math"/></td></tr>
            <tr><td class="tableleft">英语成绩：</td><td><form:input path="students_English"/></td></tr>
        </tbody>
        </table>
        <center>
        <input type="submit" value="添加">
        <input type="reset" value="取消">
        </center>
    </form:form>
</center>
</body>
</html>
