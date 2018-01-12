<!--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/14 0014
  Time: 上午 9:44
  To change this template use File | Settings | File Templates.
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>>
<html>
<head>
    <title>插入班级</title>
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
        <form:form action="/insertClassess.do" method="post" modelAttribute="classes">
            <table class="table table-bordered table-hover definewidth m10">
            <!-- path对应html中的那么属性 -->
            <!--
             表单回显的方式
             注意：可以通过modelAttribute属性指定绑定的模型属性
              若没有该指定的属性，则会从request域对象中读取command的表单bean
              如果该属性值不存在，则会发生错误。
              -->
             <tbody>
             <tr><td class="tableleft">班级号:</td><td><form:input path="classes_Id"/></td></tr>
             <tr><td class="tableleft">班级名：</td><td><form:input path="classes_Describe"/></td></tr>
             <tr>
                 <td class="tableleft">
                     专业选择：
                 </td>
                 <td>
             <select name="department.depart_Id">
             <c:forEach items="${list}" var="c">
                    <option value=" ${c.depart_Id}">${c.depart_Name}</option>
             </c:forEach>
             </select>
                 </td>
             </tr>
             <tr><td class="tableleft">入学年份：</td><td><form:input path="classes_Year"/></td></tr>
             </tbody>
             </table>
            <center>
             <input type="submit" value="添加">
            </center>
        </form:form>
    </center>
</body>
</html>
