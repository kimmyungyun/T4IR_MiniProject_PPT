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
  <script>
    function wp() {
      alert('저장되었습니다.')
      window.parent.closeModal();
      return;
    }
  </script>
</head>

<body>
  <div class="modal-head">
        파는 게시글 작성
  </div>
  <div class="modal-body">
    <div class="form-group">
      <input class="form-control" id="title" type="text" placeholder="제목" required="required"
        data-validation-required-message="Please enter your Title.">
      <p class="help-block text-danger"></p>
    </div>
    <div class="form-group">
      <input class="form-control" id="ID" type="text" placeholder="작성자" required="required"
        data-validation-required-message="Please enter your ID.">
      <p class="help-block text-danger"></p>
    </div>
    <div class="form-group">
      <input class="form-control" id="price" type="text" placeholder="가격" required="required"
        data-validation-required-message="Please enter your Price.">
      <p class="help-block text-danger"></p>
    </div>
    <div class="form-group">
      <input class="form-control" id="title" type="file" placeholder="이미지등록" required="required"
        data-validation-required-message="Please enter your title.">
      <p class="help-block text-danger"></p>
    </div>
    <div class="form-group">
      <textarea class="form-control" id="maintext" placeholder="게시글의 설명을 작성해주세요" required="required"
        style="height: 300px;"></textarea>
    </div>
    <button onclick="wp()" class="btn btn-lg btn-success btn-block" name="input">저장하기</button>
  </div>


  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Contact form JavaScript -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/agency.min.js"></script>

</body>

</html>