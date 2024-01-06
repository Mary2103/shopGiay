<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- Header Inner -->
<div class="header-inner">
	<div class="container">
		<div class="cat-nav-head">
			<div class="row">
				<div class="col-lg-3">
					<div class="all-category">
						<h3 class="cat-heading">
							<i class="fa fa-bars" aria-hidden="true"></i>
							THƯƠNG HIỆU
						</h3>
						<ul class="main-category">
							<c:forEach var="Th" items="${dsthuonghieu}">
								<li>
									<a href="SanPhamController?ml=${Th.maThuongHieu}">${Th.tenThuongHieu}</a>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="col-lg-9 col-12">
					<div class="menu-area">
						<!-- Main Menu -->
						<nav class="navbar navbar-expand-lg">
							<div class="navbar-collapse">
								<div class="nav-inner">
									<ul class="nav main-menu menu navbar-nav">
										<li class="active">
											<a href="#">Trang chủ</a>
										</li>
										<li>
											<a href="SanPhamController">Sản phẩm</a>
										</li>

										<li>
											<a href="#">Contact Us</a>
										</li>
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

<!-- Slider Area -->
<section class="hero-slider">
	<!-- Single Slider -->
	<div class="container">
		<div class="row no-gutters">
			<div class="col-lg-9 offset-lg-3 col-12">
				<div class="text-inner">
					<div class="row">
						<div class="col-lg-7 col-12">
							<div class="hero-text">
								<h1>
									<span>UP TO 50% OFF </span>
									GIÀY XINH
								</h1>

								<div class="button">
									<a href="#" class="btn">Mua ngay!</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!--/ End Single Slider -->
</section>
<!--/ End Slider Area -->

<!-- Start Small Banner  -->
<section class="small-banner section">
	<div class="container-fluid">
		<div class="row">
			<!-- Single Banner  -->
			<div class="col-lg-4 col-md-6 col-12">
				<div class="single-banner">
					<img src="user/images/bann1.png" alt="#">
					<div class="content">
						<p>Giày nam</p>
						<h3>Năng động</h3>
						<a href="#">Vào xem ngay</a>
					</div>
				</div>
			</div>
			<!-- /End Single Banner  -->
			<!-- Single Banner  -->
			<div class="col-lg-4 col-md-6 col-12">
				<div class="single-banner">
					<img src="user/images/bann2.png" alt="#">
					<div class="content">
						<p>Giày nữ</p>
						<h3>Quý phái</h3>
						<a href="#">Vào xem ngay</a>
					</div>
				</div>
			</div>
			<!-- /End Single Banner  -->
			<!-- Single Banner  -->
			<div class="col-lg-4 col-12">
				<div class="single-banner tab-height">
					<img src="user/images/kidbann.png" alt="#">
					<div class="content">
						<p>Giày trẻ em</p>
						<h3>Sắc màu</h3>
						<a href="#">Vào xem ngay</a>
					</div>
				</div>
			</div>
			<!-- /End Single Banner  -->
		</div>
	</div>
</section>
<!-- End Small Banner -->

<!-- Start Product Area -->
<div class="product-area section">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="section-title">
					<h2>Hàng mới về</h2>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<div class="product-info">
					<div class="tab-content" id="myTabContent">
						<!-- Start Single Tab -->
						<div class="tab-pane fade show active" id="man" role="tabpanel">
							<div class="tab-single">
								<div class="row">

									<c:forEach var="Giay" items="${dssanpham}">
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="ChiTietSPController?spid=${Giay.getMaSP()}">
														<img class="default-img" src="${Giay.getAnhChinh()}"
															alt="#">

													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModalToggle"
																title="Quick View" href="#exampleModalToggle"
																role="button">
																<i class=" ti-eye"></i>
																<span>Xem nhanh</span>
															</a>

															<div class="modal fade" id="exampleModalToggle"
																aria-hidden="true"
																aria-labelledby="exampleModalToggleLabel" tabindex="-1">
																<div class="modal-dialog modal-dialog-centered">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h1 class="modal-title fs-5"
																				id="exampleModalToggleLabel">Modal 1</h1>
																			<button type="button" class="btn-close"
																				data-bs-dismiss="modal" aria-label="Close"></button>
																		</div>
																		<div class="modal-body">Show a second modal and
																			hide this one with the button below.</div>
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
																		<div class="modal-body">Hide this modal and show
																			the first with the button below.</div>
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
															<a title="Add to cart" href="#">
																Thêm vào giỏ
																<i class="fa fa-shopping-cart" aria-hidden="true"></i>
															</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.html">${Giay.getTenSP()} -
															${Giay.danhCho}</a>
													</h3>
													<fmt:formatNumber var="gia" type="currency"
														currencyCode="VND" pattern="¤#,##0"
														value="${Giay.getGia()}" />
													<div class="product-price">
														<span>${gia}</span>
													</div>
												</div>


											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
						<!--/ End Single Tab -->

					</div>
				</div>
			</div>
			<!--/ End Single Tab -->
		</div>
	</div>
