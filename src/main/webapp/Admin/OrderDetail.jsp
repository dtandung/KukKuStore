<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx" class="js">

<head>

<meta charset="utf-8">
<meta name="author" content="Softnio">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers.">
<!-- Fav Icon  -->
<link rel="shortcut icon" href="Admin/images/Kukku-Icon.png">
<!-- Page Title  -->
<title>Order Detail</title>
<!-- StyleSheets  -->
<link rel="stylesheet" href="Admin/assets/css/dashlite.css?ver=2.2.0">
<link id="skin-default" rel="stylesheet"
	href="Admin/assets/css/theme.css?ver=2.2.0">
<!-- alert -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="/public/share/assets/plugins/sweet-alert/sweetalert.min.js"></script>
<script
	src="/public/share/assets/js/pages/sweet-alert/sweet-alert-data.js"></script>
<!-- alert -->
</head>

<body class="nk-body bg-lighter npc-general has-sidebar ">
	<div class="nk-app-root">
		<!-- main @s -->
		<div class="nk-main ">
			<!-- sidebar @s -->
			<div class="nk-sidebar nk-sidebar-fixed is-light "
				data-content="sidebarMenu">
				<div class="nk-sidebar-element nk-sidebar-head">
					<div class="nk-sidebar-brand">
						<a href="html/index.html" class="logo-link nk-sidebar-logo"> <img
							class="logo-light logo-img" src="Admin/images/Kukkulight.png"
							srcset="Admin/images/logo2x.png 2x" alt="logo"> <img
							class="logo-dark logo-img" src="Admin/images/Kukku.png"
							srcset="Admin/images/logo-dark2x.png 2x" alt="logo-dark"> <!-- <img
							class="logo-small logo-img logo-img-small"
							src="Admin/images/Kukku.png"
							srcset="Admin/images/logo-small2x.png 2x" alt="logo-small"> -->
						</a>
					</div>
					<div class="nk-menu-trigger mr-n2">
						<a href="#" class="nk-nav-toggle nk-quick-nav-icon d-xl-none"
							data-target="sidebarMenu"><em class="icon ni ni-arrow-left"></em></a>
						<a href="#"
							class="nk-nav-compact nk-quick-nav-icon d-none d-xl-inline-flex"
							data-target="sidebarMenu"><em class="icon ni ni-menu"></em></a>
					</div>
				</div>
				<!-- .nk-sidebar-element -->
				<div class="nk-sidebar-element">
					<div class="nk-sidebar-content">
						<div class="nk-sidebar-menu" data-simplebar>
							<ul class="nk-menu">
								<li class="nk-menu-item"><a href="TrangChuAdminController"
									class="nk-menu-link"> <span class="nk-menu-icon"><em
											class="icon ni ni-dashboard-fill"></em></span> <span
										class="nk-menu-text">Dashboard</span>
								</a></li>
								<!-- .nk-menu-item -->
								<li class="nk-menu-item"><a href="AdminOrderController"
									class="nk-menu-link"> <span class="nk-menu-icon"><em
											class="icon ni ni-bag-fill"></em></span> <span class="nk-menu-text">Orders</span>
								</a></li>
								<!-- .nk-menu-item -->
								<li class="nk-menu-item"><a href="AdminProductController"
									class="nk-menu-link"> <span class="nk-menu-icon"><em
											class="icon ni ni-package-fill"></em></span> <span
										class="nk-menu-text">Products</span>
								</a></li>
								<!-- .nk-menu-item -->
								<li class="nk-menu-item"><a href="AdminCustomerController"
									class="nk-menu-link"> <span class="nk-menu-icon"><em
											class="icon ni ni-users-fill"></em></span> <span
										class="nk-menu-text">Customers</span>
								</a></li>
								<!-- .nk-menu-item -->
								<!-- .nk-menu-item -->
								<li class="nk-menu-item"><a href="AdminCategoryController"
									class="nk-menu-link"> <span class="nk-menu-icon"><em
											class="icon ni ni-grid-sq"></em></span> <span class="nk-menu-text">Category</span>
								</a></li>
								<!-- .nk-menu-item -->
								<!-- .nk-menu-item -->
								<li class="nk-menu-item"><a
									href="AdminRemittanceListController" class="nk-menu-link">
										<span class="nk-menu-icon"><em
											class="icon ni ni-list-index-fill"></em></span> <span
										class="nk-menu-text">Remittance List</span>
								</a></li>
								<!-- .nk-menu-item -->
							</ul>
							<!-- .nk-menu -->
						</div>
						<!-- .nk-sidebar-menu -->
					</div>
					<!-- .nk-sidebar-content -->
				</div>
				<!-- .nk-sidebar-element -->
			</div>
			<!-- sidebar @e -->
			<!-- wrap @s -->
			<div class="nk-wrap ">
				main header @s -->
				<div class="nk-header nk-header-fixed is-light">
					<div class="container-fluid">
						<div class="nk-header-wrap">
							<div class="nk-menu-trigger d-xl-none ml-n1">
								<a href="#" class="nk-nav-toggle nk-quick-nav-icon"
									data-target="sidebarMenu"><em class="icon ni ni-menu"></em></a>
							</div>
							<div class="nk-header-brand d-xl-none">
								<a href="html/index.html" class="logo-link"> <img
									class="logo-light logo-img" src="Admin/images/Kukkulight.png"
									srcset="Admin/images/logo2x.png 2x" alt="logo"> <img
									class="logo-dark logo-img" src="Admin/images/Kukku.png"
									srcset="Admin/images/logo-dark2x.png 2x" alt="logo-dark">
								</a>
							</div>
							<!-- .nk-header-brand -->
							<div class="nk-header-search ml-3 ml-xl-0">
								<em class="icon ni ni-search"></em> <input type="text"
									class="form-control border-transparent form-focus-none"
									placeholder="Search anything">
							</div>
							<!-- .nk-header-news -->
							<div class="nk-header-tools">
								<ul class="nk-quick-nav">
									<c:if test="${sessionScope.admin == null}">
										<div>
											<a href="AdminLoginController"><em
												class="icon ni ni-signout"></em><span>Sign In</span></a>
										</div>
									</c:if>
									<c:if test="${sessionScope.admin != null}">
										<li class="dropdown user-dropdown"><a href="#"
											class="dropdown-toggle mr-n1" data-toggle="dropdown">
												<div class="user-toggle">
													<div class="user-avatar sm">
														<em class="icon ni ni-user-alt"></em>
													</div>
													<div class="user-info d-none d-xl-block">
														<div class="user-status user-status-active">Administator</div>
														<div class="user-name dropdown-indicator">${sessionScope.admin.tenDangNhap }</div>
													</div>
												</div>
										</a>
											<div
												class="dropdown-menu dropdown-menu-md dropdown-menu-right">
												<div
													class="dropdown-inner user-card-wrap bg-lighter d-none d-md-block">
													<div class="user-card">
														<div class="user-avatar">
															<span>AB</span>
														</div>
														<div class="user-info">
															<span class="lead-text">${sessionScope.admin.tenDangNhap }</span>
															<span class="sub-text">info@softnio.com</span>
														</div>
													</div>
												</div>
												<div class="dropdown-inner">
													<ul class="link-list">
														<li><a href="TrangChuController"><em
																class="icon ni ni-user-alt"></em><span>View
																	Profile</span></a></li>
														<li><a href="TrangChuController"><em
																class="icon ni ni-setting-alt"></em><span>Account
																	Setting</span></a></li>
														<li><a href="TrangChuController"><em
																class="icon ni ni-activity-alt"></em><span>Login
																	Customer</span></a></li>
														<li><a class="dark-switch" href="#"><em
																class="icon ni ni-moon"></em><span>Dark Mode</span></a></li>
													</ul>
												</div>
												<div class="dropdown-inner">
													<ul class="link-list">
														<li><a href="AdminLogoutController"><em
																class="icon ni ni-signout"></em><span>Sign out</span></a></li>
													</ul>
												</div>
											</div></li>
									</c:if>
								</ul>
							</div>
						</div>
						<!-- .nk-header-wrap -->
					</div>
					<!-- .container-fliud -->
				</div>
				<!-- main header @e
    
    <!-- content @s -->
				<div class="nk-content ">
					<div class="container-fluid">
						<div class="nk-content-inner">
							<div class="nk-content-body">
								<div class="nk-block-head">
									<div class="nk-block-head-content">
										<h4 class="nk-block-title">Thông tin sản phẩm đã order</h4>
										<p>
											Giúp Admin theo dõi <strong class="text-primary">sản
												phẩm, giá tiền, số lượng</strong> trong order của khách.
										</p>
									</div>
								</div>
								<div class="card card-bordered card-preview">
									<table class="table table-tranx">
										<thead>
											<tr class="tb-tnx-head">
												<th class="tb-tnx-id"><span class="">#</span></th>
												<th class="tb-tnx-id text-center"><span class="">Ảnh</span></th>
												<th class="tb-tnx-info"><span
													class="tb-tnx-desc d-none d-sm-inline-block"> <span>Tên
															Sản Phẩm</span>
												</span> <span class="tb-tnx-date d-md-inline-block d-none">
														Ngày Mua </span></th>
												<th class="tb-tnx-id text-center"><span class="">Số
														Lượng</span></th>
												<th class="tb-tnx-id"><span class="">Giá</span></th>
												<th class="tb-tnx-id text-center"><span class="">Mã
														Hoá Đơn</span></th>
												<th class="tb-tnx-amount"><span
													class="tb-tnx-total text-center">Thanh Tiền</span> <span
													class="tb-tnx-status d-none d-md-inline-block text-center">Trạng
														Thái</span></th>
												<th></th>
										</thead>
										<tbody>
											<c:forEach items="${dsctdh }" var="item">
												<tr class="tb-tnx-item">
													<td class="tb-tnx-id"><span>${item.maChiTietHD }</span>
													</td>
													<td class="tb-tnx-id text-center"><span><img
															alt="" src="${item.anh }" width="45px"> </span></td>
													<td class="tb-tnx-info">
														<div class="tb-tnx-desc">
															<span class="title">${item.tenSanPham }</span>
														</div>
														<div class="tb-tnx-date">
															<span class="date">${item.ngayMua }</span>

														</div>
													</td>
													<td class="tb-tnx-id text-center"><span>${item.soLuongMua }</span>
													</td>
													<td class="tb-tnx-id"><span>${item.gia }</span></td>
													<td class="tb-tnx-id text-center"><span>${item.maHoaDon }</span>
													</td>
													<td class="tb-tnx-amount">
														<div class="tb-tnx-total text-center">
															<span class="amount ">${item.thanhTien }</span>
														</div> <c:choose>
															<c:when test="${item.daMua == true }">
																<div class="tb-tnx-status text-center">
																	<span class="badge badge-dot badge-success">Đã
																		Thanh Toán</span>
																</div>
															</c:when>
															<c:otherwise>
																<div class="tb-tnx-status text-center">
																	<span class="badge badge-dot badge-warning">Chưa
																		Thanh Toán</span>
																</div>
															</c:otherwise>
														</c:choose>

													</td>
													<td class="text-center"><c:if
															test="${item.daMua == false }">
															<div>
																<a
																	href="AdminOrderDetailController?mct=${item.maChiTietHD }&mhd=${item.maHoaDon }&btndetail=${1}"
																	class="btn btn-icon btn-trigger btn-tooltip"
																	title="Confirm Order"><em
																	class="icon ni ni-check-circle-cut"></em></a>
															</div>
														</c:if></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<form action="AdminOrderController" method="post">
							<div class="col-12 pt-3">
								<button 
									class="btn btn-primary">
									<em class="icon ni ni-chevron-left"></em><span>Quay Lại</span>
								</button>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- content @e -->
			<!-- footer @s -->
			<div class="nk-footer">
				<div class="container-fluid">
					<div class="nk-footer-wrap">
						<div class="nk-footer-copyright">
							&copy; 2020 DashLite. Template by <a href="https://softnio.com"
								target="_blank">Softnio</a>
						</div>
						<div class="nk-footer-links">
							<ul class="nav nav-sm">
								<li class="nav-item"><a class="nav-link" href="#">Terms</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Privacy</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Help</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- footer @e -->
		</div>
		<!-- wrap @e -->
	</div>
	<!-- main @e -->
	</div>
	<!-- app-root @e -->
	<!-- JavaScript -->
	<script src="Admin/assets/js/bundle.js?ver=2.2.0"></script>
	<script src="Admin/assets/js/scripts.js?ver=2.2.0"></script>
	<c:if test="${sessionScope['success'] != null }">
		<script type="text/javascript">
			Swal.fire({
				position : 'center',
				icon : 'success',
				title : 'Xác Nhận Thành Công !!!',
				showConfirmButton : false,
				timer : 2500
			})
		</script>
		<%
		session.removeAttribute("success");
		%>
	</c:if>
</body>

</html>