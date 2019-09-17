<%@page import="cn.edu.nsu.InfoManagement.db.students.Students"%>
<%@page import="cn.edu.nsu.InfoManagement.db.students.StudentsDAO"%>
<%@page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>修改学生</title>  
    <link rel="stylesheet" type="text/css" href="../../../../css/admin.css">
	<link rel="stylesheet" type="text/css" href="../../../../css/pintuer.css">
	<script src="../../../../js/jquery.js"></script>
	<script src="../../../../js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel margin-top" id="add">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 修改学生</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action=""> 
    <%
       	   //从students表中查询修改用户数据
       	   String students_idStr = request.getParameter("students_id");
       	   int students_id = Integer.parseInt(students_idStr);
       	   StudentsDAO studentsDAO = new StudentsDAO();
       	   Students student = studentsDAO.getById(students_id);
       	   //显示修改用户
			              	   
        %>    
       
      <div class="form-group">
        <div class="label">
          <label>学生名：</label>
        </div>
        <div class="field">
          <input name="students_name" value="<%=student.getStudents_name() %>" type="text" class="input w50" value="" name="title" data-validate="required:请输入学生名" />
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>学生照片：</label>
        </div>
        <div class="field">
          <input name="students_photo" value="<%=student.getStudents_photo() %>" type="text" id="url1" name="img" class="input tips" style="width:25%; float:left;"  value="" data-toggle="hover" data-place="right" data-image="" />
          <input type="button" class="button bg-blue margin-left" id="image1" value="+ 浏览上传"  style="float:left;">
          <div class="tipss">图片尺寸：1920*500</div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>性别：</label>
        </div>
        <div class="field">
          <input name="students_sex" value="<%=student.getStudents_sex() %>" type="text" class="input w50" value="" name="title" data-validate="required:请输入性别" />
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>身份证号码：</label>
        </div>
        <div class="field">
          <input name="students_idNum" value="<%=student.getStudents_idNum() %>" type="text" class="input w50" value="" name="title" data-validate="required:请输入身份证号码" />
          <div class="tips"></div>
        </div>
      </div>
      
      
      
      <div class="form-group">
        <div class="label">
          <label>联系电话：</label>
        </div>
        <div class="field">
          <input name="students_phone" value="<%=student.getStudents_phone() %>"type="text" class="input w50" value="" name="title" data-validate="required:请输入联系电话" />
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>备注：</label>
        </div>
        <div class="field">
          <textarea type="text" class="input" name="note" value=""></textarea>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
</body>
</html>