<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="cn.edu.nsu.xiaoxueqi.db.unit.Unit" %>
<%@page import="cn.edu.nsu.xiaoxueqi.db.unit.UnitDAO" %>
<%@page import="cn.edu.nsu.xiaoxueqi.db.subject.Subject" %>
<%@page import="cn.edu.nsu.xiaoxueqi.db.subject.SubjectDAO" %>

<%@ page import= "javax.servlet.ServletException"%>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="../../../css/admin.css">
<link rel="stylesheet" href="../../../css/pintuer.css">
<script src="../../../../js/jquery.js"></script>
<script src="../../../../js/pintuer.js"></script>
</head>
<body>
<script type="text/javascript">
function del(id,mid){
	if(confirm("您确定要删除吗?")){
	
	}
}
</script>
<div class="panel admin-panel margin-top" id="add">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 修改</strong></div>
  <div class="body-content">
    <form action="<%=request.getContextPath()%>/unitmodservlet" method="post" class="form-x" >    
     <div class="form-group">
        <div class="label">
          <label>单元ID：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="Unit_ID" data-validate="required:请输入ID" />
          <div class="tips"></div>
        </div>
      </div>
       
        <div class="form-group">
        <div class="label">
          <label>对应学科：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="Subject_name" data-validate="required:请输入题型" />
          <div class="tips"></div>
        </div>
      </div>
  
      <div class="form-group">
        <div class="label">
          <label>单元序号：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="Unit_number" data-validate="required:请输入ID" />
          <div class="tips"></div>
        </div>
      </div>
  
      <div class="form-group">
        <div class="label">
          <label>单元名称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="Unit_name" data-validate="required:请输入ID" />
          <div class="tips"></div>
        </div>
      </div>
  
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <a href="#"><button  class="button bg-main icon-check-square-o" type="submit"> 提交</button></a>
        </div>
      </div>
    </form>
  </div>
</div>
</body>
</html>