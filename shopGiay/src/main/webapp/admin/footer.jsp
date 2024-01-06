<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
</div>

 <!-- Bootstrap core JavaScript-->
 <script src="admin/vendor/jquery/jquery.min.js"></script>
 <script src="admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

 <!-- Core plugin JavaScript-->
 <script src="admin/vendor/jquery-easing/jquery.easing.min.js"></script>

 <!-- Custom scripts for all pages-->
 <script src="admin/js/sb-admin-2.min.js"></script>

 <!-- Page level plugins -->
 <script src="admin/vendor/chart.js/Chart.min.js"></script>

 <!-- Page level custom scripts -->
 <script src="admin/js/demo/chart-area-demo.js"></script>
 <script src="admin/js/demo/chart-pie-demo.js"></script>
 <script>
    // Sử dụng JavaScript để tự đóng alert sau một khoảng thời gian
    $(document).ready(function(){
        window.setTimeout(function() {
            $("#autoCloseAlert").alert('close');
        }, 3000); // 2000 milliseconds = 2 seconds
    });
</script>
</body>
</html>