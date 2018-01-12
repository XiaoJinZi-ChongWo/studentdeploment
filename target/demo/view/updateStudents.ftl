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
        <th>姓名</th>
        <th>学号</th>
        <th>性别</th>
        <th>密码</th>
        <th>数学成绩</th>
        <th>英语成绩</th>
        <th>修改</th>
    </tr>
    </thead>
    <tbody>
    <#list list as userInfo>
    <tr>
        <td>${userInfo.students_Name}</td>
        <td>${userInfo.students_Id}</td>
        <td>${userInfo.students_Sex}</td>
        <td>${userInfo.students_Password}</td>
        <td>${userInfo.students_Math}</td>
        <td>${userInfo.students_English}</td>
        <td><a href="/updeateStudent.do?id=${userInfo.students_Id}">修改</a></td>
    </tr>
    </#list>
    </tbody>
</table>.
</body>
</html>