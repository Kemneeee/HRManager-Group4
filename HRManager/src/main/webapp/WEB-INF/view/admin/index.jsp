<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<title>Admin</title>
</head>
<body>

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<a class="navbar-brand shadow-lg p-0 mb-4 bg-body rounded ms-5">
				<img src="../images/tải xuống.png" alt=""
				style="height: 120px; width: 111px;">
			</a>
			<div class="d-flex navbar-right me-5">
				<img src="../images/baseline_person_black_24dp.png" alt="">
				<p class="mt-3">ADMIN</p>
			</div>
		</div>
	</nav>

	<nav class="nav nav-pills flex-column flex-sm-row bg-danger ali">
		<a class="flex-sm-fill text-sm-center nav-link "
			style="color: aliceblue" ;aria-current="page" href="#">Trang chủ</a>
		<a class="flex-sm-fill text-sm-center nav-link"
			style="color: aliceblue;" href="#">Duyệt nghỉ phép</a> <a
			class="flex-sm-fill text-sm-center nav-link"
			style="color: aliceblue;" href="#">Quản lí nhân viên </a> <a
			class="flex-sm-fill text-sm-center nav-link"
			style="color: aliceblue;" href="#">Quản lí phòng ban </a> <a
			class="flex-sm-fill text-sm-center nav-link"
			style="color: aliceblue;" href="#">Quản lí lỗi vi phạm</a> <a
			class="flex-sm-fill text-sm-center nav-link"
			style="color: aliceblue;">Đăng xuất</a>
	</nav>
	<nav class="navbar navbar-light bg-light">
		<div class="container-fluid">
			<div class="d-flex nav-right me-5">
				<img src="../images/baseline_filter_alt_black_24dp.png">
				<h4 class="mt-3">Bộ lọc</h4>

			</div>
			<form class="d-flex me-5">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search" style="width: 1000px">
				<button class="btn btn-outline-success" type="submit">
					<img src="../images/baseline_search_black_24dp.png" alt="">
				</button>
			</form>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<table class="table table-bordered mt-5" style="text-align: center;">
				<tr>

					<th>STT</th>
					<th>Danh sách phòng ban</th>
					<th>Số lượng nhân viên</th>
					<th></th>
				</tr>
				<tr>

					<th></th>
					<th></th>
					<th></th>
					<th>
						<button type="button" class="btn btn-warning">Sửa</button>
						<button type="button" class="btn btn-danger">Xoá</button>
					</th>
				</tr>
			</table>

			<h5 style="color: red;">Thêm mới</h5>

			<nav class="nav nav-pills sflex-sm-row ">
				<div style="padding-left: 100px;" class="col-7">
					<label>Tên phòng ban</label> <input type="text"
						class="form-control">
				</div>
				<div class="col-5" style="padding-left: 100px;">
					<label>Số lượng nhân viên</label> <input type="text"
						class="form-control">
				</div>
			</nav>

			<div class=" mt-3 d-flex flex-row-reverse">
				<button type="button" class="btn btn-success btn-block">Cập
					nhật</button>
			</div>

		</div>
	</div>
</body>
</html>