<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="jsUi/assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="jsUi/assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="jsUi/assets/css/main-min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="header">
    <div class="dl-log"><marquee onmouseover=this.stop() onmouseout=this.start()
             scrollamount=2 scrolldelay=90 direction=left width="980"
             height=40>
        欢迎使用SSM架构式学生管理系统！
    </marquee>
    </div>
</div>
<div class="content">
    <div class="dl-main-nav">
        <div class="dl-inform"><div class="dl-inform-title"><s class="dl-inform-icon dl-up"></s></div></div>
        <ul id="J_Nav"  class="nav-list ks-clear">
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">专业管理</div></li>		<li class="nav-item dl-selected"><div class="nav-item-inner nav-order">班级管理</div></li>
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-order">学生管理</div></li>       <li class="nav-item dl-selected"><div class="nav-item-inner nav-order">成绩查询</div></li>
        </ul>
    </div>
    <ul id="J_NavContent" class="dl-tab-conten">
    </ul>
</div>
<script type="text/javascript" src="jsUi/assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="jsUi/assets/js/bui-min.js"></script>
<script type="text/javascript" src="jsUi/assets/js/common/main-min.js"></script>
<script type="text/javascript" src="jsUi/assets/js/config-min.js"></script>
<script>
    BUI.use('common/main',function(){
        var config = [
                {id:'1',menu:[{text:'专业管理',items:[{id:'12',text:'添加专业',href:'/view/insertDepartment.jsp'},{id:'3',text:'删除专业',href:'/selectDepartment.do'}]}]},
                {id:'5',homePage : '8', menu:[{text:'班级管理',items:[{id:'8',text:'添加班级信息',href:'/insertclass.do'},{id:'4',text:'浏览班级信息',href:'/selectclass.do'}]}]},
                {id:'6',homePage : '9', menu:[{text:'学生管理',items:[{id:'9',text:'添加学生',href:'/insertstudent.do'},{id:'12',text:'更新学生信息',href:'/updatestudent.do'}]}]},
                {id:'7',homePage : '11', menu:[{text:'成绩查询',items:[{id:'11',text:'查询成绩',href:'/selectgrade.do'}]}]},
                 ];
        new PageUtil.MainPage({
            modulesConfig : config
        });
    });
</script>
<div style="text-align:center;">
    <p>来源：<a href="http://www.mycodes.net/" target="_blank">源码之家！最终后台实现金全版权所属<</a></p>
</div>
</body>
</html>

