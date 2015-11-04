<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="DataBaseFactory.DaoFactory" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>DNH管理系统 商品管理</title>
  <meta name="description" content="这是一个 table 页面">
  <meta name="keywords" content="table">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="assets/css/admin.css">
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->


<header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong>DNH</strong> <small>后台管理</small>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="admin-user.html"><span class="am-icon-user"></span> 资料</a></li>
          <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
          <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      <li><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>


<div class="am-cf admin-main">


<input id="Page" type="hidden" name="menuURL" value=""/>
 



  <!-- sidebar start -->
 <div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">
      <li><a href="Index.jsp"><span class="am-icon-home"></span> 首页</a></li>
     	
     
     	 <li id="Order"><a href="Order.jsp" class="am-cf"><span class="am-icon-file"></span> 订单管理<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
      	<li id="Goods" ><a href="GoodsList.jsp" class="am-cf"><span class="am-icon-shopping-cart"></span> 商品管理</a></li>
         <li id="Consumer" ><a href="ConsumerList.jsp" class="am-cf"><span class="am-icon-male"></span> 消费者列表</a></li>
          <li id="Supplier"><a href="Supplier.jsp" class="am-cf"><span class="am-icon-truck"></span> 供应商列表</a></li>
  
  
      <li id="Need" class="admin-parent">
        <a class="am-cf" data-am-collapse="{target: '#collapse-nav8'}"><span class="am-icon-sign-out"></span> 需求管理<span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub " id="collapse-nav8">
          <li><a href="" class="am-cf"><span class="am-icon-check"></span> 查看供应商需求</a></li>
          <li><a href="" class="am-cf"><span class="am-icon-check"></span> 发布需求</a></li>
         </ul>
      </li>
      
      <li id="Task" class="admin-parent">
        <a class="am-cf" data-am-collapse="{target: '#collapse-nav9'}"><span class="am-icon-sign-out"></span> 任务管理<span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub " id="collapse-nav9">
          <li><a href="Connector_TaskQueryDo.jsp" class="am-cf"><span class="am-icon-check"></span> 任务列表</a></li>
          <li><a href="" class="am-cf"><span class="am-icon-check"></span> 发布任务</a></li>
         </ul>
      </li>
      
      <li id="BackGoods" class="admin-parent">
        <a class="am-cf" data-am-collapse="{target: '#collapse-nav10'}"><span class="am-icon-sign-out"></span> 售后管理<span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub " id="collapse-nav10">
          <li><a href="" class="am-cf"><span class="am-icon-check"></span> 查看供应商需求</a></li>
          <li><a href="" class="am-cf"><span class="am-icon-check"></span> 发布需求</a></li>
         </ul>
      </li>


      <li id="Station"><a href="StationList.jsp" class="am-cf"><span class="am-icon-map-marker"></span> 服务站管理</a></li>
      
      <li id="Camera"><a href="#"><span class="am-icon-camera"></span> 摄像头管理</a></li>
      <li id="Web"><a href="#"><span class="am-icon-camera"></span> 网站管理</a></li>
      
            
        <li  class="admin-parent">
       <a id="Staff" class="am-cf" data-am-collapse="{target: '#collapse-nav11'}"><span class="am-icon-user"></span> 员工管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub " id="collapse-nav11">
          <li><a href="StaffList.jsp" class="am-cf"><span class="am-icon-list"></span> 员工列表</a></li>
          <li><a href="../html/StaffAdd.html"><span class="am-icon-plus"></span> 添加员工</a></li>
        </ul>
      </li>
      
    <li class="admin-parent">
       <a id="Role" class="am-cf" data-am-collapse="{target: '#collapse-nav12'}"><span class="am-icon-users"></span> 角色管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub " id="collapse-nav12">
          <li><a href="RoleList.jsp" class="am-cf"><span class="am-icon-list"></span> 角色列表</a></li>
          <li id="RoleListCheck"><a href="RoleListCheck.jsp"><span class="am-icon-puzzle-piece"></span> 审核角色</a></li>
          </ul>
      </li>
   
    <li  class="admin-parent">
       <a id="Department" class="am-cf" data-am-collapse="{target: '#collapse-nav13'}"><span class="am-icon-bookmark-o"></span> 部门管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub " id="collapse-nav13">
          <li id="DepartmentList"><a href="DepartmentList.jsp" class="am-cf"><span class="am-icon-list"></span> 部门列表</a></li>
          <li id="DepartmentListCheck"><a href="DepartmentListCheck.jsp" class="am-cf"><span class="am-icon-list"></span> 审核部门</a></li>
       </ul>
      </li>
      
   </ul>


   <div data-am-widget="tabs"
       class="am-tabs am-tabs-default"
        >
      <ul class="am-tabs-nav am-cf">
          <li class="am-active"><a href="[data-tab-panel-0]">今日公告</a></li>
          <li class=""><a href="[data-tab-panel-1]">其它公告</a></li>
      </ul>
      <div class="am-tabs-bd">
          <div data-tab-panel-0 class="am-tab-panel am-active">
            ＃＃＃今日完成订单破千＃＃   2015.10.01
          </div>
          <div data-tab-panel-1 class="am-tab-panel ">
            ＃＃＃＃系统bug已修复＃＃   2015.09.27
          </div>
         
      </div>
  </div>


    
  </div>
<!-- sidebar end -->

