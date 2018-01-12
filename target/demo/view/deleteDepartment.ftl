<!--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/12 0012
  Time: 下午 5:43
  To change this template use File | Settings | File Templates.
-->
<html>
<head>
    <title>删除专业信息界面</title>
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
        <form action="/deleteDepartment.do" method="post">
            <table class="table table-bordered table-hover definewidth m10">
                <thead>
                    <tr>
                        <th>专业号</th>
                        <th>专业名</th>
                        <th>删除</th>
                    </tr>
                 </thead>
                 <tbody>
                 <#list list as list>
                          <tr>
                              <!-- 对于一个字段用两次回显会报错 暂未解决 -->
                              <td>${list.depart_Id}</td>
                              <td>${list.depart_Name}</td>
                              <td><input type="checkbox" value="${list.depart_Id}" name="deletedepart"></td>
                          </tr>
                 </#list>
                 </tbody>
            </table>
            <center>
             <input type="submit" value="删除">
            <input type="reset" value="取消">
            </center>
        </form>
    </center>
</body>
</html>
