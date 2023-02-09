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
<title>KukKu Admin | DashLite Admin Template</title>
<!-- StyleSheets  -->
<link rel="stylesheet" href="Admin/assets/css/dashlite.css?ver=2.2.0">
<link id="skin-default" rel="stylesheet"
	href="Admin/assets/css/theme.css?ver=2.2.0">
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
						<a href="TrangChuAdminController"
							class="logo-link nk-sidebar-logo">
							<img class="logo-light logo-img" src="Admin/images/Kukkulight.png"
							srcset="Admin/images/logo2x.png 2x" alt="logo"> 
							<img class="logo-dark logo-img" src="Admin/images/Kukku.png"
							srcset="Admin/images/logo-dark2x.png 2x" alt="logo-dark"> 
							
						<!-- 	<img class="logo-small logo-img logo-img-small"
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
								<li class="nk-menu-item"><a href="AdminCategoryController"
									class="nk-menu-link"> <span class="nk-menu-icon"><em
											class="icon ni ni-grid-sq"></em></span> <span class="nk-menu-text">Category</span>
								</a></li>
								<!-- .nk-menu-item -->
								<li class="nk-menu-item"><a href="AdminRemittanceListController"
									class="nk-menu-link"> <span class="nk-menu-icon"><em class="icon ni ni-list-index-fill"></em></span> <span class="nk-menu-text">Remittance List</span>
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
								<a href="TrangChuAdminController" class="logo-link"> <img
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
																class="icon ni ni-activity-alt"></em><span>Login Customer</span></a></li>
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
								<div class="nk-block-head nk-block-head-sm">
									<div class="nk-block-between">
										<div class="nk-block-head-content">
											<h4 class="nk-block-title page-title">Dashboard</h4>
										</div>
										<!-- .nk-block-head-content -->
									</div>
									<!-- .nk-block-between -->
								</div>
								<!-- .nk-block-head -->
								<div class="nk-block">
									<div class="row g-gs">
										<%-- <div class="col-xxl-4 col-md-6">
											<div class="card is-dark h-100">
												<div class="nk-ecwg nk-ecwg1">
													<div class="card-inner">
														<div class="card-title-group">
															<div class="card-title">
																<h6 class="title">Total Sales</h6>
															</div>
															<div class="card-tools">
																<a href="#" class="link">View Report</a>
															</div>
														</div>
														<div class="data">
															<div class="amount">$74,958.49</div>
															<div class="info">
																<strong>$7,395.37</strong> in last month
															</div>
														</div>
														<div class="data">
															<h6 class="sub-title">This week so far</h6>
															<div class="data-group">
																<div class="amount">$1,338.72</div>
																<div class="info text-right">
																	<span class="change up text-danger"><em
																		class="icon ni ni-arrow-long-up"></em>4.63%</span><br> <span>vs.
																		last week</span>
																</div>
															</div>
														</div>
													</div>
													<!-- .card-inner -->
													<div class="nk-ecwg1-ck">
														<canvas class="ecommerce-line-chart-s1" id="totalSales"></canvas>
													</div>
												</div>
												<!-- .nk-ecwg -->
											</div>
											<!-- .card -->
										</div> --%>
										<!-- .col -->
										<%-- <div class="col-xxl-4 col-md-6">
											<div class="card h-100">
												<div class="nk-ecwg nk-ecwg2">
													<div class="card-inner">
														<div class="card-title-group mt-n1">
															<div class="card-title">
																<h6 class="title">Averarge order</h6>
															</div>
															<div class="card-tools mr-n1">
																<div class="dropdown">
																	<a href="#"
																		class="dropdown-toggle btn btn-icon btn-trigger"
																		data-toggle="dropdown"><em
																		class="icon ni ni-more-h"></em></a>
																	<div
																		class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
																		<ul class="link-list-opt no-bdr">
																			<li><a href="#" class="active"><span>15
																						Days</span></a></li>
																			<li><a href="#"><span>30 Days</span></a></li>
																			<li><a href="#"><span>3 Months</span></a></li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
														<div class="data">
															<div class="data-group">
																<div class="amount">$463.35</div>
																<div class="info text-right">
																	<span class="change up text-danger"><em
																		class="icon ni ni-arrow-long-up"></em>4.63%</span><br> <span>vs.
																		last week</span>
																</div>
															</div>
														</div>
														<h6 class="sub-title">Orders over time</h6>
													</div>
													<!-- .card-inner -->
													<div class="nk-ecwg2-ck">
														<canvas class="ecommerce-bar-chart-s1" id="averargeOrder"></canvas>
													</div>
												</div>
												<!-- .nk-ecwg -->
											</div>
											<!-- .card -->
										</div> --%>
										<!-- .col -->
										<div class="col-xxl-4">
											<div class="row g-gs">
												<div class="col-xxl-12 col-md-6">
													<div class="card">
														<div class="nk-ecwg nk-ecwg3">
															<div class="card-inner pb-0">
																<div class="card-title-group">
																	<div class="card-title">
																		<h6 class="title">Orders</h6>
																	</div>
																</div>
																<div class="data">
																	<div class="data-group">
																		<div class="amount"> <c:out value="${order.size()}"/> </div>
																		<div class="info text-right">
																			<span class="change up text-danger"><em
																				class="icon ni ni-arrow-long-up"></em>4.63%</span><br>
																			<span>vs. last week</span>
																		</div>
																	</div>
																</div>
															</div>
															<!-- .card-inner -->
															<div class="nk-ecwg3-ck">
																<canvas class="ecommerce-line-chart-s1" id="totalOrders"></canvas>
															</div>
														</div>
														<!-- .nk-ecwg -->
													</div>
													<!-- .card -->
												</div>
												<!-- .col -->
												<div class="col-xxl-12 col-md-6">
													<div class="card">
														<div class="nk-ecwg nk-ecwg3">
															<div class="card-inner pb-0">
																<div class="card-title-group">
																	<div class="card-title">
																		<h6 class="title">Customers</h6>
																	</div>
																</div>
																<div class="data">
																	<div class="data-group">
																		<div class="amount"> <c:out value="${slkh}"/> </div>
																		<div class="info text-right">
																			<span class="change up text-danger"><em
																				class="icon ni ni-arrow-long-up"></em>4.63%</span><br>
																			<span>vs. last week</span>
																		</div>
																	</div>
																</div>
															</div>
															<!-- .card-inner -->
															<div class="nk-ecwg3-ck">
																<canvas class="ecommerce-line-chart-s1"
																	id="totalCustomers"></canvas>
															</div>
														</div>
														<!-- .nk-ecwg -->
													</div>
													<!-- .card -->
												</div>
												<!-- .col -->
											</div>
											<!-- .row -->
										</div>
										<!-- .col -->
										<div class="col-xxl-8">
											<div class="card card-full">
												<div class="card-inner">
													<div class="card-title-group">
														<div class="card-title">
															<h6 class="title">Pendding Order</h6>
														</div>
													</div>
												</div>
												<div class="nk-tb-list mt-n2">
													<div class="nk-tb-item nk-tb-head">
														<div class="nk-tb-col">
															<span>Order No.</span>
														</div>
														<div class="nk-tb-col tb-col-sm">
															<span>Customer</span>
														</div>
														<div class="nk-tb-col tb-col-md">
															<span>Date</span>
														</div>
														<div class="nk-tb-col">
															<span>Amount</span>
														</div>
														<div class="nk-tb-col">
															<span class="d-none d-sm-inline">Status</span>
														</div>
													</div>
													<c:forEach items="${order}" var="item">
													<div class="nk-tb-item">
														<div class="nk-tb-col">
															<span class="tb-lead"><a href="#">#${item.maHoaDon }</a></span>
														</div>
														<div class="nk-tb-col tb-col-sm">
															<div class="user-card">
											
																<div class="user-name">
																	<span class="tb-lead">${item.hoTen }</span>
																</div>
															</div>
														</div>
														<div class="nk-tb-col tb-col-md">
															<span class="tb-sub">${item.ngayMua }</span>
														</div>
														<div class="nk-tb-col">
															<span class="tb-sub tb-amount">${item.thanhTien }<span>VNĐ</span></span>
														</div>
														<c:if test="${item.daMua == false }">
														<div class="nk-tb-col">
															<span class="badge badge-dot badge-dot-xs badge-warning">Chưa Xác Nhận</span>
														</div>
														</c:if>
													</div>
													</c:forEach>
												</div>
											</div>
											<!-- .card -->
										</div>
										<div class="col-xxl-4 col-md-6">
											<div class="card h-100">
												<div class="card-inner">
													<div class="card-title-group mb-2">
														<div class="card-title">
															<h6 class="title">Top products</h6>
														</div>
														<div class="card-tools">
															<div class="dropdown">
																<a href="#"
																	class="dropdown-toggle link link-light link-sm dropdown-indicator"
																	data-toggle="dropdown">Weekly</a>
																<div
																	class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
																	<ul class="link-list-opt no-bdr">
																		<li><a href="#"><span>Daily</span></a></li>
																		<li><a href="#" class="active"><span>Weekly</span></a></li>
																		<li><a href="#"><span>Monthly</span></a></li>
																	</ul>
																</div>
															</div>
														</div>
													</div>
													<ul class="nk-top-products">
													<c:forEach items="${thongke }" var="item">
														<li class="item">
															<div class="thumb">
																<img src="${item.anh }" alt="">
															</div>
															<div class="info">
																<div class="title">${item.tenSanPham }</div>
																<div class="price">${item.gia } vnđ</div>
															</div>
															<div class="total">
																<div class="amount">${item.thanhTien } vnđ</div>
																
																<div class="count">${item.daBan } Đã Bán</div>
																
															</div>
														</li>
													</c:forEach>	
													</ul>
												</div>
												<!-- .card-inner -->
											</div>
											<!-- .card -->
										</div>
										<!-- .col -->
										<div class="col-xxl-3 col-md-6">
											<div class="card h-100">
												<div class="card-inner">
													<div class="card-title-group mb-2">
														<div class="card-title">
															<h6 class="title">Store Statistics</h6>
														</div>
													</div>
													<ul class="nk-store-statistics">
														<li class="item">
															<div class="info">
																<div class="title">Orders</div>
																<div class="count"> <c:out value="${order2.size() }"/> </div>
															</div> <em class="icon bg-primary-dim ni ni-bag"></em>
														</li>
														<li class="item">
															<div class="info">
																<div class="title">Customers</div>
																<div class="count"><c:out value="${slkh}"/></div>
															</div> <em class="icon bg-info-dim ni ni-users"></em>
														</li>
														<li class="item">
															<div class="info">
																<div class="title">Products</div>
																<div class="count"><c:out value="${sanpham.size() }"/></div>
															</div> <em class="icon bg-pink-dim ni ni-box"></em>
														</li>
														<li class="item">
															<div class="info">
																<div class="title">Categories</div>
																<div class="count"><c:out value="${loai.size() }"/></div>
															</div> <em class="icon bg-purple-dim ni ni-server"></em>
														</li>
													</ul>
												</div>
												<!-- .card-inner -->
											</div>
											<!-- .card -->
										</div>
										<!-- .col -->
									</div>
									<!-- .row -->
								</div>
								<!-- .nk-block -->
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
	<script src="Admin/assets/js/charts/chart-ecommerce.js?ver=2.2.0"></script>
</body>

</html>