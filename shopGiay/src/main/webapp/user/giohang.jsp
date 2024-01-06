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
				<div class="col-12">
					<div class="menu-area">
						<!-- Main Menu -->
						<nav class="navbar navbar-expand-lg">
							<div class="navbar-collapse">
								<div class="nav-inner">
									<ul class="nav main-menu menu navbar-nav">
										<li><a href="HomeController">Trang chủ</a></li>
										<li><a href="SanPhamController">Sản phẩm</a></li>
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
						<li><a href="index1.html"> Home <i class="ti-arrow-right"></i>
						</a></li>
						<li class="active"><a href="GioHang">Cart</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Breadcrumbs -->
<c:set var="gioHangTrong" value="${empty sessionScope.gh.getAll()}" />
<c:choose>
	<c:when test="${gioHangTrong}">
		<h2 class="container d-flex flex-column align-items-center mt-5">
			GIỎ HÀNG CỦA BẠN ĐANG TRỐNG <a class="btn btn-primary mt-3"
				style="color: #fff" href="SanPhamController">MUA SẮM NGAY</a>
		</h2>
	</c:when>
	<c:otherwise>
		<!-- Shopping Cart -->
		<div class="shopping-cart section">
			<div class="container">
				<div class="row">
					<div class="col-12">

						<!-- Shopping Summery -->
						<table class="table shopping-summery">
							<thead>
								<tr class="main-heading">
									<th>SẢN PHẨM</th>
									<th>TÊN</th>
									<th class="text-center">ĐƠN GIÁ</th>
									<th class="text-center">SỐ LƯỢNG</th>
									<th class="text-center">SIZE</th>
									<th class="text-center">THÀNH TIỀN</th>
									<th class="text-center"><i class="ti-trash remove-icon"></i>
									</th>
								</tr>
							</thead>
							<tbody>
								<c:set var="i" value="0"></c:set>
								<c:forEach var="g" items="${sessionScope.gh.getAll()}">
									<tr>
										<td class="image text-center" data-title="SẢN PHẨM"><img
											src="${g.getAnhChinh()}" alt="#"></td>
										<td class="product-des text-center" data-title="TÊN">
											<p class="product-name">
												<a href="ChiTietSPController?spid=${g.getMaSP()}">${g.getTenSP()}</a>
											</p>

										</td>
										<fmt:formatNumber var="Gia" type="currency" currencyCode="VND"
											pattern="¤#,##0" value="${g.getGia()}" />
										<td class="price text-center" data-title="ĐƠN GIÁ"><span>${Gia}</span>
										</td>
										<td class="qty text-center" data-title="SỐ LƯỢNG">
											<!-- Input Order -->
											<form
												action="GioHang?mspsua=${g.getMaSP()}&szsua=${g.getSize()}"
												method="post">
												<input type="number" name="txtsua" min="1"
													value="${g.getSoLuongMua()}" class="text-center"
													style="font-size: 1rem; width: 100px; height: 42px" />
												<button class="btn btn-white border border-secondary px-3"
													type="submit">Cập nhật</button>

											</form> <%-- <div class="input-group">
										<div class="button minus">
											<button type="button" class="btn btn-primary btn-number"
												onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
												<i class="ti-minus"></i>
											</button>
										</div>
										<input type="number" name="quant" class="input-number"
											value="${g.getSoLuongMua()}">
										<div class="button plus">
											<button type="button" class="btn btn-primary btn-number"
												onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
												<i class="ti-plus"></i>
											</button>
										</div>
									</div> --%>
										</td>

										<td class="size text-center" data-title="SIZE"><span>${g.getSize()}</span>
										</td>
										<fmt:formatNumber var="TT" type="currency" currencyCode="VND"
											pattern="¤#,##0" value="${g.getThanhTien()}" />
										<td class="total-amount text-center" data-title="THÀNH TIỀN">
											<span>${TT}</span>
										</td>
										<td class="action text-center" data-title="XÓA"><a
											href="GioHang?msp=${g.getMaSP()}&sz=${g.getSize()}"
											type="submit"> <i class="ti-trash remove-icon"></i>
										</a></td>
									</tr>
									<c:set var="i" value="${i+1}"></c:set>
								</c:forEach>
							</tbody>
						</table>
						<!--/ End Shopping Summery -->
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<!-- Total Amount -->
						<div class="total-amount">
							<div class="row">
								<div class="col-lg-8 col-md-5 col-12">
									<div class="left">
										<div class="d-grid gap-5 d-md-block">
											<form action="GioHang" method="post">
												<a href="SanPhamController" class="btn btn-primary"
													type="button" style="color: #fff; cursor: pointer">Tiếp
													tục mua hàng</a>

												<button class="btn btn-primary" type="submit"
													name="xoatatca"
													style="color: #fff; cursor: pointer; height: 52px">Trả
													lại toàn bộ</button>
											</form>
										</div>

									</div>
								</div>


								<div class="col-lg-4 col-md-7 col-12">
									<div class="right">
										<ul>
											<li><fmt:formatNumber var="tong" type="currency"
													currencyCode="VND" pattern="¤#,##0"
													value="${sessionScope.gh.TongTien()}" /> Tổng tiền <span>${tong}</span>
											</li>
											<li>Miễn phí giao hàng <span>0đ</span>
											</li>

											<li class="last"><fmt:formatNumber var="tong"
													type="currency" currencyCode="VND" pattern="¤#,##0"
													value="${sessionScope.gh.TongTien()}" /> Tổng tiền <span>${tong}</span>
											</li>
										</ul>
										<form id="confirmForm" action="XacNhanController" method="post">
										<div class="button5">
											<button type="submit" class="btn" onclick="return confirmOrder()">Đặt hàng</button>
										</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<!--/ End Total Amount -->
					</div>
				</div>
			</div>
		</div>
		<!--/ End Shopping Cart -->
	</c:otherwise>
</c:choose>
<c:if test="${not empty sessionScope.thanhcong}">
    <div class="mt-5 alert alert-success text-center" style="width:500px;margin:0 auto;">${sessionScope.thanhcong}</div>
    <% session.removeAttribute("thanhcong"); %>
</c:if>
<!-- Start Shop Services Area  -->
<section class="shop-services section">
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
<!-- End Shop Newsletter -->


<c:if test="${not empty requestScope.thieu}">

	<script>
		alert("${requestScope.thieu}");
	</script>

</c:if>



<%@ include file="footer.jsp"%>