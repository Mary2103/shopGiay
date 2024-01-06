<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>NikeShoes</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,700;0,800;1,500&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel="stylesheet" href="style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<div class="container d-flex justify-content-center align-items-center min-vh-100">
		<div class="row border rounded-5 bg-white shadow" style="width:1000px">
			<div class="col-md-6 p-0 left-box" style="height:auto">
				<div class="featured-image bigImg">
					<img class="rounded-start-5" src="img/login.jpg" class="img-fluid" style="width:100%; height:680px; object-fit:cover">
				</div>
			</div>

			<!------- Right Box ------>
			
			<div class="col-md-6 mt-4">
				<div class="row align-items-center">
					<div class="header-text mb-1">
						<h4>Đăng ký tài khoản</h4>
						
					</div>
					<form action="DangKyController" method="post">
					<div class="mb-3">
						<label class="form-label">Họ và tên</label>
						<input type="text" name="hoten"class="form-control form-control-sm bg-light fs-6" required placeholder="Nhập tên của bạn">
					</div>
					
					<div class="mb-3">
						<label class="form-label">Địa chỉ</label>
						<input type="text" name="diachi"class="form-control form-control-sm bg-light fs-6" required placeholder="Nhập địa chỉ của bạn">
					</div>
					
					<div class="mb-3">
						<label class="form-label">Số điện thoại</label>
						<input type="text" name="sdt"class="form-control form-control-sm bg-light fs-6" required placeholder="Nhập số điện thoại của bạn">
					</div>
					
					<div class="mb-3">
						<label class="form-label">Địa chỉ email</label>
						<input type="email" name="email"class="form-control form-control-sm bg-light fs-6" required placeholder="Địa chỉ email của bạn">
					</div>
					
					<div class="mb-3">
						<label class="form-label">Tên đăng nhập</label>
						<input type="text" name="tendn"class="form-control form-control-sm bg-light fs-6" required placeholder="Nhập tên đăng nhập">
					</div>
					
					<div class="mb-3">
						<label class="form-label">Mật khẩu</label>
						<input type="password" name="pass" class="form-control form-control-sm bg-light fs-6" required placeholder="Nhập mật khẩu">
					</div>
					
						<!-- <div class="form-check">
							<input type="checkbox" class="form-check-input" id="formCheck">
							<label for="formCheck" class="form-check-label text-secondary">
							<small>Remember Me</small></label>
						</div> -->
						
					
					<div class="input-group mb-3 mt-3">
						<button type="submit" class="btn btn-lg btn-dark w-100 fs-6">Đăng ký</button>
					</div>
					</form>
					<div class="row">
						<small>Đã có tài khoản? Đăng nhập ngay <a class="fw-bold text-danger" href="DangNhapController">tại đây</a></small>
					</div>
				</div>
			</div>
			
		</div>
	</div>
</body>
</html>