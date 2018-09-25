<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<div class="app-content content container-fluid">
	<div class="content-wrapper">
			<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">Thêm Tài Liệu</h3>
				<div class="row breadcrumbs-top">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="/ffse-fbms/home">Home</a></li>
							<li class="breadcrumb-item"><a
								href="/ffse-fbms/QuanTriTaiLieu/TaiLieu/">Danh sách Tài Liệu</a></li>
							<li class="breadcrumb-item active">Thêm Tài Liệu</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<h1>
					<strong>THÊM MỚI DOCUMENT</strong>
				</h1>
			</div>
		</div>
		<form:form method="POST" action="/ffse-fbms/QuanTriTaiLieu/TaiLieu/creat">
			<div class="form-group col-sm-6">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" /> <label>Id</label>
				<form:input class="form-control" path="id" placeholder="Id" />
				<%--  <form:errors path="id" cssStyle="color: red"></form:errors> --%>

			</div>
			<div class="form-group col-sm-6">
				<label>Tên tài liệu</label>
				<form:input class="form-control" path="ten_tai_lieu"
					placeholder="Tên tài liệu " />
				<!-- 	<form:errors path="ten_tai_lieu" cssStyle="color: red"></form:errors> -->
			</div>
			<div class="form-group col-sm-6">
				<label>Mã danh mục</label>
				<form:input class="form-control" path="ma_danh_muc" placeholder="Mã danh mục" />
				<%--  <form:errors path="ma_danh_muc" cssStyle="color: red"></form:errors>--%>
			</div>
			<div class="form-group col-sm-6">
				<label>File</label>
				<form:input class="form-control" path="file" placeholder="File" />
				<%-- <form:errors path="file" cssStyle="color: red"></form:errors> --%>
			</div>
			<div class="form-group col-sm-6">
				<label>Mã trạng thái</label>
				<form:input class="form-control" path="ma_trang_thai"
					placeholder="Mã trạng thái" />
				<%-- <form:errors path="ma_trang_thai" cssStyle="color: red"></form:errors> --%>
			</div>
			<div class="form-group col-sm-6">
				<label>Mô tả</label>
				<form:input class="form-control" path="mo_ta"
					placeholder="Mô tả" />
				<%-- <form:errors path="mo_ta" cssStyle="color: red"></form:errors> --%>
			</div>
			<div class="form-group col-sm-6">
				<label>Ghi chú</label>
				<form:input class="form-control" path="ghi_chu"
					placeholder="Ghi chú" />
				<%-- <form:errors path="ghi_chu" cssStyle="color: red"></form:errors> --%>
			</div>
			<div class="form-group col-sm-6">
				<label>Mã phòng ban</label>
				<form:input class="form-control" path="ma_phong_ban"
					placeholder="Mã phòng ban" />
				<%-- <form:errors path="ma_phong_ban" cssStyle="color: red"></form:errors> --%>
			</div>
			<div class="col-sm-12 text-center">
				<button type="submit" class="btn btn-success">Lưu thông tin</button>
			</div>
		</form:form>
		<c:if test="${message !=null }">
						 ${message }
			</c:if>
	</div>
</div>

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
