<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Login</title>
<style>
h1 {
	max-width: 100%;
	text-align: center;
	margin-top: 55px;
}
</style>
<script type="text/javascript" src="./javascript/login.js"></script>

</head>
<body>
	<section class="form-container">
		<div class="container">
			<div class="mx-auto">
				<h1 style="color: rgb(80, 13, 13);">Hệ thống quản lí nhân sự
					tập đoàn Ado</h1>
			</div>

			<div class="row">
				<div class="col-lg-5 my-5">
					<img src="../images/tải xuống.png" class="my-5" alt="">
				</div>

				<div class="col-lg-7 my-5">

					<form action=update.action method="post">
						<pre>
						<div class="form-row mt-5 mb-0">
							<div class="form-row col-lg-7 ">
								<label for="exampleInputUserName">Tên đăng nhập</label> <input
										type="text" name="email" placeholder="UserName"
										class="form-control">
							</div>
						</div>
						<div class="form-row">
							<div class="form-row col-lg-7 my-3">
								<label for="exampleInputPassword">Mật khẩu</label> <input
										type="password" name="password" placeholder="********"
										class="form-control">
							</div>
						</div>
						<a href="#">Quên mật khẩu?</a>
						<div class="form-row">
							<div class="col-lg-7 mt-3 d-flex flex-row-reverse">
								<button type="button" class="btn btn-success btn-block"
										name="submitType" value="Register">Đăng nhập</button>
							</div>
						</div>
					</pre>
					</form>
				</div>
			</div>
		</div>
	</section>

</body>
</html>