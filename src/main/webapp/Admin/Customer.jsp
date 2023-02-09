<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <title>Customers | DashLite Admin Template</title>
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
            <div class="nk-wrap "> main header @s --> 
                <div class="nk-header nk-header-fixed is-light">
                    <div class="container-fluid">
                        <div class="nk-header-wrap">
                            <div class="nk-menu-trigger d-xl-none ml-n1">
                                <a href="#" class="nk-nav-toggle nk-quick-nav-icon" data-target="sidebarMenu"><em class="icon ni ni-menu"></em></a>
                            </div>
                            <div class="nk-header-brand d-xl-none">
                                <a href="html/index.html" class="logo-link">
                                    <img class="logo-light logo-img" src="Admin/images/Kukkulight.png" srcset="Admin/images/logo2x.png 2x" alt="logo">
                                    <img class="logo-dark logo-img" src="Admin/images/Kukku.png" srcset="Admin/images/logo-dark2x.png 2x" alt="logo-dark">
                                </a>
                            </div><!-- .nk-header-brand -->
                            <div class="nk-header-search ml-3 ml-xl-0">
                                <em class="icon ni ni-search"></em>
                                <input type="text" class="form-control border-transparent form-focus-none" placeholder="Search anything">
                            </div><!-- .nk-header-news -->
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
                                    <div class="nk-block-between">
                                        <div class="nk-block-head-content">
                                            <h3 class="nk-block-title page-title">Customers</h3>
                                        </div><!-- .nk-block-head-content -->
                                        <div class="nk-block-head-content">
                                            <div class="toggle-wrap nk-block-tools-toggle">
                                                <a href="#" class="btn btn-icon btn-trigger toggle-expand mr-n1" data-target="more-options"><em class="icon ni ni-more-v"></em></a>
                                                <div class="toggle-expand-content" data-content="more-options">
                                                    <ul class="nk-block-tools g-3">
                                                        <li>
                                                            <div class="form-control-wrap">
                                                                <div class="form-icon form-icon-right">
                                                                    <em class="icon ni ni-search"></em>
                                                                </div>
                                                                <input type="text" class="form-control" id="default-04" placeholder="Search by name">
                                                            </div>
                                                        </li>
                                                       
                                                    </ul>
                                                </div>
                                            </div>
                                        </div><!-- .nk-block-head-content -->
                                    </div><!-- .nk-block-between -->
                                </div><!-- .nk-block-head -->
                                <div class="nk-block">
                                    <div class="nk-tb-list is-separate mb-3">
                                        <div class="nk-tb-item nk-tb-head">
                                        
                                            <div class="nk-tb-col"><span class="sub-text">Mã Khách Hàng</span></div>
                                            <div class="nk-tb-col tb-col-mb"><span class="sub-text">Tên Khách Hàng</span></div>
                                            <div class="nk-tb-col tb-col-md"><span class="sub-text">Địa Chỉ</span></div>
                                            <div class="nk-tb-col tb-col-lg"><span class="sub-text">Số Điện Thoại</span></div>
                                            <div class="nk-tb-col tb-col-lg"><span class="sub-text">Email</span></div>
                                            <div class="nk-tb-col tb-col-md"><span class="sub-text"></span></div>
                                            <div class="nk-tb-col nk-tb-col-tools">
                                                <ul class="nk-tb-actions gx-1 my-n1">
                                
                                                </ul>
                                            </div>
                                        </div><!-- .nk-tb-item -->
                                        <c:forEach items="${dskh }" var="item">
                                        <div class="nk-tb-item">
                                        
                                            <div class="nk-tb-col">
                                             <span class="tb-amount">${item.maKh }</span>
                                            </div>
                                            <div class="nk-tb-col tb-col-mb">
                                               <span class="tb-amount">${item.hoTen }</span>
                                            </div>
                                            <div class="nk-tb-col tb-col-md">
                                                <span class="tb-amount">${item.diaChi }</span>
                                            </div>
                                            <div class="nk-tb-col tb-col-lg">
                                                <span class="tb-amount">${item.soDienThoai }</span>
                                            </div>
                                            <div class="nk-tb-col tb-col-lg">
                                                <span class="tb-amount">${item.email }</span>
                                            </div>
                                            <div class="nk-tb-col tb-col-md">
                                                <span class="tb-status text-success">Active</span>
                                            </div>
                                            <div class="nk-tb-col nk-tb-col-tools">
                                                
                                            </div>
                                        </div><!-- .nk-tb-item -->
                                       </c:forEach>
                                    </div><!-- .nk-tb-list -->
                                    <div class="card">
                                        <div class="card-inner">
                                            <div class="nk-block-between-md g-3">
                                                <div class="g">
                                                    <ul class="pagination justify-content-center justify-content-md-start">
                                                        <li class="page-item"><a class="page-link" href="#"><em class="icon ni ni-chevrons-left"></em></a></li>
                                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                        <li class="page-item"><span class="page-link"><em class="icon ni ni-more-h"></em></span></li>
                                                        <li class="page-item"><a class="page-link" href="#">6</a></li>
                                                        <li class="page-item"><a class="page-link" href="#">7</a></li>
                                                        <li class="page-item"><a class="page-link" href="#"><em class="icon ni ni-chevrons-right"></em></a></li>
                                                    </ul><!-- .pagination -->
                                                </div>
                                                <div class="g">
                                                    <div class="pagination-goto d-flex justify-content-center justify-content-md-start gx-3">
                                                        <div>Page</div>
                                                        <div>
                                                            <select class="form-select form-select-sm" data-search="on" data-dropdown="xs center">
                                                                <option value="page-1">1</option>
                                                                <option value="page-2">2</option>
                                                                <option value="page-4">4</option>
                                                                <option value="page-5">5</option>
                                                                <option value="page-6">6</option>
                                                                <option value="page-7">7</option>
                                                                <option value="page-8">8</option>
                                                                <option value="page-9">9</option>
                                                                <option value="page-10">10</option>
                                                                <option value="page-11">11</option>
                                                                <option value="page-12">12</option>
                                                                <option value="page-13">13</option>
                                                                <option value="page-14">14</option>
                                                                <option value="page-15">15</option>
                                                                <option value="page-16">16</option>
                                                                <option value="page-17">17</option>
                                                                <option value="page-18">18</option>
                                                                <option value="page-19">19</option>
                                                                <option value="page-20">20</option>
                                                            </select>
                                                        </div>
                                                        <div>OF 102</div>
                                                    </div>
                                                </div><!-- .pagination-goto -->
                                            </div><!-- .nk-block-between -->
                                        </div>
                                    </div>
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
</body>

</html>