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
      <form action="/SinhVienSpringMVC/editsave" method="post">
        <input type="hidden"  name="id" value="<c:out value="${student.id}" />">
    
        <label>Họ Và Tên</label>
        <input type="text" name="name" value="<c:out value="${student.name}" />">
        
        <label>Năm Sinh</label>
        <input type="text" name="year" value="<c:out value="${student.year}" />"> 
        
         <label>Giới Tính</label>
        <input type="text" name="sex" value="<c:out value="${student.sex}" />">   
        
        <label>Email</label>
        <input type="text" name="email" value="<c:out value="${student.email}" />">    
        
        <label>Phone</label>
        <input type="text" name="phone" value="<c:out value="${student.phone}" />">
        
        <label>Địa Chỉ</label>
        <input type="text" name="adress" value="<c:out value="${student.adress}" />">  
        
        <label>Lớp Học</label>
        <input type="text" name="classes" value="<c:out value="${student.classes}" />">  
                  
        <input type="submit" value="Submit">
      </form>
    </div>
</body>
</html>