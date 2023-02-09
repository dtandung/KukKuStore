<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
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
<body class="animsition">

	<!-- Header -->
	<header>
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
							<li class="active-menu"><a href="TrangChuController">Home</a>
							</li>

							<li><a href="SanPhamController">Shop</a></li>

							<li><a href="HienThiGioController">Features</a></li>

							<c:if test="${sessionScope.khachhang != null }">
								<li><a href="LichSuMuaHangController">History</a></li>
							</c:if>

						</ul>
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
	</header>
	<!-- Slider -->
	<section class="section-slide">
		<div class="wrap-slick1">
			<div class="slick1">
				<div class="item-slick1"
					style="background-image: url(KhachHang/images/slide-01.jpg);">
					<div class="container h-full">
						<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
							<div class="layer-slick1 animated visible-false"
								data-appear="fadeInDown" data-delay="0">
								<span class="ltext-101 cl2 respon2"> Women Collection
									2022 </span>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="fadeInUp" data-delay="800">
								<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">NEW SEASON
								</h2>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="zoomIn" data-delay="1600">
								<a href="SanPhamController"
									class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
									Shop Now </a>
							</div>
						</div>
					</div>
				</div>

				<div class="item-slick1"
					style="background-image: url(KhachHang/images/slide-02.jpg);">
					<div class="container h-full">
						<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
							<div class="layer-slick1 animated visible-false"
								data-appear="rollIn" data-delay="0">
								<span class="ltext-101 cl2 respon2"> Men New-Season </span>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="lightSpeedIn" data-delay="800">
								<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">Jackets &
									Coats</h2>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="slideInUp" data-delay="1600">
								<a href="SanPhamController"
									class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
									Shop Now </a>
							</div>
						</div>
					</div>
				</div>

				<div class="item-slick1"
					style="background-image: url(KhachHang/images/slide-03.jpg);">
					<div class="container h-full">
						<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
							<div class="layer-slick1 animated visible-false"
								data-appear="rotateInDownLeft" data-delay="0">
								<span class="ltext-101 cl2 respon2"> Men Collection 2022
								</span>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="rotateInUpRight" data-delay="800">
								<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">New
									arrivals</h2>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="rotateIn" data-delay="1600">
								<a href="SanPhamController"
									class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
									Shop Now </a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

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
					All rights reserved | Made with <i class="fa fa-heart-o"
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