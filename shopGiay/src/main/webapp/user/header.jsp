<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<!-- Meta Tag -->
<title>NikeShoes</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Title Tag  -->
<title>Cửa Hàng Giày</title>
<!-- Favicon -->
<link rel="icon" type="image/png" href="user/images/favicon.png">
<!-- Web Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,100;0,200;0,300;0,400;0,700;0,800;1,500&display=swap"
	rel="stylesheet">

<!-- StyleSheet -->

<!-- Bootstrap -->
<link rel="stylesheet" href="user/css/bootstrap.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="user/css/magnific-popup.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="user/css/font-awesome.css">
<!-- Fancybox -->
<link rel="stylesheet" href="user/css/jquery.fancybox.min.css">
<!-- Themify Icons -->
<link rel="stylesheet" href="user/css/themify-icons.css">
<!-- Nice Select CSS -->
<link rel="stylesheet" href="user/css/niceselect.css">
<!-- Animate CSS -->
<link rel="stylesheet" href="user/css/animate.css">
<!-- Flex Slider CSS -->
<link rel="stylesheet" href="user/css/flex-slider.min.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="user/css/owl-carousel.css">
<!-- Slicknav -->
<link rel="stylesheet" href="user/css/slicknav.min.css">

<!-- Eshop StyleSheet -->
<link rel="stylesheet" href="user/css/reset.css">

<link rel=stylesheet href="user/css/style.css">
<link rel="stylesheet" href="user/css/responsive.css">

</head>

<body class="js">

	<!-- Preloader -->
	<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span> <span></span>
			</div>
		</div>
	</div>
	<!-- End Preloader -->


	<!-- Header -->
	<header class="header shop">
		<!-- Topbar -->
		<div class="topbar">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-md-12 col-12">
						<!-- Top Left -->
						<div class="top-left">
							<ul class="list-main">
								<li><i class="ti-headphone-alt"></i>0779551049</li>
								<li><i class="ti-email"></i> 20t1020285@husc.edu.vn</li>
							</ul>
						</div>
						<!--/ End Top Left -->
					</div>
					<div class="col-lg-7 col-md-12 col-12">
						<!-- Top Right -->
						<div class="right-content">
							<ul class="list-main">
								<li><i class="ti-location-pin"></i> Địa chỉ</li>

								<c:set var="tkbean" value="${sessionScope.dn}" />
								<c:choose>
									<c:when test="${not empty tkbean}">

										<li><i class="ti-user"></i> Xin chào <c:out
												value="${tkbean.getTenDN()}" /></li>

										<li><i class="fa fa-sign-out"></i> <a
											href="DangXuatController">Đăng xuất</a></li>

									</c:when>

									<c:otherwise>
										<li><i class="ti-power-off"></i><a
											href="DangNhapController">Đăng Nhập</a></li>

										<li><i class="fa fa-sign-in"></i><a
											href="DangKyController">Đăng ký</a></li>
									</c:otherwise>
								</c:choose>

							</ul>
						</div>
						<!-- End Top Right -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Topbar -->
		<div class="middle-inner">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 col-md-2 col-12">
						<!-- Logo -->
						<div class="logo">
							<a href="HomeController"><img src="user/images/logo.png"
								alt="logo"></a>
						</div>
						<!--/ End Logo -->
						<!-- Search Form -->
						<div class="search-top">
							<div class="top-search">
								<a href="#0"><i class="ti-search"></i></a>
							</div>
							<!-- Search Form -->
							<div class="search-top">
								<form class="search-form" action="SanPhamController" method="post">
									<input type="text" placeholder="Search here..." name="search">
									<button value="search" type="submit">
										<i class="ti-search"></i>
									</button>
								</form>
							</div>
							<!--/ End Search Form -->
						</div>
						<!--/ End Search Form -->
						<div class="mobile-nav"></div>
					</div>
					<div class="col-lg-8 col-md-7 col-12">
						<div class="search-bar-top">
							<div class="search-bar">
								<form action="SanPhamController" method="post">
									<input name="search" placeholder="Tìm theo tên giày...."
										type="text">
									<button class="btnn" type="submit">
										<i class="ti-search"></i>
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-12">
						<div class="right-bar">
							<!-- Search Form -->
							<div class="sinlge-bar">
								<a href="#" class="single-icon"><i class="fa fa-heart-o"
									aria-hidden="true"></i></a>
							</div>
							<div class="sinlge-bar">
								<a href="#" class="single-icon"><i
									class="fa fa-user-circle-o" aria-hidden="true"></i></a>
							</div>
							<div class="sinlge-bar shopping">
								<a href="GioHang" class="single-icon"><i class="ti-bag"></i> 
								<span
									class="total-count">2</span></a>
								<!-- Shopping Item -->
							
								<!--/ End Shopping Item -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>