</div>
</div>
</div>
</div>
<!-- End Product Area -->


<!-- Start Shop Services Area -->
<section class="shop-services section home">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-6 col-12">
				<!-- Start Single Service -->
				<div class="single-service">
					<i class="ti-rocket"></i>
					<h4>Free shiping</h4>
					<p>Orders over $100</p>
				</div>
				<!-- End Single Service -->
			</div>
			<div class="col-lg-3 col-md-6 col-12">
				<!-- Start Single Service -->
				<div class="single-service">
					<i class="ti-reload"></i>
					<h4>Free Return</h4>
					<p>Within 30 days returns</p>
				</div>
				<!-- End Single Service -->
			</div>
			<div class="col-lg-3 col-md-6 col-12">
				<!-- Start Single Service -->
				<div class="single-service">
					<i class="ti-lock"></i>
					<h4>Sucure Payment</h4>
					<p>100% secure payment</p>
				</div>
				<!-- End Single Service -->
			</div>
			<div class="col-lg-3 col-md-6 col-12">
				<!-- Start Single Service -->
				<div class="single-service">
					<i class="ti-tag"></i>
					<h4>Best Peice</h4>
					<p>Guaranteed price</p>
				</div>
				<!-- End Single Service -->
			</div>
		</div>
	</div>
</section>
<!-- End Shop Services Area -->

<!-- Start Shop Newsletter  -->
<section class="shop-newsletter section">
	<div class="container">
		<div class="inner-top">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 col-12">
					<!-- Start Newsletter Inner -->
					<div class="inner">
						<h4>Newsletter</h4>
						<p>
							Subscribe to our newsletter and get
							<span>10%</span>
							off your first purchase
						</p>
						<form action="mail/mail.php" method="get" target="_blank"
							class="newsletter-inner">
							<input name="EMAIL" placeholder="Your email address" required=""
								type="email">
							<button class="btn">Subscribe</button>
						</form>
					</div>
					<!-- End Newsletter Inner -->
				</div>
			</div>
		</div>
	</div>
</section>
<!-- End Shop Newsletter -->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span class="ti-close" aria-hidden="true"></span>
				</button>
			</div>
			<div class="modal-body">
				<div class="row no-gutters">
					<div class="col-lg-6 offset-lg-3 col-12">
						<h4
							style="margin-top: 100px; font-size: 14px; font-weight: 500; color: #F7941D; display: block; margin-bottom: 5px;">Eshop
							Free Lite</h4>
						<h3 style="font-size: 30px; color: #333;">
							Currently You are using free lite Version of Eshop.
							<h3>
								<p
									style="display: block; margin-top: 20px; color: #888; font-size: 14px; font-weight: 400;">Please,
									purchase full version of the template to get all pages,
									features and commercial license</p>
								<div class="button" style="margin-top: 30px;">
									<a
										href="https://wpthemesgrid.com/downloads/eshop-ecommerce-html5-template/"
										target="_blank" class="btn" style="color: #fff;">Buy Now!</a>
								</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Modal end -->

<%@ include file="footer.jsp"%>