<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<%@ include file="navbar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div id="content-wrapper" class="d-flex flex-column">
	<div id="content">
		<%@ include file="topbar.jsp"%>

		<div class="container-fluid">
			<h4 class="page-title">Sản phẩm</h4>

			<div class="card-body">
				<div class="row mb-2">
					<div class="col-sm-5">
						<a href="AdminThemTH" class="btn btn-danger mb-2">
							<i class="fas fa-plus-circle"></i>
							Thêm Sản phẩm
						</a>
					</div>
					<div class="col-sm-7">
						<div class="text-sm-end">

							<button type="button" class="btn btn-light mb-2">Xuất dữ
								liệu</button>
						</div>
					</div>
					<!-- end col-->
				</div>

			</div>

			<div class="table-responsive">
				<table class="table table-centered w-100 dt-responsive nowrap"
					id="products-datatable">
					<thead class="table-light">
						<tr>
							<th class="all" style="width: 20px;">
								<div class="form-check">
									<input type="checkbox" class="form-check-input"
										id="customCheck1">
									<label class="form-check-label" for="customCheck1">&nbsp;</label>
								</div>
							</th>
							<th>#</th>
							<th>Ảnh sản phẩm</th>
							<th>Tên sản phẩm</th>
							<th>Giá</th>
							<th style="width: 85px;">Action</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="Giay" items="${dssanpham}">
							<tr>

								<td>
									<div class="form-check">
										<input type="checkbox" class="form-check-input"
											id="customCheck2">
										<label class="form-check-label" for="customCheck2">&nbsp;</label>
									</div>
								</td>
								<td>${Giay.getMaSP()}</td>

								<td>
									<img src="${Giay.getAnhChinh()}" class="rounded me-3"
										height="48" />
								</td>

								<td>${Giay.getTenSP()}</td>
								<fmt:formatNumber var="gia" type="currency" currencyCode="VND"
									pattern="¤#,##0" value="${Giay.getGia()}" />
								<td>${gia}</td>


								<td class="table-action">
									<a href="javascript:void(0);" class="action-icon"
										style="text-decoration: none; margin-right: 20px">
										<i class="far fa-edit"></i>
									</a>
									<a href="AdminQLSP?masp=${Giay.getMaSP()}" class="action-icon">
										<i class="fas fa-trash"></i>
									</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>




		</div>
	</div>

</div>


<%@ include file="footer.jsp"%>