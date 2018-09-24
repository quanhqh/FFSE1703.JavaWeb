<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />
<div class="app-content content container-fluid">
	<div class="content-wrapper">

		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<h1>
					<strong>Update Vai Trò</strong>

				</h1>
			</div>
		</div>
		<form:form method="POST" action="/ffse-fbms/QuanLyDuAn/VaiTro/update"
			modelAttribute="vaitro">


<%-- 			<div class="form-group col-sm-6">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />

			</div> --%>
			<div class="form-group col-sm-6">
				<label>Mã Vai Trò</label>
				<form:input class="form-control" path="mavt" placeholder="Mã Vai Trò" />
				<form:errors path="mavt" cssStyle="color: red"></form:errors> 

			</div>
			<div class="form-group col-sm-6">
				<label>Tên Vai Trò</label>
				<form:input class="form-control" path="tenvt" placeholder="Tên Vai Trò" />
				<form:errors path="tenvt" cssStyle="color: red"></form:errors>

			</div>
			<div class="col-sm-12 text-center">
				<button type="submit" class="btn btn-success">Sữa thông tin</button>
			</div>
		</form:form>
	</div>
</div>


<jsp:include page="/WEB-INF/view/templates/footer.jsp" />
