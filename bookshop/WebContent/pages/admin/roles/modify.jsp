<%@page import="cn.edu.nsu.bookshop.db.last.roles.Roles"%>

<%@page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>职位管理-网上书店</title>
<meta charset="utf-8">
<!--全局CSS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/admin/share/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/admin/share/myStyle.css">
<!--私有CSS-->
<link href="<%=request.getContextPath() %>/plugins/datetimePicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

</head>
<body>
    <!-- 页面顶部导航条 -->
	<div class="row panel titlePanel">
		<div class="col-md-12">
			<div class="col-md-3">
				<h3>
					<i class="fa fa-dashboard"></i> 职位管理
				</h3>
			</div>
			<div class="col-md-6">
				<div style="text-align: center;"></div>
			</div>
			<div class="col-md-3">
				<ul class="functionTip app-breadcrumb breadcrumb">
					<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
					<li class="breadcrumb-item"><a href="">职位管理 / 修改</a></li>
				</ul>
			</div>
		</div>
	</div>
    <!-- 页面内容体 -->
    
	<div class="row">
		<div class="col-md-12">
		<form  action="<%=request.getContextPath() %>/pages/admin/shares/success.html">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">修改职位</h3>
					
				</div>
				<div class="panel-body">
			         <%
			        Roles role = (Roles)request.getAttribute("role");
			         
			         %>
		               <div class="form-group col-md-6 form-inline" >
		                 <label class="control-label-required">名称</label>
		                 <%System.out.println("修改"); %>
		                 <input class="form-control" name="roles_name" value="<%=role.getRoles_name()%>" type="text" placeholder="请输入职位的名称">
		               <%System.out.println("修改"); %>
		               </div>
		               
		               <div class="form-group col-md-6 form-inline" >
		                 <label class="control-label-norequired">说明</label>
		                 <textarea class="form-control" name="roles_note"rows="2" cols="40" placeholder="请输入职位的说明"></textarea>
		               </div>
			    </div>
			    <div class="panel-footer" style="text-align: center;">
						 <button type="button" class="btn btn-primary" onclick="navTo('<%=request.getContextPath() %>/pages/admin/roles/list.jsp')"><i class="fa fa-fw fa-lg fa-times-circle"></i>返回</button>
						 <button type="submit" class="btn btn-warning"><i class="fa fa-fw fa-lg fa-check-circle"></i>提交</button>
			    </div>
			</div>
		  </form>
		</div>
		
	</div>

	<!--全局JS -->
	<script src="<%=request.getContextPath() %>/js/admin/share/jquery-3.2.1.min.js"></script>
	<script src="<%=request.getContextPath() %>/js/admin/share/bootstrap.min.js"></script> 
	<script src="<%=request.getContextPath() %>/js/admin/share/share.js"></script>
	<!--私有JS-->
	
</body>