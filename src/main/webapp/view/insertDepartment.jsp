<!--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/12 0012
  Time: 下午 4:27
  To change this template use File | Settings | File Templates.
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加专业</title>
</head>
<body>
    <center>

        <form action="/insertDepartment.do" method="post">
            <table>
                <tr><td>专业名称：</td><td><input type="text" name="depart_Name"></td></tr>
            </table>
            <input type="submit" value="增加">
            <input type="reset" value="重置">
        </form>
    </center>
</body>
</html>
