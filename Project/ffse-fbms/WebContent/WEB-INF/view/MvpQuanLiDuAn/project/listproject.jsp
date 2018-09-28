<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />

<!-- ///////////////////////////////////////////////////////// -->


<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<!-- Path -->
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-xs-12 mb-2">
				<h3 class="content-header-title mb-0">Danh sách Dự án</h3>
				<div class="row breadcrumbs-top">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a
								href='<c:url value="/home" />'>Home</a></li>
							<li class="breadcrumb-item"><a
								href='<c:url value="/mvpquanliduan/project/list-project" />'>Danh
									sách Dự án</a></li>

						</ol>
					</div>
				</div>
			</div>
		</div>
		<hr>
		<!-- End Path -->

		<div class="content-body">
			<div class="x_panel">
				<div class="x_title">
					<a class="btn btn-outline-success round btn-min-width mr-1 mb-1"
						href="<c:url value="/mvpquanliduan/project/show-form-add" />">
						<h5class="ft-plus-circle">Thêm Dự án
						</h5>
					</a>
				</div>
				<div class="x_content">

					<!-- Show message -->
					<c:if test="${messageSuccess ne null}">
						<div class="alert alert-success alert-dismissable" role="alert">
							<button type="button" class="close" data-dismiss="alert">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							${messageSuccess}
						</div>
					</c:if>
					<table class="table table-striped"
						style="text-align: center; background: white">
						<thead style="background: #AEEEEE">
							<tr>
								<th style="text-align: center">Mã Dự án</th>
								<th style="text-align: center">Dự án</th>
								<th style="text-align: center">Khách hàng</th>
								<th style="text-align: center">PM</th>
								<th style="text-align: center">Trạng thái</th>
								<th style="text-align: center">chức năng</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="project" items="${listProject}">
								<tr>
									<td style="text-align: left">${project.idProject}</td>
									<td style="text-align: left">${project.nameProject}</td>
									<td style="text-align: left">${project.khachHang.fullname}</td>
									<td style="text-align: left">${project.pm.hoTenNv}</td>
									<td style="text-align: left;color: ${project.status.color}">${project.status.nameStatus}</td>

									<td><a class="btn btn-outline-info  "
										href="<c:url value="/mvpquanliduan/project/detail-project/${project.idProject}" />"
										title=""><i class="fa fa-camera"></i> </a>
										<button
											data-href="<c:url value="/mvpquanliduan/project/delete/${project.idProject}" />"
											class="btn btn-outline-danger" data-toggle="modal"
											data-target="#xoa_pr">
											<i class="icon-shield"></i>
										</button>
								</tr>

							</c:forEach>
						</tbody>
					</table>

					${success}

				</div>
			</div>
		</div>
	</div>
</div>
<!--                 Css for confirm delete -->
<div class="modal fade" id="xoa_pr" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Xác nhận</h4>
			</div>
			<div class="modal-body">
				<p>Bạn muốn xóa Dự án này???</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
				<a class="btn btn-primary del_pr">Xóa</a>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<script type="text/javascript">
	$('#xoa_pr').on('show.bs.modal', function(e) {
		// var test = $(e.relatedTarget).data('href'); console.log(test);
		$(this).find('.del_pr').attr('href', $(e.relatedTarget).data('href'));
	});
</script>

<!-- ////////////////////////////////////////////////////////////////////////////-->

<jsp:include page="/WEB-INF/view/templates/footer.jsp" />