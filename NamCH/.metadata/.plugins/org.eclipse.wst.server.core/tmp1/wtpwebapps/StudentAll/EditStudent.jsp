<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Sinh Viên</title>
<style>
	input[type=text], select {
	    width: 100%;
	    padding: 12px 20px;
	    margin: 8px 0;
	    display: inline-block;
	    border: 1px solid #ccc;
	    border-radius: 4px;
	    box-sizing: border-box;
	}
	input[type=submit] {
	    width: 100%;
	    background-color: #4CAF50;
	    color: white;
	    padding: 14px 20px;
	    margin: 8px 0;
	    border: none;
	    border-radius: 4px;
	    cursor: pointer;
	}
	#form {
	    border-radius: 5px;
	    background-color: #f2f2f2;
	    padding: 20px;
	}
</style>
</head>
<body>
	<center><h1>Update Sinh Viên</h1></center>
	<div id="form">
	<c:forEach var="student" items="${listStu}">
	  <form action="update" method="post" enctype="multipart/form-data">
	    <label>Mã Sinh Viên</label>
	    <input type="hidden"  name="code" value="<c:out value="${student.code}" />">
	    <input type="text" disabled="disabled" value="<c:out value="${student.code}" />">
	
	    <label>Họ Và Tên</label>
	    <input type="text" name="fullname" value="<c:out value="${student.fullname}" />">
	    
	    <label>Lớp</label>
	    <input type="text" name="classStudent" value="<c:out value="${student.classStudent}" />">	
	    
	    <label>Điểm Lp1</label>
	    <input type="text" name="pointLp1" value="<c:out value="${student.lp1}" />">	
	    
	    <label>Điểm Lp2</label>
	    <input type="text" name="pointLp2" value="<c:out value="${student.lp2}" />">    
	  
	    <input type="submit" value="Submit">
	  </form>
	 </c:forEach>
	</div>
</body>
</html>