<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/doc.min.css">
	<link rel="stylesheet" href="ztree/zTreeStyle.css">
	<style>
	.tree li {
        list-style-type: none;
		cursor:pointer;
	}
	</style>
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
           <div><a class="navbar-brand" style="font-size:32px;" href="#">众筹平台 - 许可维护</a></div>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li style="padding-top:8px;">
				<div class="btn-group">
				  <button type="button" class="btn btn-default btn-success dropdown-toggle" data-toggle="dropdown">
					<i class="glyphicon glyphicon-user"></i> 张三 <span class="caret"></span>
				  </button>
					  <ul class="dropdown-menu" role="menu">
						<li><a href="#"><i class="glyphicon glyphicon-cog"></i> 个人设置</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-comment"></i> 消息</a></li>
						<li class="divider"></li>
						<li><a href="index.html"><i class="glyphicon glyphicon-off"></i> 退出系统</a></li>
					  </ul>
			    </div>
			</li>
            <li style="margin-left:10px;padding-top:8px;">
				<button type="button" class="btn btn-default btn-danger">
				  <span class="glyphicon glyphicon-question-sign"></span> 帮助
				</button>
			</li>
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
			<div class="tree">
				<ul style="padding-left:0px;" class="list-group">
					<li class="list-group-item tree-closed" >
						<a href="main.html"><i class="glyphicon glyphicon-dashboard"></i> 控制面板</a> 
					</li>
					<li class="list-group-item">
						<span><i class="glyphicon glyphicon glyphicon-tasks"></i> 权限管理 <span class="badge" style="float:right">3</span></span> 
						<ul style="margin-top:10px;">
							<li style="height:30px;">
								<a href="user.html"><i class="glyphicon glyphicon-user"></i> 用户维护</a> 
							</li>
							<li style="height:30px;">
								<a href="role.html"><i class="glyphicon glyphicon-king"></i> 角色维护</a> 
							</li>
							<li style="height:30px;">
								<a href="permission.html" style="color:red;"><i class="glyphicon glyphicon-lock"></i> 许可维护</a> 
							</li>
						</ul>
					</li>
					<li class="list-group-item tree-closed">
						<span><i class="glyphicon glyphicon-ok"></i> 业务审核 <span class="badge" style="float:right">3</span></span> 
						<ul style="margin-top:10px;display:none;">
							<li style="height:30px;">
								<a href="auth_cert.html"><i class="glyphicon glyphicon-check"></i> 实名认证审核</a> 
							</li>
							<li style="height:30px;">
								<a href="auth_adv.html"><i class="glyphicon glyphicon-check"></i> 广告审核</a> 
							</li>
							<li style="height:30px;">
								<a href="auth_project.html"><i class="glyphicon glyphicon-check"></i> 项目审核</a> 
							</li>
						</ul>
					</li>
					<li class="list-group-item tree-closed">
						<span><i class="glyphicon glyphicon-th-large"></i> 业务管理 <span class="badge" style="float:right">7</span></span> 
						<ul style="margin-top:10px;display:none;">
							<li style="height:30px;">
								<a href="cert.html"><i class="glyphicon glyphicon-picture"></i> 资质维护</a> 
							</li>
							<li style="height:30px;">
								<a href="type.html"><i class="glyphicon glyphicon-equalizer"></i> 分类管理</a> 
							</li>
							<li style="height:30px;">
								<a href="process.html"><i class="glyphicon glyphicon-random"></i> 流程管理</a> 
							</li>
							<li style="height:30px;">
								<a href="advertisement.html"><i class="glyphicon glyphicon-hdd"></i> 广告管理</a> 
							</li>
							<li style="height:30px;">
								<a href="message.html"><i class="glyphicon glyphicon-comment"></i> 消息模板</a> 
							</li>
							<li style="height:30px;">
								<a href="project_type.html"><i class="glyphicon glyphicon-list"></i> 项目分类</a> 
							</li>
							<li style="height:30px;">
								<a href="tag.html"><i class="glyphicon glyphicon-tags"></i> 项目标签</a> 
							</li>
						</ul>
					</li>
					<li class="list-group-item tree-closed" >
						<a href="param.html"><i class="glyphicon glyphicon-list-alt"></i> 参数管理</a> 
					</li>
				</ul>
			</div>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

			<div class="panel panel-default">
              <div class="panel-heading"><i class="glyphicon glyphicon-th-list"></i> 权限菜单列表 <div style="float:right;cursor:pointer;" data-toggle="modal" data-target="#myModal"><i class="glyphicon glyphicon-question-sign"></i></div></div>
			  <div class="panel-body">
                  <ul id="treeDemo" class="ztree"></ul>
			  </div>
			</div>
        </div>
      </div>
    </div>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
		<div class="modal-content">
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
			<h4 class="modal-title" id="myModalLabel">帮助</h4>
		  </div>
		  <div class="modal-body">
			<div class="bs-callout bs-callout-info">
				<h4>没有默认类</h4>
				<p>警告框没有默认类，只有基类和修饰类。默认的灰色警告框并没有多少意义。所以您要使用一种有意义的警告类。目前提供了成功、消息、警告或危险。</p>
			  </div>
			<div class="bs-callout bs-callout-info">
				<h4>没有默认类</h4>
				<p>警告框没有默认类，只有基类和修饰类。默认的灰色警告框并没有多少意义。所以您要使用一种有意义的警告类。目前提供了成功、消息、警告或危险。</p>
			  </div>
		  </div>
		  <!--
		  <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			<button type="button" class="btn btn-primary">Save changes</button>
		  </div>
		  -->
		</div>
	  </div>
	</div>
    <script src="jquery/jquery-2.1.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="script/docs.min.js"></script>
	<script src="ztree/jquery.ztree.all-3.5.min.js"></script>
        <script type="text/javascript">
            $(function () {
			    $(".list-group-item").click(function(){
				    if ( $(this).find("ul") ) {
						$(this).toggleClass("tree-closed");
						if ( $(this).hasClass("tree-closed") ) {
							$("ul", this).hide("fast");
						} else {
							$("ul", this).show("fast");
						}
					}
				});
				
				var setting = {
					view: {
						selectedMulti: false,
						addDiyDom: function(treeId, treeNode){
							var icoObj = $("#" + treeNode.tId + "_ico"); // tId = permissionTree_1, $("#permissionTree_1_ico")
							if ( treeNode.icon ) {
								icoObj.removeClass("button ico_docu ico_open").addClass("fa fa-fw " + treeNode.icon).css("background","");
							}
						},
						addHoverDom: function(treeId, treeNode){  
							var aObj = $("#" + treeNode.tId + "_a"); // tId = permissionTree_1, ==> $("#permissionTree_1_a")
							aObj.removeAttr("href");
							if (treeNode.editNameFlag || $("#btnGroup"+treeNode.tId).length>0) return;
							var s = '<span id="btnGroup'+treeNode.tId+'">';
							if ( treeNode.level == 0 ) {
								s += '<a class="btn btn-info dropdown-toggle btn-xs" style="margin-left:10px;padding-top:0px;" href="#" >&nbsp;&nbsp;<i class="fa fa-fw fa-plus rbg "></i></a>';
							} else if ( treeNode.level == 1 ) {
								s += '<a class="btn btn-info dropdown-toggle btn-xs" style="margin-left:10px;padding-top:0px;"  href="#" title="修改权限信息">&nbsp;&nbsp;<i class="fa fa-fw fa-edit rbg "></i></a>';
								if (treeNode.children.length == 0) {
									s += '<a class="btn btn-info dropdown-toggle btn-xs" style="margin-left:10px;padding-top:0px;" href="#" >&nbsp;&nbsp;<i class="fa fa-fw fa-times rbg "></i></a>';
								}
								s += '<a class="btn btn-info dropdown-toggle btn-xs" style="margin-left:10px;padding-top:0px;" href="#" >&nbsp;&nbsp;<i class="fa fa-fw fa-plus rbg "></i></a>';
							} else if ( treeNode.level == 2 ) {
								s += '<a class="btn btn-info dropdown-toggle btn-xs" style="margin-left:10px;padding-top:0px;"  href="#" title="修改权限信息">&nbsp;&nbsp;<i class="fa fa-fw fa-edit rbg "></i></a>';
								s += '<a class="btn btn-info dropdown-toggle btn-xs" style="margin-left:10px;padding-top:0px;" href="#">&nbsp;&nbsp;<i class="fa fa-fw fa-times rbg "></i></a>';
							}
			
							s += '</span>';
							aObj.after(s);
						},
						removeHoverDom: function(treeId, treeNode){
							$("#btnGroup"+treeNode.tId).remove();
						}
					},
					async: {
						enable: true,
						url:"tree.txt",
						autoParam:["id", "name=n", "level=lv"]
					},
					callback: {
						onClick : function(event, treeId, json) {

						}
					}
				};
				//$.fn.zTree.init($("#treeDemo"), setting); //异步访问数据
				
				var d =
		[ {
				"id" : 1,
				"pid" : 0,
				"seqno" : 0,
				"name" : "系统权限菜单",
				"url" : null,
				"icon" : "fa fa-sitemap",
				"open" : true,
				"checked" : false,
				"children" : [
						{
							"id" : 2,
							"pid" : 1,
							"seqno" : 0,
							"name" : "控制面板",
							"url" : "dashboard.htm",
							"icon" : "fa fa-desktop",
							"open" : true,
							"checked" : false,
							"children" : []
						},
						{
							"id" : 6,
							"pid" : 1,
							"seqno" : 1,
							"name" : "消息管理",
							"url" : "message/index.htm",
							"icon" : "fa fa-weixin",
							"open" : true,
							"checked" : false,
							"children" : []
						},
						{
							"id" : 7,
							"pid" : 1,
							"seqno" : 1,
							"name" : "权限管理",
							"url" : "",
							"icon" : "fa fa-cogs",
							"open" : true,
							"checked" : false,
							"children" : [
									{
										"id" : 8,
										"pid" : 7,
										"seqno" : 1,
										"name" : "用户管理",
										"url" : "user/index.htm",
										"icon" : "fa fa-user",
										"open" : true,
										"checked" : false,
										"children" : []
									},
									{
										"id" : 9,
										"pid" : 7,
										"seqno" : 1,
										"name" : "角色管理",
										"url" : "role/index.htm",
										"icon" : "fa fa-graduation-cap",
										"open" : true,
										"checked" : false,
										"children" : []
									},
									{
										"id" : 10,
										"pid" : 7,
										"seqno" : 1,
										"name" : "许可管理",
										"url" : "permission/index.htm",
										"icon" : "fa fa-check-square-o",
										"open" : true,
										"checked" : false,
										"children" : []
									} ]
						},
						{
							"id" : 11,
							"pid" : 1,
							"seqno" : 1,
							"name" : "资质管理",
							"url" : "",
							"icon" : "fa fa-certificate",
							"open" : true,
							"checked" : false,
							"children" : [
									{
										"id" : 12,
										"pid" : 11,
										"seqno" : 1,
										"name" : "分类管理",
										"url" : "cert/type.htm",
										"icon" : "fa fa-th-list",
										"open" : true,
										"checked" : false,
										"children" : []
									},
									{
										"id" : 13,
										"pid" : 11,
										"seqno" : 1,
										"name" : "资质管理",
										"url" : "cert/index.htm",
										"icon" : "fa fa-certificate",
										"open" : true,
										"checked" : false,
										"children" : []
									} ]
						},
						{
							"id" : 15,
							"pid" : 1,
							"seqno" : 1,
							"name" : "流程管理",
							"url" : "process/index.htm",
							"icon" : "fa fa-random",
							"open" : true,
							"checked" : false,
							"children" : []
						},
						{
							"id" : 16,
							"pid" : 1,
							"seqno" : 1,
							"name" : "审核管理",
							"url" : "",
							"icon" : "fa fa-check-square",
							"open" : true,
							"checked" : false,
							"children" : [ {
								"id" : 17,
								"pid" : 16,
								"seqno" : 1,
								"name" : "实名认证人工审核",
								"url" : "process/cert.htm",
								"icon" : "fa fa-check-circle-o",
								"open" : true,
								"checked" : false,
								"children" : []
							} ]
						} ]
			} ];
			$.fn.zTree.init($("#treeDemo"),
					setting, d);
		});
	</script>
  </body>
</html>
