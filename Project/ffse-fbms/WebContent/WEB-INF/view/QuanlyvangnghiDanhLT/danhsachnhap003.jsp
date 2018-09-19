<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<jsp:include page="/WEB-INF/view/templates/header.jsp" />

<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<!-- Path -->
		<div class="content-header row">
		<div>
		<div class="col-md-5"></div>
			<h3 >Danh sách nháp</h3>
		</div>
			<div>
			<div><a href="donxinphep003"><h4>Thêm đơn mới</h4></a></div>
			<div class="container">
			    <div class="table-responsive">
						<table class="table mb-0">
							<thead>
				<tr>
					<th >Mã đơn</th>
					<th >Mã nhân viên</th>
					<th >Ngày bắt đầu</th>
					<th >Ngày kết thúc</th>
					<th >Lý do</th>
					<th >Ghi chú</th>
					<th >Ghi chú của trưởng phòng</th>
					<th >Trạng thái</th>
					<th>Chức năng</th>
				</tr>
				</thead>
				<tbody>
			<c:forEach var="nv" items="${danhsachnhap003}">
					<tr>
					<td>${nv.id}</td>
					<td>${nv.maNhanVien.maNhanVien}</td>
					<td>${nv.ngayBatDau}</td>
					<td>${nv.ngayKetThuc}</td>
					<td>${nv.lyDo.lyDo}</td>
					<td>${nv.ghiChu}</td>
					<td>${nv.ghiChuTruongPhong}</td>
					<td>${nv.trangThai}</td>
					<td><a  href="suanhap/${nv.id }"><button class="btn btn-success">
									Sửa</button></a>  <a href="delete/${nv.id }"><button class="btn btn-danger"
									onclick="return confirm('Bạn có muốn xóa sinh viên này?');">Xóa</button></a>
					</td>
						</tr>
				</c:forEach>
				</tbody>
		</table>
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
<script>
		function canhbao() {
			return confirm("Bạn Có Chắc Muốn Xóa Không?");
		}
	</script>
<jsp:include page="/WEB-INF/view/templates/footer.jsp" />