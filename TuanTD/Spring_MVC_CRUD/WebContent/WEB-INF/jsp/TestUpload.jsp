<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/Spring_MVC_CRUD/upload" method="POST" enctype="multipart/form-data">
		<div class="form-group">
			<label>Avatar</label> <input type="file" name="avatar">
		</div>
		<input type="hidden" name="path" value="/Spring_MVC_CRUD/WebContent/WEB-INF/resource/upload" >
		<button type="submit">Submit</button>
	</form>
</body>
</html>