<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap')
	;

* {
	font-family: 'Noto Sans KR', sans-serif;
}

body {
	background-color: #1BBC9B;
}


div {
	margin: auto;
	width: 600px;
	border-radius: 5px;
	text-align: center;
	padding: 20px;
}


input {
	width: 100%;
	padding: 10px;
	box-sizing: border-box;
	border-radius: 5px;
	border: none;
}

.in {
  margin-bottom: 10px;
}

#btn {
	background-color: #1BBC9B;
	margin-bottom: 30px;
	color: white;
}

a {
	text-decoration: none;
	color: #9B9B9B;
	font-size: 12px;
}
</style>

<body>
	<div style="width:auto; height: 150px;"  class="jumbotron text-center">
		<h1>���� ���� ���α׷�</h1>
	</div>
	<div style="background-color: #EEEFF1;">
		<form method="post" action="login">
			<input type="text" name="id" placeholder="���̵�" class="in"> <input
				type="password" name="pw" placeholder="��й�ȣ" class="in"> <input
				onclick="alert('�α��� ����');" type="submit" id="btn" value="�α���"><br>
		</form>
		<a href="#none">��й�ȣ�� �ؾ�����̳���?</a>
	</div>
</body>
</html>