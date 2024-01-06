<%@page import="dao.SanPhamDao"%>
<%@page import="bean.SanPhamBean"%>
<%@page import="dao.KetNoi"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="header.jsp"%>
<%@page import="java.text.NumberFormat"%>
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
										<li>
											<a href="#">Trang chủ</a>
										</li>
										<li class="active">
											<a href="#">Sản Phẩm</a>
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
<c:set var="spbean" value="${requestScope.spbean}" />
<!-- Breadcrumbs -->
<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="bread-inner">
					<ul class="bread-list">
						<li>
							<a href="HomeController">
								Trang chủ
								<i class="ti-arrow-right"></i>
							</a>
						</li>
						<li>
							<a href="SanPhamController">
								Sản phẩm
								<i class="ti-arrow-right"></i>
							</a>
						</li>
						<li class="active">
							<a href="ChiTietSPController?spid=${spbean.getMaSP()}">Chi
								tiết sản phẩm</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Breadcrumbs -->



<!-- content -->
<section class="py-5">
	<div class="container">
		<div class="row gx-5">
			<aside class="col-lg-6">
				<div class="border rounded-4 mb-3 d-flex justify-content-center">
					<div class="rounded-4">
						<img style="max-width: 100%; max-height: 100vh; margin: auto;"
							class="rounded-4 fit" src="${spbean.getAnh1()}" />
					</div>
				</div>
			</aside>


			<main class="col-lg-6">
				<div class="ps-lg-3">
					<h4 class="title text-dark">
						${spbean.getTenSP()} - ${spbean.getDanhCho()}
						<br />

					</h4>
					<div class="d-flex flex-row my-3">
						<span class="text-success ms-2">In stock</span>
					</div>
					<fmt:formatNumber var="Gia" type="currency" currencyCode="VND"
						pattern="¤#,##0" value="${spbean.gia}" />
					<div class="mb-3">
						<span class="h5">${Gia}</span>
						<span class="text-muted"></span>
					</div>

					<p>${spbean.getMoTa()}</p>

					<hr />
					<form method="post" action="GioHang"
						onsubmit="return validateForm()">
						<div class="row mb-4">
							<div class="col-12">
								<c:forEach var="size" items="${dssize}">

									<input type="radio" name="size" value="${size.getSoSize()}"
										style="width: 30px; height: 30px">
									<label class="text-center"
										style="font-size: 1rem; transform: translate(-28px, 20px);">${size.getSoSize()}</label>

								</c:forEach>
							</div>
						</div>


						<div class="row">
							<div class="col-md-4 col-6 mb-3">
								<label class="mb-2 d-block">Số lượng mua</label>
								<div class="input-group mb-3" style="width: 170px;">
									<button class="btn btn-white border border-secondary px-3"
										type="button"
										onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
										<i class="fa fa-minus"></i>
									</button>
									<input type="number" name="slm" min="1" value="1"
										class="text-center" style="font-size: 1rem; width: 100px" />
									<button class="btn btn-white border border-secondary px-3"
										type="button"
										onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
										<i class="fa fa-plus"></i>
									</button>
								</div>
							</div>
						</div>

						<input type="hidden" name="masp" value="${spbean.getMaSP()}">
						<input type="hidden" name="anh" value="${spbean.getAnhChinh()}">
						<input type="hidden" name="tensp" value="${spbean.getTenSP()}">
						<input type="hidden" name="gia" value="${spbean.getGia()}">
						<input type="hidden" name="gt" value="${spbean.getDanhCho()}">
						
						<!-- <a href="#" class="btn btn-warning shadow-0">Thêm vào giỏ</a> -->
						<button type="submit" class="btn btn-primary shadow-0"
							style="color: #fff">
							<i class="me-1 fa fa-shopping-basket"></i>
							Thêm vào giỏ
						</button>
					</form>
				</div>
			</main>

		</div>
	</div>
</section>
<!-- content -->

<script>
	function validateForm() {
		var selectedSize = document.querySelector('input[name="size"]:checked');

		if (!selectedSize) {
			alert("Vui lòng chọn một size!");
			return false; // Ngăn chặn việc submit form nếu không có size được chọn
		}

		// Xử lý logic khi form hợp lệ (nếu cần)

		return true; // Cho phép submit form nếu size đã được chọn
	}
</script>

<!-- <script>
        function addToCart() {
            // Lấy giá trị từ form
            var formData = $("#addToCartForm").serialize();

            // Sử dụng AJAX để gửi dữ liệu
            $.ajax({
                type: "POST", // hoặc "GET" tùy thuộc vào yêu cầu của bạn
                url: "GioHang", // Đường dẫn đến trang xử lý dữ liệu
                data: formData, // Dữ liệu cần gửi
                success: function(response) {
                    // Xử lý phản hồi nếu cần
                    console.log(response);

                    // Cập nhật giao diện hoặc thực hiện các hành động khác tùy thuộc vào phản hồi
                }
            });
        }
    </script> -->

<%@ include file="footer.jsp"%>