<!-- content start -->
<div class="admin-content">

  <div class="am-cf am-padding">
    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">商品管理</strong> / <small>goods</small></div>
  </div>

 
  <div class="am-tabs am-margin" data-am-tabs>
    <ul class="am-tabs-nav am-nav am-nav-tabs">
      <li><a href="#tab1">未完成任务</a></li>
      <li ><a href="#tab2">已完成任务</a></li>
       <li ><a href="#tab3">领取任务</a></li>
    </ul>

    <div class="am-tabs-bd">
    
      <div class="am-tab-panel am-fade" id="tab1">
          <div class="am-g am-margin-top">     
             <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th>序号</th>
	            <th>供应商</th>
	        	<th>联系电话</th>
	        	<th>产品类别</th>
	        	<th>数量</th>
	        	<th>单位</th>
	        	<th>截止时间</th>
	        	<th>点击完成</th>
              </tr>
          </thead>
          <tbody>


	 <c:forEach var="task" items="${DaoFactory.getTaskDaoInstance().findState('已领取')}">
        <tr>
        <td>${task.task_id}</td>
        <td>${task.task_supplierid}</td> 		        
        <td>${task.task_tel}</td>  
        <td>${task.task_categoryid}</td>   
        <td>${task.task_num}</td> 
        <td>${task.task_unit}</td> 
        <td>${task.task_offtime}</td> 
	   <td>
        <a  href="../../Connector_TaskQueryUndo?task_id=${task.task_id}">点击完成</a>
      </td>    </tr>
      </c:forEach>  
  
   </tbody>
        </table>
   <div class="am-cf">
  共 5 条记录
  <div class="am-fr">
    <ul class="am-pagination">
      <li class="am-disabled"><a href="#">«</a></li>
      <li class="am-active"><a href="#">1</a></li>
      <li><a href="#">2</a></li>
      <li><a href="#">3</a></li>
      <li><a href="#">4</a></li>
      <li><a href="#">5</a></li>
      <li><a href="#">»</a></li>
    </ul>
  </div>
</div>
   </div>
</div>
  <div class="am-tab-panel am-fade am-in am-active" id="tab2">
        <div class="am-g am-margin-top">
           <form class="am-form">
          <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th>序号</th>
	            <th>供应商</th>
	        	<th>联系电话</th>
	        	<th>产品类别</th>
	        	<th>数量</th>
	        	<th>单位</th>
	        	<th>截止时间</th>
	        	<th>完成时间</th>
              </tr>
          </thead>
    <tbody>

	
	 <c:forEach var="task" items="${DaoFactory.getTaskDaoInstance().findState('已完成')}">
        <tr><tr><td>${task.task_id}</td>
        <td>${task.task_supplierid}</td> 		        
        <td>${task.task_tel}</td>  
        <td>${task.task_categoryid}</td>   
        <td>${task.task_num}</td> 
        <td>${task.task_unit}</td> 
        <td>${task.task_offtime}</td>
        <td>${task.task_time}</td>  </tr>
      </c:forEach>         
   </tbody>
        </table>
     </form>
      

 
<div class="am-cf">
  共 5 条记录
  <div class="am-fr">
    <ul class="am-pagination">
      <li class="am-disabled"><a href="#">«</a></li>
      <li class="am-active"><a href="#">1</a></li>
      <li><a href="#">2</a></li>
      <li><a href="#">3</a></li>
      <li><a href="#">4</a></li>
      <li><a href="#">5</a></li>
      <li><a href="#">»</a></li>
    </ul>
  </div>
</div>
  </div>
</div>  
<div class="am-tab-panel am-fade" id="tab3">
          <div class="am-g am-margin-top">     
             <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th>序号</th>
	            <th>供应商</th>
	        	<th>联系电话</th>
	        	<th>产品类别</th>
	        	<th>数量</th>
	        	<th>单位</th>
	        	<th>截止时间</th>
	        	<th>领取</th>
              </tr>
          </thead>
          <tbody>


	  <c:forEach var="task" items="${DaoFactory.getTaskDaoInstance().findState('未领取')}">
			
	        <tr>
	        <td>${task.task_id}</td>
	        <td>${task.task_supplierid}</td> 		        
	        <td>${task.task_tel}</td>  
	        <td>${task.task_categoryid}</td>   
	        <td>${task.task_num}</td> 
	        <td>${task.task_unit}</td> 
	        <td>${task.task_offtime}</td> 			         
	        <td><a href="../../Connector_TaskGet?task_id=${task.task_id}">领取任务</a></td> 
	     
	        </tr>    
			</c:forEach>
  
   </tbody>
        </table>
   <div class="am-cf">
  共 5 条记录
  <div class="am-fr">
    <ul class="am-pagination">
      <li class="am-disabled"><a href="#">«</a></li>
      <li class="am-active"><a href="#">1</a></li>
      <li><a href="#">2</a></li>
      <li><a href="#">3</a></li>
      <li><a href="#">4</a></li>
      <li><a href="#">5</a></li>
      <li><a href="#">»</a></li>
    </ul>
  </div>
</div>
   </div>
</div>  
</div>
    </div>
</div>


 
<!-- content end -->

</div>


<footer>
  <hr>
  <p class="am-padding-left">© 2015 DNH后台管理 <a href="＃" target="_blank">大农合</a></p>
</footer>

<!--[if lt IE 9]>
<script src="assets/js/jquery1.11.1.min.js"></script>
<script src="assets/js/modernizr.js"></script>
<script src="assets/js/polyfill/rem.min.js"></script>
<script src="assets/js/polyfill/respond.min.js"></script>
<script src="assets/js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/amazeui.min.js"></script>
<!--<![endif]-->
<script src="assets/js/app.js"></script>
<script src="../js/PrivilegeManage.js"></script> 
</body>
</html>