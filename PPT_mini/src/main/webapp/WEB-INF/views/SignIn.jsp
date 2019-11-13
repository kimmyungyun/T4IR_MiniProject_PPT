<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% 
    request.setCharacterEncoding("UTF-8");
%>
<html>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Agency - Start Bootstrap Theme</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom fonts for this template -->
  <link href="<c:url value="/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
  <link href="<c:url value="https://fonts.googleapis.com/css?family=Montserrat:400,700"/>" rel="stylesheet" type="text/css">
  <link href="<c:url value="https://fonts.googleapis.com/css?family=Kaushan+Script"/>" rel='stylesheet' type='text/css'>
  <link href="<c:url value="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic"/>" rel='stylesheet'
    type='text/css'>
  <link href="<c:url value="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"/>" rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="css/agency.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <script>
        function S1() {

            var ID1 = document.getElementById("Sid");
            var strID1 = ID1.value;
            var Pw1 = document.getElementById("Spw");
            var strPw1 = Pw1.value;
            var Email1 = document.getElementById("S1email");
            var strEmail1 = Email1.value;
            var Name1 = document.getElementById("Sname");
            var strName1 = Name1.value;
            var Birth1 = document.getElementById("Sbirth");
            var strBirth1 = Birth1.value;
            var Tel1 = document.getElementById("Stel");
            var strTel1 = Tel1.value;
            var Address1 = document.getElementById("Saddress");
            var strAddress1 = Address1.value;

            if (strID1.length < 2) {
                alert(strID1.length + '글자입니다. 아이디를 2자 이상 입력해 주세여');
                return;
            } else if (strPw1.length < 8) {
                alert(strPw1.length + '자입니다. 비밀번호는 8자 이상입니다.')
                return;
            } else if (strName1.length < 2) {
                alert(strName1.length + '글자입니다. 이름을 2자 이상 입력해 주세여');
                return;
            } else if (strEmail1.length == 0) {
                alert('이메일을 입력해주세요');
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
                window.parent.closeModal();
                return;
            }
            return;
        }
    </script>
</head>

<body>
    <div class="signbody">
        <div class="row" style="width: 100%;">
            <div class="panel-body">
                아이디를 입력해주세요<br>
                <input type="text" class="form-controlrm" placeholder="아이디 입력" id="Sid">
                <button type="submit">중복확인</button><br><br>
                비밀번호를 해주세요<br>
                <input type="password" class="col-md-8" placeholder="비밀번호 입력" id="Spw"><br><br>
                이름을 입력해주세요<br>
                <input type="text" class="col-md-8" placeholder="성함 입력" id="Sname"><br><br>
                생년월일을 입력해주세요<br>
                <input type="date" class="col-md-8" id="Sbirth"><br><br>
                이메일을 입력해주세요<br>
                <input type="text" class="col-md-4" placeholder="이메일 입력" id="S1email">&nbsp;
                <input type="text" list="mail" class="col-md-4" ID="S2email">
                <datalist id="mail">
                    <option selected value="메일입력"></option>
                    <option value="@naver.com"></option>
                    <option value="@hanmail.net"></option>
                    <option value="@gmail.com"></option>
                    <option value="@nate.com"></option>
                </datalist><br><br>
                휴대폰번호를 입력하세요<br>
                <input type="tel" class="col-md-8" placeholder="000-0000-0000" id="Stel"><br><br>
                주소를 입력하세요<br>
                <input type="text" class="col-md-8" placeholder="xx시 xx구" id="Saddress"><br><br>
                <button onclick="S1()" class="btn btn-lg btn-success btn-block" name="input">저장하기</button></a>
            </div>
        </div>
    </div>


</body>