<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Product</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--Icon browser-->
<link rel="icon" type="image/png"
	href="KhachHang/images/icons/Kukku-Icon.png" />
<!--Link boostrap-->
<link rel="stylesheet" type="text/css"
	href="KhachHang/vendor/bootstrap/css/bootstrap.min.css">
<!--font awesome-->
<link rel="stylesheet" type="text/css"
	href="KhachHang/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--font iconic-->
<link rel="stylesheet" type="text/css"
	href="KhachHang/fonts/iconic/css/material-design-iconic-font.min.css">
<!--font linearicons-->
<link rel="stylesheet" type="text/css"
	href="KhachHang/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--CSS-->
<link rel="stylesheet" type="text/css"
	href="KhachHang/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="KhachHang/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="KhachHang/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="KhachHang/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="KhachHang/vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css"
	href="KhachHang/vendor/slick/slick.css">
<link rel="stylesheet" type="text/css"
	href="KhachHang/vendor/MagnificPopup/magnific-popup.css">
<link rel="stylesheet" type="text/css"
	href="KhachHang/vendor/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" type="text/css" href="KhachHang/css/util.css">
<link rel="stylesheet" type="text/css" href="KhachHang/css/main.css">
<!--end CSS-->
</head>
<style>
.page-item.active .page-link {
	color: #fff;
	background-color: #222222;
	border-color: #222222;
}

.page-link {
	color: #222222;
}

