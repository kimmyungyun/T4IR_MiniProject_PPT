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
      $('#W1').modal('hide');
      $('#Pd1').modal('hide');
      $('#popuplogin').modal('hide');
      $('#popupsignin').modal('hide');
    };
  </script>

</head>

<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="padding: 10px; margin: 0px;">

    <a class="navbar-brand js-scroll-trigger" href="/index.html">Tuna Auction</a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="popup">
      <div class="row">
        <a href="#popuplogin" data-toggle="modal">로그인</a>
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
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="/index.html#services">소개</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="/index.html#deadline">마감임박상품</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="/index.html#popular">인기상품</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#sell">팝니다</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="/Buy.html#buy">삽니다</a>
        </li>
        <li class="nav-item">
          <div class="nav-link js-scroll-trigger">
            <a href="#popupsignin" data-toggle="modal">회원가입</a>
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
        <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Tell Me More</a>
      </div>
    </div>
  </header>

  <!-- Contact -->
  <section class="page-section" id="sell">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">팔아요</h2>
          <h3 class="section-subheading text-muted">다양한 상품들을 만나보세요</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <form id="contactForm" name="sentMessage" novalidate="novalidate">
            <table class="table table-striped table-hover">
              <thead>
                <tr>
                  <th>번호</th>
                  <th>제목</th>
                  <th>작성자</th>
                  <th>마감기한</th>

                </tr>
              </thead>
              <tbody>
                <c:forEach var="auction" items="${Auctions}" varStatus="status">
                  <p>
                    <tr id="firstRow" onmouseover="javascript:changeTrColor(this, '#FFFFFF', '#F4FFFD')"
                    style="cursor: pointer;" class="portfolio-link" data-toggle="modal" href="/sell/${auction.auctionId}">
                    <th>${status.count}</th>
                    <th id="${auction.auctionId}">${auction.userId}</th>
                    <th>바나프레소</th>
                    <th>${auction.endTime}</th>
                  </tr>
                </p>
                </c:forEach>
                <tr id="firstRow" onmouseover="javascript:changeTrColor(this, '#FFFFFF', '#F4FFFD')"
                  style="cursor: pointer;" class="portfolio-link" data-toggle="modal" href="#Pd1">
                  <th>01</th>
                  <th id="Q1">아메리카노팔아요</th>
                  <th>바나프레소</th>
                  <th>2019.11.12</th>
                </tr>
                <tr>
                  <th>02</th>
                  <th>아메리카노팔아요</th>
                  <th>바나프레소</th>
                  <th>2019.11.12</th>
                </tr>
                <tr>
                  <th>03</th>
                  <th>아메리카노팔아요</th>
                  <th>바나프레소</th>
                  <th>2019.11.12</th>
                </tr>
              </tbody>
            </table>
            <hr />
            <a class="btn btn-default" data-toggle="modal" href="#W1">글쓰기</a>

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
  <div class="portfolio-modal modal fade" id="Pd1" tabindex="-1" role="dialog" aria-hidden="true">
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
                <iframe src="/Sreadpost.html" id="ifr4" style="width: 100%; height: 100%; border: 0px;">ifr4</iframe>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 게시물 등록-->
  <div class="portfolio-modal modal fade" id="W1" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body" style="height: 650px;">
                <!-- Project Details Go Here -->
                <iframe src="/Swritepost.html" id="ifr3" style="width: 100%; height: 100%; border: 0px;">ifr3</iframe>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 로그인 -->
  <div class="modal" id="popuplogin" tabindex="1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content" style="background:#fed136;">
        <div class="modal-header">
          <h3 class="modal-title" style="text-align:center; font-family: Kaushan Script;">LogIn</h3>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
              aria-hidden="true">&times;</span></button>
        </div>
        <div class="modal-body">
          <div class="row" style="width: 100%;">
            <div class="panel panel-default">
              <div class="panel-heading"> </div>
              <iframe src="/LogIn.html" id="ifr1" style="width: 165%; height: 350px;border: 0px;">ifr1</iframe>
            </div>
          </div>
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
          <iframe src="/SignIn.html" id="ifr2" style="width: 100%; height: 550px;border: 0px;">ifr2</iframe>
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