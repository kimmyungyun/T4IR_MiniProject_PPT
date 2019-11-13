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
        function c2() {

            var UID = document.getElementById("Cid");
            var strUID = UID.value;
            var Pw = document.getElementById("Cpw");
            var strPw = Pw.value;

            if (strUID.length < 2) {
                alert(strUID.length + '글자입니다. 아이디를 2자 이상 입력해 주세여');
                return;
            } else if (strPw.length < 8) {
                alert(strPw.length + '자입니다. 비밀번호는 8자 이상입니다.')
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
    <div class="Idcontainer">

        <div class="logbody">
            <div class="row" style="width: 100%;">
                <div class="panel panel-default">
                    <div class="panel-body">
                        아이디를 입력해주세요<br>
                        &nbsp;<input type="text" class="form-control" placeholder="아이디 입력" id="Cid"><br>
                        비밀번호를 해주세요<br>
                        <input type="password" class="form-control" placeholder="비밀번호 입력" id="Cpw"><br>
                        <hr>

                        <button onclick="c2()" class="btn btn-lg btn-success btn-block" name="input">저장하기</button><br>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>