<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
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
</head>
<title>Quản lí nhân viên</title>
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
				<p class="mt-3">QUẢN LÝ</p>
			</div>
		</div>
	</nav>

	<nav class="nav nav-pills flex-column flex-sm-row bg-danger ali">
		<a class="flex-sm-fill text-sm-center nav-link "
			style="color: aliceblue" ;aria-current="page" href="#">Trang chủ</a>
		<a class="flex-sm-fill text-sm-center nav-link"
			style="color: aliceblue;" href="#">Nghỉ phép</a> <a
			class="flex-sm-fill text-sm-center nav-link"
			style="color: aliceblue;" href="#">Quản lí nhân viên </a> <a
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

	<table class="table table-bordered mt-5" style="text-align: center;">
		<tr>
			<th></th>
			<th>STT</th>
			<th>Họ và tên</th>
			<th>Giới tính</th>
			<th>DOB</th>
			<th>Địa chỉ</th>
			<th>Số điện thoại</th>
			<th>Email</th>
			<th>Vị trí</th>
			<th>Chức vụ</th>
			<th>Phòng ban</th>
			<th></th>
		</tr>
		<tr>
			<th><input class="form-check-input" type="checkbox" value=""
				id="flexCheckDefault" checked></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th>
				<button type="button" class="btn btn-warning">Sửa</button>
				<button type="button" class="btn btn-danger">Xoá</button>
			</th>
		</tr>
	</table>

	<nav class="nav nav-pills flex-sm-row ">
		<div class=" d-flex flex-sm-fill text-sm-center "
			style="padding-left: 200px;">
			<p class="me-2">Đã chọn:</p>
			<p style="border: 1px solid black; width: 30px; height: 30px;">
				1</p>
		</div>

		<div class="d-flex flex-sm-fill text-sm-center">
			<p class="me-2">Hiển Thị</p>
			<select>
				<option>10</option>
				<option>20</option>
				<option>50</option>
			</select>
		</div>

		<div class=" d-flex flex-sm-fill text-sm-center">
			<li class="page-item disabled"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span> <span
					class="sr-only">Previous</span>
			</a></li>
			<li class="page-item active"><a class="page-link" href="#">1</a></li>
			<li class="page-item active"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span class="sr-only">Next</span> <span
					aria-hidden="true">&raquo;</span>
			</a></li>

		</div>
	</nav>




	</div>
	</div>



</body>
</html>