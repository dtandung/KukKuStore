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
<title>New Product</title>
<!-- StyleSheets  -->
<link rel="stylesheet" href="Admin/assets/css/dashlite.css?ver=2.2.0">
<link rel="stylesheet" href="Admin/assets/css/dropimage.css">
<!-- <link id="skin-default" rel="stylesheet" href="Admin/assets/css/theme.css?ver=2.2.0"> -->
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
							srcset="Admin/images/logo-dark2x.png 2x" alt="logo-dark"> <!-- <img class="logo-small logo-img logo-img-small" src="Admin/images/Kukku.png" srcset="Admin/images/logo-small2x.png 2x" alt="logo-small"> -->
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
										<h5 class="nk-block-title">Edit Product</h5>
										<div class="nk-block-des">
											<p>Edit information product.</p>
										</div>
									</div>
								</div>
								<!-- .nk-block-head -->
								<form action="AdminEditProductController"
									enctype="multipart/form-data" method="post">
									<div class="nk-block">
										<div class="row g-3">
											<div class="col-12">
												<div class="form-group">
													<label class="form-label" for="product-title">Tên
														Sản Phẩm</label>
													<div class="form-control-wrap">
														<input type="text" class="form-control" name="tensanpham"
															value="${spbean.tenSanPham }" required>
													</div>
												</div>
											</div>
											<div class="col-mb-6">
												<div class="form-group">
													<label class="form-label" for="regular-price">Giá</label>
													<div class="form-control-wrap">
														<input type="text" class="form-control" name="gia"
															value="${spbean.gia }" required>
													</div>
												</div>
											</div>
											<div class="col-mb-6">
												<div class="form-group">
													<label class="form-label" for="sale-price">Ngày
														Nhập</label>
													<div class="form-control-wrap">
														<input type="text" class="form-control" name="ngaynhap"
															value="${spbean.ngayNhap }" required>
													</div>
												</div>
											</div>
											<div class="col-mb-6">
												<div class="form-group">
													<label class="form-label" for="stock">Số Lượng</label>
													<div class="form-control-wrap">
														<input type="text" class="form-control" name="soluong"
															value="${spbean.soLuong}" required>
													</div>
												</div>
											</div>
											<div class="col-mb-6">
												<div class="form-group">
													<label class="form-label" for="SKU">Mã Sản Phẩm</label>
													<div class="form-control-wrap">
														<input type="text" class="form-control" name="masanpham"
															value="${spbean.maSanPham }" required>
													</div>
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label class="form-label" for="category">Mã Loại</label>
													<div class="form-group">
														<div class="form-control-wrap">
															<select class="form-select form-control form-control-lg"
																data-search="on" name="maloai" required>
																<c:forEach items="${dsloai }" var="item">
																	<c:if test="${spbean.maLoai eq item.maLoai }">
																		<option value="${spbean.maLoai }" selected="selected">${item.tenLoai }</option>
																	</c:if>
																</c:forEach>

																<c:forEach items="${dsloai }" var="item">
																	<c:choose>
																		<c:when test="${spbean.maLoai eq item.maLoai }">
																			<option value="${spbean.maLoai }" selected="selected">${item.tenLoai }</option>
																		</c:when>
																		<c:otherwise>
																			<option value="${item.maLoai }">${item.tenLoai }</option>
																		</c:otherwise>
																	</c:choose>
																</c:forEach>

															</select>
														</div>
													</div>
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label class="form-label" for="tags">Mô Tả</label>
													<div class="form-control-wrap">
														<input type="text" class="form-control" name="mota"
															value="${spbean.moTa }" required>
													</div>
												</div>
											</div>
											<div class="col-12">
												<div class="file-upload">
													<div class="image-upload-wrap">
														<input class="file-upload-input" type='file'
															onchange="readURL(this);" accept="image/*" name="anh" required/>
														<div class="drag-text">
															<p>Kéo và thả ảnh hoặc chọn thêm ảnh</p>
														</div>
													</div>
													<div class="file-upload-content">
														<img class="file-upload-image" src="#" alt="your image" />
														<div class="image-title-wrap">
															<button type="button" onclick="removeUpload()"
																class="remove-image">
																Remove <span class="image-title">Uploaded Image</span>
															</button>
														</div>
													</div>
												</div>
											</div>
											<div class="col-12">
												<button name="btnEdit" class="btn btn-primary">
													<em class="icon ni ni-plus"></em><span>Update</span>
												</button>
											</div>
											<div class="col-12 pt-3">
												<button formaction="AdminProductController"
													formmethod="post" class="btn btn-primary">
													<em class="icon ni ni-chevron-left"></em><span>Quay
														Lại</span>
												</button>
											</div>
										</div>
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
	<script src="Admin/assets/js/dropimage.js"></script>
	<script src="Admin/assets/js/bundle.js?ver=2.2.0"></script>
	<script src="Admin/assets/js/scripts.js?ver=2.2.0"></script>
	<script class="jsbin"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
</body>

</html>