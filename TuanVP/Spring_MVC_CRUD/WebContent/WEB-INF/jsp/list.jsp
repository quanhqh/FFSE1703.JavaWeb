<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div style="text-align: center;">
			<h1>Danh sách sinh viên</h1>
		</div>
		<div>
			<h3>
				<a href="add">Thêm sinh viên</a>
			</h3>
		</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">Mã sinh viên</th>
					<th scope="col">Tên sinh viên</th>
					<th scope="col">Năm sinh</th>
					<th scope="col">Địa chỉ</th>
					<th scope="col">Email</th>
					<th scope="col">Lớp học</th>
					<th scope="col">Hành động</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="sv" items="${list }">
					<tr>
						<th scope="row">${sv.maSV}</th>
						<td>${sv.tenSV }</td>
						<td>${sv.namSinh }</td>
						<td>${sv.diaChi }</td>
						<td>${sv.email }</td>
						<td>${sv.lopHoc }</td>
						<td>
							<a href="edit/${sv.maSV }" class="btn btn-success">Sửa</a>
							<a href="delete/${sv.maSV }" onclick="return confirm('Bạn có muốn xóa sinh viên này?');" class="btn btn-danger">Xóa</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>