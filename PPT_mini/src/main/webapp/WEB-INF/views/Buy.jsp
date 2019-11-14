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
  
    <!-- Bootstrap core JavaScript -->
    <script src="<c:url value="vendor/jquery/jquery.min.js"/>"></script>
    <script src="<c:url value="vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
  
    <!-- Plugin JavaScript -->
    <script src="<c:url value="vendor/jquery-easing/jquery.easing.min.js"/>"></script>
  
    <!-- Contact form JavaScript -->
    <script src="<c:url value="js/jqBootstrapValidation.js"/>"></script>
    <script src="<c:url value="js/contact_me.js"/>"></script>
  
    <!-- Custom scripts for this template -->
    <script src="<c:url value="js/agency.min.js"/>"></script>

  <script type="text/javascript">
    function changeTrColor(trObj, oldColor, newColor) {
      trObj.style.backgroundColor = newColor;
      trObj.onmouseout = function () {
        trObj.style.backgroundColor = oldColor;
      }
    }
  </script>
  <script>
    window.closeModal = function () {
      $('#W2').modal('hide');
      $('#Pd2').modal('hide');
      $('#popuplogin').modal('hide');
      $('#popupsignin').modal('hide');
    };
  </script>
  <script>
      $(document).ready(function(){
    $('#writeBtn').click(function(){
      $('#writeIfr').attr('src','Bwritepost');
    });
    $('#firstRow').click(function(){
        $('#readIfr').attr('src','Breadpost');
      });
    
  });
  </script>
  <script>
      $(document).ready(function(){
    //회원가입 추가
    $('#popsign').click(function(){
        $('#signupFrame').attr('src','signup');
      });
	//로그인 추가
    $('#poplog').click(function(){
    $('#loginFrame').attr('src','login');
  });
    $('TunaBtn').click(function(){
      $(location).attr("href", "home");
    })
    
    
  });
  </script>
</head>

<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="padding: 10px; margin: 0px;">
	<!-- 링크변경  시작-->
    <a class="navbar-brand js-scroll-trigger" href="">Tuna Auction</a>
    <!-- 링크변경  끝-->
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="popup">
      <div class="row">
        <a href="#popuplogin" data-toggle="modal" id="poplog">로그인</a><!-- 아이디 추가 -->
      </div>
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="input-group" style="width: 600px">
      <input type="text" class="form-control " placeholder="검색하세요!">
      <span class="input-group-btn">
        <button class="btn btn-secondary" type="button">찾기</button>
      </span>
    </div>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
      data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
      aria-label="Toggle navigation">
      Menu
      <i class="fas fa-bars"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav text-uppercase ml-auto">
      <!-- 링크변경  시작-->
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="/main/#services">소개</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="/main/#deadline">마감임박상품</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="/main/#popular">인기상품</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="sell">팝니다</a>
        </li>
        <!-- 링크변경  끝-->
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#buy">삽니다</a>
        </li>
        <li class="nav-item">
          <div class="nav-link js-scroll-trigger">
            <a href="#popupsignin" data-toggle="modal" id="popsign" >회원가입</a><!-- 아이디 추가 -->
          </div>
        </li>
      </ul>
    </div>
  </nav>

  <!-- Header -->
  <header class="masthead">
    <div class="container">
      <div class="intro-text">
        <div class="intro-lead-in" style="font-family: Kaushan Script;">Welcome Tuna Auction!</div>
        <div class="intro-heading text-uppercase">여러분께 합리적인 <br>거래를 안겨드립니다.</div>
        <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#buy">Tell Me More</a>
      </div>
    </div>
  </header>

  <!-- Contact -->
  <section class="page-section" id="buy">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">사요</h2>
          <h3 class="section-subheading text-muted">다양한 상품들을 구매해 보세요</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <form id="contactForm" name="sentMessage" novalidate="novalidate">
            <table class="table table-striped table-hover">
              <thead>
                <tr>
                  <th>번호</th>
                  <th>제품명</th>
                  <th>작성자</th>
                  <th>마감기한</th>
                  <th>제품 종류</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="auction" items="${Auctions}" varStatus="status">
                    <p>
                      <tr id="${auction.auctionId}" onmouseover="javascript:changeTrColor(this, '#FFFFFF', '#F4FFFD')"
                      style="cursor: pointer;" class="portfolio-link" data-toggle="modal" href="/sell/${auction.auctionId}">
                      <th>${status.count}</th>
                      <th>${auction.itemName}</th>
                      <th>${auction.userName}</th>
                      <th>${auction.endTime}</th>
                      <th>${auction.category}</th>
                      
                    </tr>
                  </p>
                  </c:forEach>
              </tbody>
            </table>
            <hr />
            <a class="btn btn-default" data-toggle="modal" id="writeBtn" href="#W2">글쓰기</a>

            <div class="text-align" style="text-align: center;">
              <ul class="pagination">
                <li><a href="p1">1</a></li>
                <li><a href="p1">2</a></li>
                <li><a href="p1">3</a></li>
                <li><a href="p1">4</a></li>
                <li><a href="p1">5</a></li>
              </ul>
            </div>

          </form>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer class="footer">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-4">
          <span class="copyright">Copyright &copy; Your Website 2019</span>
        </div>
        <div class="col-md-4">
          <ul class="list-inline social-buttons">
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </li>
          </ul>
        </div>
        <div class="col-md-4">
          <ul class="list-inline quicklinks">
            <li class="list-inline-item">
              <a href="#">Privacy Policy</a>
            </li>
            <li class="list-inline-item">
              <a href="#">Terms of Use</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
  <!-- 게시물들 -->
  <div class="portfolio-modal modal fade" id="Pd2" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-head">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body" style="height: 700px;">
                <!-- Project Details Go Here -->
                <iframe id="readIfr" style="width: 100%; height: 100%; border: 0px;">ifr4</iframe>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 게시물 등록-->
  <div class="portfolio-modal modal fade" id="W2" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal" id="close_modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body" style="height: 650px;">
                <!-- Project Details Go Here -->
                <iframe id="writeIfr" style="width: 100%; height: 100%; border: 0px;">ifr3</iframe>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 로그인 변경 아이프레임에 나오게-->
  <div class="modal" id="popuplogin" tabindex="1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content" style="background:#fed136;">
        <div class="modal-header">
          <h3 class="modal-title" style="text-align:center; font-family: Kaushan Script;">LogIn</h3>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
              aria-hidden="true">&times;</span></button>
        </div>
        <div class="modal-body" style="width: 100%;">
              <iframe id="loginFrame" style="width: 100%; height: 350px;border: 0px;">ifr1</iframe>
            </div>
          </div>
        </div>
      </div>
  <!-- 회원가입 -->
<div class="modal" id="popupsignin" tabindex="1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content" style="background:#fed136;">
        <div class="modal-header">
          <h3 class="modal-title" style="text-align:center; font-family: Kaushan Script;">SignIn</h3>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
              aria-hidden="true">&times;</span></button>
        </div>
        <div class="modal-body" style="height: 600px;">
          <iframe id="signupFrame"  style="width: 100%; height: 550px;border: 0px;"></iframe>
        </div>
      </div>
    </div>
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