<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<%@ include file="navbar.jsp"%>

<div id="content-wrapper" class="d-flex flex-column">
	<div id="content">
		<%@ include file="topbar.jsp"%>

		<div class="container-fluid">

			<div class="row">
				<div class="col-lg-8 mb-3 mb-lg-0">
					<c:if test="${not empty requestScope.success}">
						<div class="alert alert-success" id="autoCloseAlert">${requestScope.success}</div>
					</c:if>
					<c:if test="${not empty requestScope.fail}">
						<div class="alert alert-danger" id="autoCloseAlert">${requestScope.fail}</div>
					</c:if>
					<!-- Card -->
					<div class="card mb-3 mb-lg-5">
						<!-- Header -->

						<div class="card-header">
							<h4 class="card-header-title" >Thông tin thương hiệu</h4>
						</div>
						<!-- End Header -->

						<!-- Body -->
						<div class="card-body">
							<!-- Form -->
							<form method="post" action="AdminThemTH"
								enctype="multipart/form-data" accept-charset="UTF-8">
								<div class="mb-4">
									<label class="form-label">Tên thương hiệu</label>
									<input type="text" class="form-control" name="tenth"
										placeholder="Nhập tên sản phẩm..." required>
								</div>
								<!-- End Form -->
								<div class="mb-4">
									<label for="formFile" class="form-label">Ảnh thương
										hiệu</label>
									<input class="form-control" name="anh" type="file"
										id="formFile" required>
								</div>

								<div class="mb-4">
									<label class="form-label">Trạng thái</label>
									<select name="trangthai" style="width: 100px; height: 40px">
										<option value="true">Hiện</option>
										<option value="false">Ẩn</option>
									</select>
								</div>
								<button type="submit" name="them" class="btn btn-primary">Thêm
									Thương hiệu</button>
							</form>
						</div>

					</div>
				</div>


			</div>


		</div>


	</div>

</div>






















<%@ include file="footer.jsp"%>