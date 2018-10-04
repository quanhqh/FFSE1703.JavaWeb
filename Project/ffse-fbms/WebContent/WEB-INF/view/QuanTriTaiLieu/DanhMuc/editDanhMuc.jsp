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
				<h3 class="content-header-title mb-0">Update Danh Mục</h3>
				<div class="row breadcrumbs-top">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="/ffse-fbms/home">Home</a></li>
							<li class="breadcrumb-item"><a
								href="/ffse-fbms/QuanTriTaiLieu/DanhMuc/">Danh Sách Danh Mục</a></li>
							<li class="breadcrumb-item active">Update Danh Mục</li>
						</ol>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<h1>
					<strong>UPDATE DANH MỤC</strong>

				</h1>
			</div>
		</div>
		<form:form method="POST" action="/ffse-fbms/QuanTriTaiLieu/DanhMuc/update"
			modelAttribute="category" >


<%-- 			<div class="form-group col-sm-6">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />

			</div> --%>
			<div class="form-group col-sm-6">
				<label>Mã danh mục</label>
				<form:input class="form-control" path="ma_danh_muc" placeholder="Mã danh mục" />
				<form:errors path="ma_danh_muc" cssStyle="color: red"></form:errors> 

			</div>
				<form:hidden class="form-control" path="id" />  
			<div class="form-group col-sm-6">
				<label>Tên danh mục</label>
				<form:input class="form-control" path="ten_danh_muc" placeholder="Tên danh mục" />
				<form:errors path="ten_danh_muc" cssStyle="color: red"></form:errors>

			</div>
			<div class="col-sm-12 text-center">
				<button type="submit" class="btn btn-success">Sữa thông tin</button>
			</div>
		</form:form>
	</div>
</div>


<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
