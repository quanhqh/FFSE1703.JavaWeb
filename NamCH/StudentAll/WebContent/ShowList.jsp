<%@page import="java.util.ResourceBundle"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!ResourceBundle resourcebundle; %>
<c:if test="${lang=='en'}">
		<%
		resourcebundle = ResourceBundle.getBundle("student.properties.Resource",new Locale("en","US"));
		%>
	</c:if> 
	<c:if test="${lang!='en'}">
		<%
		 Locale.setDefault(new Locale("vi", "VN"));
		resourcebundle = ResourceBundle.getBundle("student.properties.Resource",new Locale("vi","VN"));
		%>
	</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh Sách Sinh Viên</title>
<style>
#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}

.button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 16px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
}

.button2 {
	background-color: white;
	color: black;
	border: 2px solid #008CBA;
}

.button2:hover {
	background-color: #008CBA;
	color: white;
}
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
</style>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<div class="dropdown">
  <button class="dropbtn"><%= resourcebundle.getString("language") %></button>
  <div class="dropdown-content">
    <a href="?lang=vn"><%= resourcebundle.getString("languageVN") %></a>
    <a href="?lang=en"><%= resourcebundle.getString("languageEN") %></a >
  </div>
</div>
	
	<center>
		<h1><%= resourcebundle.getString("StudentList") %></h1>
	</center>
	<table id="customers">
		<tr style="text-align: center;">
			<th id="serialNumber"><%= resourcebundle.getString("serialNumber") %></th>
			<th id="Image"><%= resourcebundle.getString("Image") %></th>
			<th id="CodeStudent"><%= resourcebundle.getString("CodeStudent") %></th>
			<th id="Fullname"><%= resourcebundle.getString("Fullname") %></th>
			<th id="Class"><%= resourcebundle.getString("Class") %></th>
			<th id="ScoreLp1"><%= resourcebundle.getString("ScoreLp1") %></th>
			<th id="ScoreLp2"><%= resourcebundle.getString("ScoreLp2") %></th>
			<th id="ScoreAvg"><%= resourcebundle.getString("ScoreAvg") %></th>
			<th id="rate"><%= resourcebundle.getString("rate") %></th>
			<th style="text-align: center;" id="Action"><%= resourcebundle.getString("Action") %></th>
		</tr>

		<c:forEach var="student" varStatus="counter" items="${listStu}">

			<tr>
				<td style="text-align: center;"><c:out value="${counter.count}" /></td>
				<td><img style="width: 70px;height: 70px;" src='<c:out value="${pageContext.request.contextPath}"></c:out>/image/165bb463dde1260748dd47c80015cc25.jpg'></td>
				<td><c:out value="${student.code}" /></td>
				<td><c:out value="${student.fullname}" /></td>
				<td><c:out value="${student.classStudent}" /></td>
				<td style="text-align: right;"><c:out value="${student.lp1}" /></td>
				<td style="text-align: right;"><c:out value="${student.lp2}" /></td>
				<td style="text-align: right;"><c:out
						value="${student.getDiemTb()}" /></td>
				<td><c:out value="${student.getXepLoai()}" /></td>
				<td style="text-align: center;">
					<div class="w3-container">
						<a href="edit?code=<c:out value='${student.code}' />"><button
								class="w3-button  w3-circle w3-blue"><%= resourcebundle.getString("Edit") %></button></a> <a
							href="view?code=<c:out value='${student.code}' />"><button
								class="w3-button  w3-circle w3-teal"><%= resourcebundle.getString("View") %></button></a> <a
							href="delete?code=<c:out value='${student.code}' />"><button
								onclick="return confirm('Bạn Có Chắc Chắn Xóa Sinh Viên ?\nTên '+<c:out value='${student.fullname}' />+'\nCó Mã '+ <c:out value='${student.code}' />);"
								class="w3-button  w3-circle w3-red w3-card-4"><%= resourcebundle.getString("Delete") %></button></a>
					</div>
				</td>
			</tr>

		</c:forEach>

	</table>
	<center><c:forEach var="x" items="${pagi}">
		${x}
	</c:forEach></center>
	<a href="add"><button style="float: right; width: 250px"
			class="button button2"><%= resourcebundle.getString("AddStudent") %></button></a>
			
			${message}
</body>
</html>