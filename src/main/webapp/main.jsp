<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- Bootstrap CSS ���� �߰� -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.container {
	margin-top: 50px;
}

.row {
	margin: 10px;
}

ul {
	background-color: #FFDAB9;
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	text-align: center; /* ��� ���� �߰� */
}

li {
	display: inline-block; /* ���η� ���ĵ� li ��ҵ� */
	text-align: center;
	margin-right: 100px; /* ������ ������ ���� ���� */
}

li a {
	display: block;
	background-color: #FFDAB9;
	color: #000000;
	padding: 8px;
	text-decoration: none;
	text-align: center;
	font-weight: bold;
}

li a:hover {
	background-color: #CD853F;
	color: white;
}

h3 {
	color: #FF0000; /* ���ڻ��� ���������� ���� */
	font-size: 24px; /* ���� ũ�⸦ 24px�� ���� */
	font-weight: bold; /* ���ڸ� ���� ���� */
	text-decoration: underline; /* ���� ȿ�� �߰� */
	text-align: center; /* ��� ���� */
}

.im {
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	width: 500px;
	justify-content: center;
	align-items: center;
}
</style>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<!-- ��� ������ ���� justify-content-center Ŭ���� �߰� -->
			<form method="post" name="search" action="searchbbs.jsp">
				<table>
					<tr class="jumbotron text-center">
						<td><input type="text" class="form-control"
							placeholder="�˻��� �Է�" name="searchText" maxlength="100"></td>
						<td><button type="submit" class="btn btn-success">�˻�</button></td>
					</tr>
				</table>
			</form>
		</div>
	</div>

	<ul>
		<li><a href="addBook.html">���� �߰�</a></li>
		<li><a href="viewAll.jsp">��ü ��ȸ</a></li>

	</ul>
	<h3>�̴��� ����</h3>
	<div class="im">
		<div id="carousel-example-generic" class="carousel slide">
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<!-- �ƹ��� ����- -->
					<img
						src="https://tistory2.daumcdn.net/tistory/1041549/skin/images/nowonbuntistory.png"
						style="width: 100%">
				</div>
				<div class="item">
					<img src="https://www.nowonbun.com/img/nowonbuntistory1.png"
						style="width: 100%">
				</div>
			</div>
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <!-- ���� ȭ��ǥ --> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			</a>
		</div>
	</div>


	<!-- Bootstrap JS ���� �߰� -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>