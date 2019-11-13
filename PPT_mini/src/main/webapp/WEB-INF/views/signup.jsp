<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
%>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="<c:url value="/vendor/fontawesome-free/css/all.min.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value=" https://fonts.googleapis.com/css?family=Montserrat:400,700"/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value=" https://fonts.googleapis.com/css?family=Kaushan+Script"/>"
	rel='stylesheet' type='text/css'>
<link
	href="<c:url value=" https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic"/>"
	rel='stylesheet' type='text/css'>
<link
	href="<c:url value=" https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"/>"
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="css/agency.min.css" rel="stylesheet">

<script>
	function checkRegister() {

		var Email = document.getElementById("Cemail");
		var strEmail = Email.value;
		var Name = document.getElementById("Cname");
		var strName = Name.value;
		var Birth = document.getElementById("Cbirth");
		var strBirth = Birth.value;
		var Tel = document.getElementById("Ctel");
		var strTel = Name.value;
		var Address = document.getElementById("Caddress");
		var strAddress = Name.value;
		var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

		if (strID1.length < 2) {
			alert(strID1.length + '글자입니다. 아이디를 2자 이상 입력해 주세여');
			return;
		} else if (strPw1.length < 8) {
			alert(strPw1.length + '자입니다. 비밀번호는 8자 이상입니다.')
			return;
		} else if (strName1.length < 2) {
			alert(strName1.length + '글자입니다. 이름을 2자 이상 입력해 주세여');
			return;
		} else if (exptext.test(strEmail) == false) {
			alert('이메일 형식이 올바르지 않습니다.');
			return;
		} else if (strBirth1.length == 0) {
			alert('생년월일을 입력해 주세요');
			return;
		} else if (strTel1.length < 10) {
			alert('전화번호를 정확히 입력해 주세요');
			return;
		} else if (strAddress1.length == 0) {
			alert('주소를 입력해 주세요');
			return;
		} else {
			alert('저장되었습니다.')
			document.location.href = ''; //controller 도메인 위치로 주면 될듯함
			return;
		}
	}
</script>

</head>

<body>
	<form method="post">
		<div class="modal-body">
			<div class="row" style="width: 100%;">
				<div class="panel panel-default">
					<div class="panel-heading"></div>
					<div class="panel-body">
						아이디를 입력해주세요<br> <input type="text" class="form-controlrm"
							placeholder="아이디 입력" id="Cid" name="Cid">
						<button type="submit">중복확인</button>
						<br> <br>비밀번호를 해주세요<br> <input type="password"
							name="Cpw" class="col-md-4" placeholder="비밀번호 입력" id="Cpw"><br>
						<br> 이름을 입력해주세요<br> <input type="text" class="col-md-4"
							placeholder="성함 입력" id="Cname" name="Cname"><br> <br>
						생년월일을 입력해주세요<br> <input type="date" class="col-md-4"
							id="Cbirth" name="Cbirth"><br> <br> 이메일을 입력해주세요<br>
						<input type="text" class="col-md-4" placeholder="이메일 입력"
							id="Cemail">&nbsp; <input type="text" list="mail"
							class="col-md-4" ID="Cemail" name="Cemail">
						<datalist id="mail">
							<option selected value="메일입력"></option>
							<option value="@naver.com"></option>
							<option value="@hanmail.net"></option>
							<option value="@gmail.com"></option>
							<option value="@nate.com"></option>
						</datalist>
						<br> <br> 휴대폰번호를 입력하세요<br> <input type="tel"
							class="col-md-4" placeholder="000-0000-0000" id="Ctel"
							name="Ctel"><br> <br> 주소를 입력하세요<br> <input
							type="text" class="col-md-4" placeholder="xx시 xx구" id="Caddress"
							name="Caddress"><br> <br>

						<button type="submit" onclick="checkRegister()"
							class="btn btn-lg btn-success btn-block" name="input">저장하기</button>
						<br>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>

</html>