<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="/public/share/assets/plugins/sweet-alert/sweetalert.min.js"></script>
<script src="/public/share/assets/js/pages/sweet-alert/sweet-alert-data.js"></script>
<base href="/KukKuStore/">
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="images/img-01.png" alt="IMG">
				</div>

				<form action="CustomerLoginController/login" method="post"
					class="login100-form validate-form">
					<span class="login100-form-title"> Customer Login </span>
					<fmt:parseNumber var="countLogin"
						value="${sessionScope.countLogin }" />
					<c:if test="${countLogin < 3}">
						<div class="wrap-input100 validate-input"
							data-validate="Valid user is required: ex@abc.xyz">
							<input class="input100" type="text" name="un" placeholder="User">
							<span class="focus-input100"></span> <span
								class="symbol-input100"> <i class="fa fa-user"
								aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validate-input"
							data-validate="Password is required">
							<input class="input100" type="password" name="pass"
								placeholder="Password"> <span class="focus-input100"></span>
							<span class="symbol-input100"> <i class="fa fa-lock"
								aria-hidden="true"></i>
							</span>
						</div>
						<%-- <c:if test="${countLogin != 0 }">
							<p>Đăng Nhập Sai</p>
						</c:if> --%>
						<c:if test="${sessionScope['countLogin'] != 0 }">
						<script type="text/javascript">
							Swal
									.fire({
										position : 'center',
										icon : 'error',
										title : 'Đăng Nhập Sai!!!',
										showConfirmButton : false,
										timer : 4000
									})
						</script>
						<%
						session.removeAttribute("error");
						%>
					</c:if>
					</c:if>
					<c:if test="${countLogin >= 3}">
						<div
							class="d-flex form-group justify-content-between align-items-center">
							<img id="captcha" src="<c:url value="simpleCaptcha.jpg"  />"
								height="38px" width="120px" border="radius"> <input
								class="input100 " type="text" name="answer" placeholder=""
								style="width: 150px">
						</div>
					</c:if>
					<div class="container-login100-form-btn">
						<button type="submit" class="login100-form-btn">Login</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1"> Forgot </span> <a class="txt2" href="#">
							Username / Password? </a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="CustomerRegisterController"> Create your Account <i
							class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>




	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>