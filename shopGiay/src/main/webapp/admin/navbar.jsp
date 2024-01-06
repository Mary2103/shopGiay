<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="Admin">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fa-solid fa-clock"></i>
        </div>
        <div class="sidebar-brand-text mx-3">SHOES</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="index.php">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Tổng quan</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Quản lý
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link" href="AdminQLThuongHieu">
            <i class="fas fa-fw fa-cog"></i>
            <span>Quản lý thương hiệu</span>
        </a>
    </li>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link" href="AdminQLSP">
            <i class="fa-solid fa-list"></i>
            <span>Quản lý sản phẩm</span>
        </a>
        
    </li>
    
    <!-- <li class="nav-item">
        <a class="nav-link" href="AdminQLSP">
            <i class="fa-solid fa-list"></i>
            <span>Quản lý hóa đơn</span>
        </a>
        
    </li> -->
    
    <li class="nav-item">
    
    </li>
    
    
	<hr class="sidebar-divider d-none d-md-block">
	<!-- Đăng xuất -->
	<li class="nav-item">
		<a class="nav-link" href="#" data-toggle="modal" data-target="#logoutModal">
             <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-200"></i>
                <span>Đăng xuất</span>
       </a>
	</li>
    <!-- Divider -->
    
   

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Bạn muốn thoát ngay bây giờ?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                Chọn nút "Đăng xuất" bên dưới nếu bạn muốn rời khỏi ca làm việc này.
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">
                    Cancel
                </button>
                <a class="btn btn-primary" href="DangXuatController">Đăng xuất</a>
            </div>
        </div>
    </div>
</div>