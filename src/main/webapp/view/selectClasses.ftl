<!--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/14 0014
  Time: 上午 11:23
  To change this template use File | Settings | File Templates.
-->
<html>
<head>
    <title>班级信息</title>
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
        <table class="table table-bordered table-hover definewidth m10">
        <thead>
            <tr>
                <th>班级ID</th>
                <th>班级名</th>
                <th>入学年份</th>
            </tr>
         </thead>
            <tbody>
                <#list list as userInfo>
                    <tr>
                         <td>${userInfo.classes_Id}</td>
                         <td>${userInfo.classes_Describe}</td>
                         <td>${userInfo.classes_Year}</td>
                    </tr>
                </#list>
             </tbody>
        </table>
</body>
</html>
