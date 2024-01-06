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

	<div
		class="container d-flex justify-content-center align-items-center min-vh-100">
		<div class="row border rounded-5 bg-white shadow box-area">
			<div class="col-md-6 p-0 left-box" style="height: 500px">
				<div class="featured-image bigImg">
					<img class="rounded-start-5" src="img/login.jpg" class="img-fluid"
						style="width: 100%; height: 500px; object-fit: cover">
				</div>
			</div>
			<!------- Right Box ------>
			<div class="col-md-6 right-box">
				<div class="row align-items-center">
					<div class="header-text mb-4">
						<h2>Welcome, you</h2>
						<p>Chào mừng bạn trở lại !</p>
					</div>

					<c:if
						test="${not empty requestScope.kt and requestScope.kt eq 'dns'}">
						<!-- Sử dụng alert của Bootstrap -->
						<div id="errorAlert" class="alert alert-danger" role="alert">Tên
							đăng nhập hoặc mật khẩu không chính xác.</div>
					</c:if>
					<form method="post" action="DangNhapController">
						<div class="mb-4">
							<input type="text" name="tendn"
								class="form-control form-control-lg bg-light fs-6"
								placeholder="Nhập tên đăng nhập" onclick="hideErrorAlert()">
						</div>
						<div class="mb-1">
							<input type="password" name="pass"
								class="form-control form-control-lg bg-light fs-6"
								placeholder="Nhập mật khẩu">
						</div>
						<!-- <div class="form-check">
							<input type="checkbox" class="form-check-input" id="formCheck">
							<label for="formCheck" class="form-check-label text-secondary">
							<small>Remember Me</small></label>
						</div> -->
						<div class=" mb-4 mt-2 text-center">
							<a class="text-decoration-none text-danger" href="#">Quên mật
								khẩu?</a>
						</div>

						<div class="input-group mb-3">
							<button name="dnbtn" class="btn btn-lg btn-dark w-100 fs-6">Đăng
								nhập</button>
						</div>
					</form>
					<div class="row">
						<small>
							Chưa có tài khoản? Đăng ký ngay
							<a class="fw-bold text-danger" href="DangKyController">tại đây</a>
						</small>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function hideErrorAlert() {
			// Ẩn thông báo lỗi khi người dùng click vào ô input
			document.getElementById("errorAlert").style.display = "none";
		}
	</script>

</body>
</html>