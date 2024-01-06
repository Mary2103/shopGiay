<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<%@ page import="java.text.NumberFormat"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- Header Inner -->
<div class="header-inner">
	<div class="container">
		<div class="cat-nav-head">
			<div class="row">
				<div class="col-12">
					<div class="menu-area">
						<!-- Main Menu -->
						<nav class="navbar navbar-expand-lg">
							<div class="navbar-collapse">
								<div class="nav-inner">
									<ul class="nav main-menu menu navbar-nav">
										<li><a href="HomeController">Trang chủ</a></li>
										<li class="active"><a href="SanPhamController">Sản
												phẩm</a></li>
										<li><a href="contact.html">Contact Us</a></li>
									</ul>
								</div>
							</div>
						</nav>
						<!--/ End Main Menu -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--/ End Header Inner -->
</header>
<!--/ End Header -->

<!-- Breadcrumbs -->
<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="bread-inner">
					<ul class="bread-list">
						<li><a href="HomeController"> Trang chủ <i
								class="ti-arrow-right"></i>
						</a></li>
						<li class="active"><a href="SanPhamController">Sản phẩm</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Breadcrumbs -->


<div class="page-content mb-10">
	<div class="container">
		<div style="display: flex; justify-content: flex-end">
			<div class="nice-select product__header-sort-btn">
				<span class="current" style="line-height: 42px">Sắp xếp theo:</span>

				<ul class="list" id="sortingOptions">
					<li data-value="0" class="option selected" value="">Sắp xếp theo:</li>
					<li data-value="az" class="option">Price:Low-High</li>
					<li data-value="za" class="option">Price:High-Low</li>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-3">
				<div class="panel-group">

					<div class="filter-brands">

						<h5>Thương hiệu</h5>
						<div class="filter-line--seprate"></div>

						<c:forEach var="Brand" items="${dsthuonghieu}">
							<div class="filter-brands--wrap">
								<a href="SanPhamController?ml=${Brand.getMaThuongHieu()}"
									class="filter-brands--item"> <img src="${Brand.getAnh()}"
									class="brand--img"> <span class="text-center brand-name">${Brand.getTenThuongHieu()}</span>
									</label>
								</a>

							</div>
						</c:forEach>

					</div>

					<!-- <div class="filter-price">
						<h5>Mức giá</h5>
						<div class="filter-line--seprate"></div>
					</div> -->
				</div>
			</div>

			<div class="col-lg-9">

				<div class="row">

					<c:forEach var="Giay" items="${dssanpham}">
						<div class="col-lg-4 col-6">
							<div class="single-product">
								<div class="product-img">
									<a href="ChiTietSPController?spid=${Giay.getMaSP()}"> <img
										class="default-img" src="${Giay.getAnhChinh()}" alt="#">

									</a>
									<div class="button-head">
										<div class="product-action">
											<a data-toggle="modal" data-target="#exampleModalToggle"
												title="Quick View" href="#exampleModalToggle" role="button">
												<i class=" ti-eye"></i> <span>Xem nhanh</span>
											</a>

											<div class="modal fade" id="exampleModalToggle"
												aria-hidden="true" aria-labelledby="exampleModalToggleLabel"
												tabindex="-1">
												<div class="modal-dialog modal-dialog-centered">
													<div class="modal-content">
														<div class="modal-header">
															<h1 class="modal-title fs-5" id="exampleModalToggleLabel">Modal
																1</h1>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">Show a second modal and hide
															this one with the button below.</div>
														<div class="modal-footer">
															<button class="btn btn-primary"
																data-bs-target="#exampleModalToggle2"
																data-bs-toggle="modal">Open second modal</button>
														</div>
													</div>
												</div>
											</div>
											<div class="modal fade" id="exampleModalToggle2"
												aria-hidden="true"
												aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
												<div class="modal-dialog modal-dialog-centered">
													<div class="modal-content">
														<div class="modal-header">
															<h1 class="modal-title fs-5"
																id="exampleModalToggleLabel2">Modal 2</h1>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">Hide this modal and show the
															first with the button below.</div>
														<div class="modal-footer">
															<button class="btn btn-primary"
																data-bs-target="#exampleModalToggle"
																data-bs-toggle="modal">Back to first</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="product-action-2">
											<a title="Add to cart" href="#"> Thêm vào giỏ <i
												class="fa fa-shopping-cart" aria-hidden="true"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="product-content">
									<h3>
										<a href="product-details.html">${Giay.getTenSP()} -
											${Giay.danhCho}</a>
									</h3>
									<fmt:formatNumber var="gia" type="currency" currencyCode="VND"
										pattern="¤#,##0" value="${Giay.getGia()}" />
									<div class="product-price">
										<span>${gia}</span>
									</div>
								</div>


							</div>
						</div>
					</c:forEach>
				</div>
				<!-- <nav aria-label="Page navigation example">
					<ul class="pagination" style="display:flex; align-items:center;justify-content:center">
						<li class="page-item"><a class="page-link" href="#">Previous</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</nav> -->
			</div>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>