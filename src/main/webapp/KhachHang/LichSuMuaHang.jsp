<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>History</title>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
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

							<li><a href="SanPhamController">Shop</a></li>

							<li><a href="HienThiGioController">Features</a></li>

							<c:if test="${sessionScope.khachhang != null }">
								<li><a class="active-menu" href="LichSuMuaHangController">History</a></li>
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
				<a href="TrangChuController"><img src="images/icons/Kukku.png"
					alt="IMG-LOGO"></a>
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
					<li><a class="active-menu" href="LichSuMuaHangController">History</a></li>
				</c:if>
			</ul>
		</div>

		<!-- Modal Search -->
		<div
			class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button
					class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search"
						placeholder="Search...">
				</form>
			</div>
		</div>
	</header>




	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="TrangChuController" class="stext-109 cl8 hov-cl1 trans-04">
				Home <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a> <span class="stext-109 cl4"> History </span>
		</div>
	</div>


	<!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart">
								<tr class="table_head">
									<th class="column-3 text-center">M?? Ho?? ????n</th>
									<th class="column-3 text-center">H??? T??n</th>
									<th class="column-4 text-center">Ng??y Mua</th>
									<th class="column-5 text-center" style="padding-right: 0px">Th??nh
										Ti???n</th>
									<th class="column-5 text-center" style="padding-right: 0px">Tr???ng
										Th??i</th>
									<th class="column-3 text-center">Chi Ti???t</th>
								</tr>
								<c:forEach var="item" items="${lsmh }">
									<tr class="table_row">
										<td class="column-1" style="padding-bottom: 20px">${item.maHoaDon}</td>

										<td class="column-3 text-center">${item.hoTen }</td>
										<td class="column-4 text-center">${item.ngayMua}</td>
										<td class="column-5 text-center" style="padding-right: 0px">${item.thanhTien }</td>
										<c:choose>
											<c:when test="${item.daMua == true }">
												<td class="text-center column-5 " style="padding-right: 0px">????
													Thanh To??n</td>
											</c:when>
											<c:otherwise>
												<td class="text-center column-5" style="padding-right: 0px">Ch??a
													Thanh To??n</td>
											</c:otherwise>
										</c:choose>
										<td class="column-5 text-center" style="padding-right: 0px">
											<button
												formaction="ChiTietLSMHController?mahd=${item.maHoaDon }"
												formmethod="post">
												<i class="fa-solid fa-ellipsis"></i>
											</button>
										</td>
									</tr>

								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>




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
	<script
		src="KhachHang/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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