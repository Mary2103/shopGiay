<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<%@ include file="navbar.jsp"%>

<div id="content-wrapper" class="d-flex flex-column">
	<div id="content">
		<%@ include file="topbar.jsp"%>
		<div class="container-fluid">
			<h4 class="page-title">Thương hiệu</h4>

			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body">
							<div class="row mb-2">
								<div class="col-sm-5">
									<a href="AdminThemTH" class="btn btn-danger mb-2">
										<i class="fas fa-plus-circle"></i>
										Thêm Thương Hiệu
									</a>
								</div>
								<div class="col-sm-7">
									<div class="text-sm-end">

										<button type="button" class="btn btn-light mb-2">Xuất
											dữ liệu</button>
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
										<th>Ảnh thương hiệu</th>
										<th>Tên Thương hiệu</th>
										<th>Trạng Thái</th>
										<th style="width: 85px;">Action</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach var="Brand" items="${dsthuonghieu}">
										<tr>

											<td>
												<div class="form-check">
													<input type="checkbox" class="form-check-input"
														id="customCheck2">
													<label class="form-check-label" for="customCheck2">&nbsp;</label>
												</div>
											</td>
											<td>${Brand.maThuongHieu}</td>

											<td>
												<img src="${Brand.anh}" class="rounded me-3" height="48" />
											</td>

											<td>${Brand.tenThuongHieu}</td>
											<td>
												<span class="badge bg-success">Active</span>
											</td>

											<td class="table-action">
												<a href="AdminSuaTh?math=${Brand.maThuongHieu}" class="action-icon"
													style="text-decoration: none; margin-right: 20px">
													<i class="far fa-edit"></i>
												</a>
												<a href="AdminQLThuongHieu?math=${Brand.maThuongHieu}" class="action-icon">
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
		</div>
	</div>
</div>



































<%@ include file="footer.jsp"%>