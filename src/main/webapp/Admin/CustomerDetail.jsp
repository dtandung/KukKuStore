<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx" class="js">

<head>
    <meta charset="utf-8">
    <meta name="author" content="Softnio">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers.">
    <!-- Fav Icon  -->
    <link rel="shortcut icon" href="Admin/images/Kukku-Icon.png">
    <!-- Page Title  -->
    <title>Customer Details | DashLite Admin Template</title>
    <!-- StyleSheets  -->
    <link rel="stylesheet" href="Admin/assets/css/dashlite.css?ver=2.2.0">
    <link id="skin-default" rel="stylesheet" href="Admin/assets/css/theme.css?ver=2.2.0">
</head>

<body class="nk-body bg-lighter npc-general has-sidebar ">
    <div class="nk-app-root">
        <!-- main @s -->
        <div class="nk-main ">
            <!-- sidebar @s -->
            <div class="nk-sidebar nk-sidebar-fixed is-light " data-content="sidebarMenu">
                <div class="nk-sidebar-element nk-sidebar-head">
                    <div class="nk-sidebar-brand">
                        <a href="html/index.html" class="logo-link nk-sidebar-logo">
                            <img class="logo-light logo-img" src="Admin/images/Kukkulight.png" srcset="Admin/images/logo2x.png 2x" alt="logo">
                            <img class="logo-dark logo-img" src="Admin/images/Kukku.png" srcset="Admin/images/logo-dark2x.png 2x" alt="logo-dark">
                            <!-- <img class="logo-small logo-img logo-img-small" src="Admin/images/Kukku.png" srcset="Admin/images/logo-small2x.png 2x" alt="logo-small"> -->
                        </a>
                    </div>
                    <div class="nk-menu-trigger mr-n2">
                        <a href="#" class="nk-nav-toggle nk-quick-nav-icon d-xl-none" data-target="sidebarMenu"><em class="icon ni ni-arrow-left"></em></a>
                        <a href="#" class="nk-nav-compact nk-quick-nav-icon d-none d-xl-inline-flex" data-target="sidebarMenu"><em class="icon ni ni-menu"></em></a>
                    </div>
                </div><!-- .nk-sidebar-element -->
                <div class="nk-sidebar-element">
                    <div class="nk-sidebar-content">
                        <div class="nk-sidebar-menu" data-simplebar>
                            <ul class="nk-menu">
                                <li class="nk-menu-item">
                                    <a href="TrangChuAdminController" class="nk-menu-link">
                                        <span class="nk-menu-icon"><em class="icon ni ni-dashboard-fill"></em></span>
                                        <span class="nk-menu-text">Dashboard</span>
                                    </a>
                                </li><!-- .nk-menu-item -->
                                <li class="nk-menu-item">
                                    <a href="AdminOrderController" class="nk-menu-link">
                                        <span class="nk-menu-icon"><em class="icon ni ni-bag-fill"></em></span>
                                        <span class="nk-menu-text">Orders</span>
                                    </a>
                                </li><!-- .nk-menu-item -->
                                <li class="nk-menu-item">
                                    <a href="AdminProductController" class="nk-menu-link">
                                        <span class="nk-menu-icon"><em class="icon ni ni-package-fill"></em></span>
                                        <span class="nk-menu-text">Products</span>
                                    </a>
                                </li><!-- .nk-menu-item -->
                                <li class="nk-menu-item">
                                    <a href="AdminCustomerController" class="nk-menu-link">
                                        <span class="nk-menu-icon"><em class="icon ni ni-users-fill"></em></span>
                                        <span class="nk-menu-text">Customers</span>
                                    </a>
                                </li><!-- .nk-menu-item -->
                             
                                <li class="nk-menu-item">
                                    <a href="AdminCategoryController" class="nk-menu-link">
                                        <span class="nk-menu-icon"><em class="icon ni ni-grid-sq"></em></span>
                                        <span class="nk-menu-text">Category</span>
                                    </a>
                                </li><!-- .nk-menu-item -->
                                <li class="nk-menu-item"><a href="AdminRemittanceListController"
									class="nk-menu-link"> <span class="nk-menu-icon"><em class="icon ni ni-list-index-fill"></em></span> <span class="nk-menu-text">Remittance List</span>
								</a></li>
								<!-- .nk-menu-item -->
                            </ul><!-- .nk-menu -->
                        </div><!-- .nk-sidebar-menu -->
                    </div><!-- .nk-sidebar-content -->
                </div><!-- .nk-sidebar-element -->
            </div>
            <!-- sidebar @e -->
            <!-- wrap @s -->
            <div class="nk-wrap "> main header @s --> <div class="nk-header nk-header-fixed is-light">
                    <div class="container-fluid">
                        <div class="nk-header-wrap">
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
                        </div><!-- .nk-header-wrap -->
                    </div><!-- .container-fliud -->
                </div>
                <!-- main header @e
    
    
    <!-- content @s -->
                <div class="nk-content ">
                    <div class="container-fluid">
                        <div class="nk-content-inner">
                            <div class="nk-content-body">
                                <div class="nk-block-head nk-block-head-sm">
                                    <div class="nk-block-between g-3">
                                        <div class="nk-block-head-content">
                                            <h3 class="nk-block-title page-title">Customer / <strong class="text-primary small">Abu Bin Ishtiyak</strong></h3>
                                        </div>
                                        <div class="nk-block-head-content">
                                            <a href="AdminCustomerController" class="btn btn-outline-light bg-white d-none d-sm-inline-flex"><em class="icon ni ni-arrow-left"></em><span>Back</span></a>
                                            <a href="AdminCustomerController" class="btn btn-icon btn-outline-light bg-white d-inline-flex d-sm-none"><em class="icon ni ni-arrow-left"></em></a>
                                        </div>
                                    </div>
                                </div><!-- .nk-block-head -->
                                <div class="nk-block">
                                    <div class="card">
                                        <div class="card-aside-wrap">
                                            <div class="card-content">
                                                <ul class="nav nav-tabs nav-tabs-mb-icon nav-tabs-card">
                                                    <li class="nav-item">
                                                        <a class="nav-link active" href="#"><em class="icon ni ni-user-circle"></em><span>Personal</span></a>
                                                    </li>
                                                </ul><!-- .nav-tabs -->
                                                <div class="card-inner">
                                                    <div class="nk-block">
                                                        <div class="nk-block-head">
                                                            <h5 class="title">Personal Information</h5>
                                                            <p>Basic info, like your name and address, that you use on Nio Platform.</p>
                                                        </div><!-- .nk-block-head -->
                                                        <div class="profile-ud-list">
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Title</span>
                                                                    <span class="profile-ud-value">Mr.</span>
                                                                </div>
                                                            </div>
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Full Name</span>
                                                                    <span class="profile-ud-value">Abu Bin Ishtiyak</span>
                                                                </div>
                                                            </div>
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Date of Birth</span>
                                                                    <span class="profile-ud-value">10 Aug, 1980</span>
                                                                </div>
                                                            </div>
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Surname</span>
                                                                    <span class="profile-ud-value">IO</span>
                                                                </div>
                                                            </div>
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Mobile Number</span>
                                                                    <span class="profile-ud-value">01713040400</span>
                                                                </div>
                                                            </div>
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Email Address</span>
                                                                    <span class="profile-ud-value">info@softnio.com</span>
                                                                </div>
                                                            </div>
                                                        </div><!-- .profile-ud-list -->
                                                    </div><!-- .nk-block -->
                                                    <div class="nk-block">
                                                        <div class="nk-block-head nk-block-head-line">
                                                            <h6 class="title overline-title text-base">Additional Information</h6>
                                                        </div><!-- .nk-block-head -->
                                                        <div class="profile-ud-list">
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Joining Date</span>
                                                                    <span class="profile-ud-value">08-16-2018 09:04PM</span>
                                                                </div>
                                                            </div>
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Reg Method</span>
                                                                    <span class="profile-ud-value">Email</span>
                                                                </div>
                                                            </div>
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Country</span>
                                                                    <span class="profile-ud-value">United State</span>
                                                                </div>
                                                            </div>
                                                            <div class="profile-ud-item">
                                                                <div class="profile-ud wider">
                                                                    <span class="profile-ud-label">Nationality</span>
                                                                    <span class="profile-ud-value">United State</span>
                                                                </div>
                                                            </div>
                                                        </div><!-- .profile-ud-list -->
                                                    </div><!-- .nk-block -->
                                                    <div class="nk-divider divider md"></div>
                                                </div><!-- .card-inner -->
                                            </div><!-- .card-content -->
                                        </div><!-- .card-aside-wrap -->
                                    </div><!-- .card -->
                                </div><!-- .nk-block -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- content @e -->
                <!-- footer @s -->
                <div class="nk-footer">
                    <div class="container-fluid">
                        <div class="nk-footer-wrap">
                            <div class="nk-footer-copyright"> &copy; 2020 DashLite. Template by <a href="https://softnio.com" target="_blank">Softnio</a>
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