.page-link:hover {
	color: #222222;
}
</style>
<body class="animsition">

	<!-- Header -->
	<header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar">Free shipping for standard order
						over $100</div>

					<div class="right-top-bar flex-w h-full">
						<a href="#" class="flex-c-m trans-04 p-lr-25"> Help & FAQs </a>
						<c:choose>
							<c:when test="${sessionScope.khachhang == null }">
								<a href="CustomerLoginController"
									class="flex-c-m trans-04 p-lr-25"> Login </a>
							</c:when>
							<c:otherwise>
								<a href="#" class="flex-c-m trans-04 p-lr-25">${ sessionScope.khachhang.hoTen}
								</a>
								<a href="CustomerLogoutController"
									class="flex-c-m trans-04 p-lr-25"> Logout </a>
							</c:otherwise>
						</c:choose>
						<a href="CustomerRegisterController"
							class="flex-c-m trans-04 p-lr-25"> Register </a>
					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop container">

					<!-- Logo desktop -->
					<a href="#" class="logo"> <img
						src="KhachHang/images/icons/Kukku.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li><a href="TrangChuController">Home</a></li>

							<li class="active-menu"><a href="SanPhamController">Shop</a>
							</li>

							<li><a href="HienThiGioController">Features</a></li>

							<c:if test="${sessionScope.khachhang != null }">
								<li><a href="LichSuMuaHangController">History</a></li>
							</c:if>

						</ul>
					</div>

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
						<div
							class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>
					</div>
				</nav>
			</div>
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->
			<div class="logo-mobile">
				<a href="TrangChuController"><img
					src="KhachHang/images/icons/Kukku.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box"> <span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="topbar-mobile">
				<li>
					<div class="left-top-bar">Free shipping for standard order
						over $100</div>
				</li>

				<li>
					<div class="right-top-bar flex-w h-full">
						<a href="#" class="flex-c-m p-lr-10 trans-04"> Help & FAQs </a>
						<c:choose>
							<c:when test="${sessionScope.khachhang == null }">
								<a href="CustomerLoginController"
									class="flex-c-m trans-04 p-lr-25"> Login </a>
							</c:when>
							<c:otherwise>
								<a href="#" class="flex-c-m trans-04 p-lr-25">${ sessionScope.khachhang.hoTen}
								</a>
								<a href="CustomerLogoutController"
									class="flex-c-m trans-04 p-lr-25"> Logout </a>
							</c:otherwise>
						</c:choose>
						<a href="CustomerRegisterController"
							class="flex-c-m trans-04 p-lr-25"> Register </a>

					</div>
				</li>
			</ul>

			<ul class="main-menu-m">
				<li><a href="TrangChuController">Home</a></li>

				<li><a href="SanPhamController">Shop</a></li>

				<li><a href="HienThiGioController">Features</a></li>

				<c:if test="${sessionScope.khachhang != null }">
					<li><a href="LichSuMuaHangController">History</a></li>
				</c:if>
			</ul>
		</div>

		<!-- Modal Search -->
		<div
			class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button
					class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="KhachHang/images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15"
					action="SanPhamController" method="post">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="key" placeholder="Search...">
				</form>
			</div>
		</div>
	</header>


	<!-- Product -->
	<div class="bg0 m-t-23 p-b-140">
		<div class="container">
			<div class="flex-w flex-sb-m p-b-52">
				<div class="flex-w flex-l-m filter-tope-group m-tb-10">
					<c:forEach var="l" items="${dsloai }">
						<a
							class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1"
							data-filter="*" href="SanPhamController?ml=${l.maLoai}">${l.getTenLoai()}</a>
					</c:forEach>
				</div>
			</div>

			<div class="row isotope-grid">
				<c:forEach var="item" items="${dssp }">
					<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
						<!-- Block2 -->
						<div class="block2">
							<div style="max-height: 250px" class="block2-pic hov-img0">
								<a
									href="ChiTietSanPhamController?msp=${item.maSanPham}&tsp=${item.tenSanPham }&gia=${item.gia }&img=${item.anh}&des=${item.moTa}">
									<img src="${item.anh }" alt="IMG-PRODUCT">
								</a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<%-- 	<a href="ChiTietSanPhamController?msp=${item.maSanPham}" 
								class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									${item.tenSanPham }
								</a> --%>
									<span class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										${item.tenSanPham } </span> <span class="stext-105 cl3">
										${item.gia } vnđ </span>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<div class="bg0 m-t-23 p-b-140">
		<div class="text-center  isotope-grid ">
			<c:if test="${ totalPage > 1 }">
				<div class="col">
					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center">
							<li class="page-item "><a class="page-link"
								href="SanPhamController?index=${indexPage-1}${key != null ? '&key=': ''}${key != null ? key : ''}
								${ml != null ? '&ml=': ''}${ml != null ? ml : ''}"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Previous</span>
							</a></li>
							<c:forEach var="i" begin="1" end="${totalPage}">
								<li class="page-item ${indexPage == i ? 'active' : '' }"><a
									class="page-link"
									href="SanPhamController?index=${i}${key != null ? '&key=' : ''}${key != null ? key : ''}
								${ml != null ? '&ml=': ''}${ml != null ? ml : ''}">${i}</a></li>
								<!-- <li class="page-item"><a class="page-link" href="#">2</a></li> -->
							</c:forEach>

							<li class="page-item"><a class="page-link"
								href="SanPhamController?index=${indexPage+1}${key != null ? '&key=': ''}${key != null ? key : ''}
								${ml != null ? '&ml=': ''}${ml != null ? ml : ''}"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
									class="sr-only">Next</span>
							</a></li>
						</ul>
					</nav>
				</div>
			</c:if>
		</div>
	</div>
	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">Categories</h4>

					<ul>
						<li class="p-b-10"><a href="#"
							class="stext-107 cl7 hov-cl1 trans-04"> Women </a></li>

						<li class="p-b-10"><a href="#"
							class="stext-107 cl7 hov-cl1 trans-04"> Men </a></li>

						<li class="p-b-10"><a href="#"
							class="stext-107 cl7 hov-cl1 trans-04"> Shoes </a></li>

						<li class="p-b-10"><a href="#"
							class="stext-107 cl7 hov-cl1 trans-04"> Watches </a></li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">Help</h4>

					<ul>
						<li class="p-b-10"><a href="#"
							class="stext-107 cl7 hov-cl1 trans-04"> Track Order </a></li>

						<li class="p-b-10"><a href="#"
							class="stext-107 cl7 hov-cl1 trans-04"> Returns </a></li>

						<li class="p-b-10"><a href="#"
							class="stext-107 cl7 hov-cl1 trans-04"> Shipping </a></li>

						<li class="p-b-10"><a href="#"
							class="stext-107 cl7 hov-cl1 trans-04"> FAQs </a></li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">GET IN TOUCH</h4>

					<p class="stext-107 cl7 size-201">Any questions? Let us know in
						store at 8th floor, 379 Hudson St, New York, NY 10018 or call us
						on (+1) 96 716 6879</p>

					<div class="p-t-27">
						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
							class="fa fa-facebook"></i>
						</a> <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
							class="fa fa-instagram"></i>
						</a> <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
							class="fa fa-pinterest-p"></i>
						</a>
					</div>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">Newsletter</h4>

					<form>
						<div class="wrap-input1 w-full p-b-4">
							<input class="input1 bg-none plh1 stext-107 cl7" type="text"
								name="email" placeholder="email@example.com">
							<div class="focus-input1 trans-04"></div>
						</div>

						<div class="p-t-18">
							<button
								class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
								Subscribe</button>
						</div>
					</form>
				</div>
			</div>

			<div class="p-t-40">
				<div class="flex-c-m flex-w p-b-18">
					<a href="#" class="m-all-1"> <img
						src="KhachHang/images/icons/icon-pay-01.png" alt="ICON-PAY">
					</a> <a href="#" class="m-all-1"> <img
						src="KhachHang/images/icons/icon-pay-02.png" alt="ICON-PAY">
					</a> <a href="#" class="m-all-1"> <img
						src="KhachHang/images/icons/icon-pay-03.png" alt="ICON-PAY">
					</a> <a href="#" class="m-all-1"> <img
						src="KhachHang/images/icons/icon-pay-04.png" alt="ICON-PAY">
					</a> <a href="#" class="m-all-1"> <img
						src="KhachHang/images/icons/icon-pay-05.png" alt="ICON-PAY">
					</a>
				</div>

				<p class="stext-107 cl6 txt-center">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved |Made with <i class="fa fa-heart-o"
						aria-hidden="true"></i> by <a href="https://colorlib.com"
						target="_blank">Colorlib</a> &amp; distributed by <a
						href="https://themewagon.com" target="_blank">ThemeWagon</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

				</p>
			</div>
		</div>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>


	<!--===============================================================================================-->
	<script src="KhachHang/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="KhachHang/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="KhachHang/vendor/bootstrap/js/popper.js"></script>
	<script src="KhachHang/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="KhachHang/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="KhachHang/vendor/daterangepicker/moment.min.js"></script>
	<script src="KhachHang/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="KhachHang/vendor/slick/slick.min.js"></script>
	<script src="KhachHang/js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script src="KhachHang/vendor/parallax100/parallax100.js"></script>
	<script>
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script
		src="KhachHang/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
				delegate : 'a', // the selector for gallery item
				type : 'image',
				gallery : {
					enabled : true
				},
				mainClass : 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="KhachHang/vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="KhachHang/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="KhachHang/js/main.js"></script>

</body>
</html>