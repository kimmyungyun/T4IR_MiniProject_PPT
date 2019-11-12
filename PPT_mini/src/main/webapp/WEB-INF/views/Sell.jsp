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
        document.location.href = 'index.html'
        return;
      }
      return;
    }
  </script>
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
      } else if(strEmail1.length == 0) {
        alert('이메일을 입력해주세요');
        return;
      } else if(strBirth1.length == 0) {
        alert('생년월일을 입력해 주세요');
        return;
      } else if(strTel1.length < 10) {
        alert('전화번호를 정확히 입력해 주세요');
        return;
      } else if(strAddress1.length == 0) {
        alert('주소를 입력해 주세요');
        return;
      } else {
        alert('저장되었습니다.')
        document.location.href = 'index.html'
        return;
      }
      return;
    }
  </script>
  <script type="text/javascript">
    function changeTrColor(trObj, oldColor, newColor) {
      trObj.style.backgroundColor = newColor;
      trObj.onmouseout = function () {
        trObj.style.backgroundColor = oldColor;
      }
    }
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
            <a class="nav-link js-scroll-trigger" href="#services">소개</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="/index.html#deadline">마감임박상품</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="/index.html#popular">인기상품</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="/Sell.html">팝니다</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="/Buy.html">삽니다</a>
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
                  <th>날짜</th>
                  <th>조회수</th>
                </tr>
              </thead>
              <tbody>
                <tr id="firstRow" onmouseover="javascript:changeTrColor(this, '#FFFFFF', '#F4FFFD')"
                  style="cursor: pointer;" class="portfolio-link" data-toggle="modal" href="#Pd1">
                  <th>01</th>
                  <th id="Q1">아메리카노팔아요</th>
                  <th>바나프레소</th>
                  <th>2019.11.12</th>
                  <th>2</th>
                </tr>
                <tr>
                  <th>02</th>
                  <th>아메리카노팔아요</th>
                  <th>바나프레소</th>
                  <th>2019.11.12</th>
                  <th>2</th>
                </tr>
                <tr>
                  <th>03</th>
                  <th>아메리카노팔아요</th>
                  <th>바나프레소</th>
                  <th>2019.11.12</th>
                  <th>2</th>
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
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase">아메리카노</h2>
                <p class="item-intro text-muted"> 3000원 </p>
                <img class="img-fluid d-block mx-auto" src="img/portfolio/01-full.jpg" alt="">
                <p>엄청나게 맛있는 아메리카노 3000원에 팔아요</p>
                <ul class="list-inline">
                  <li>등록일: January 2017</li>
                  <li>등록자: 바나프레소</li>
                  <li>Category: food</li>
                </ul>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close Project</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 게시물 등록-->
  <form action="">
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
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">상품 등록</h2>
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
                    <input class="form-control" id="inputfile" type="file" placeholder="이미지등록" required="required"
                      data-validation-required-message="Please enter your title.">
                    <p class="help-block text-danger"></p>
                  </div>
                  <div class="form-group">
                      <div class="form-group">
                          <textarea class="form-control" id="textbox" placeholder="내용" cols="30" rows="10" required data-validation-required-message="Please enter your main."></textarea>
                          <p class="help-block text-danger"></p>
                      </div>
                    <p class="help-block text-danger"></p>
                  </div>
                  <button class="btn btn-primary" type="submit">
                    <i class="fa fa-cog fa-spin"></i> 등록합니다 <i class="fa fa-cog fa-spin"></i></button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </form>

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
              <div class="panel-body">
                아이디를 입력해주세요<br>
                <input type="text" class="form-control" placeholder="아이디 입력" id="Cid"><br>
                비밀번호를 해주세요<br>
                <input type="password" class="form-control" placeholder="비밀번호 입력" id="Cpw"><br><br>

                <button onclick="c2()" class="btn btn-lg btn-success btn-block" name="input">저장하기</button><br>
              </div>
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
        <div class="modal-body">
          <div class="row" style="width: 100%;">
            <div class="panel panel-default">
              <div class="panel-heading"> </div>
              <div class="panel-body">
                아이디를 입력해주세요<br>
                <input type="text" class="form-controlrm" placeholder="아이디 입력" id="Cid">
                <button type="submit">중복확인</button><br><br>
                비밀번호를 해주세요<br>
                <input type="password" class="col-md-4" placeholder="비밀번호 입력" id="Cpw"><br><br>
                이름을 입력해주세요<br>
                <input type="text" class="col-md-4" placeholder="성함 입력" id="Cname"><br><br>
                생년월일을 입력해주세요<br>
                <input type="date" class="col-md-4" id="Cbirth"><br><br>
                이메일을 입력해주세요<br>
                <input type="text" class="col-md-4" placeholder="이메일 입력" id="Cemail">&nbsp;
                <input type="text" list="mail" class="col-md-4" ID="Cemail">
                <datalist id="mail">
                  <option selected value="메일입력"></option>
                  <option value="@naver.com"></option>
                  <option value="@hanmail.net"></option>
                  <option value="@gmail.com"></option>
                  <option value="@nate.com"></option>
                </datalist><br><br>
                휴대폰번호를 입력하세요<br>
                <input type="tel" class="col-md-4" placeholder="000-0000-0000" id="Ctel"><br><br>
                주소를 입력하세요<br>
                <input type="text" class="col-md-4" placeholder="xx시 xx구" id="Caddress"><br><br>

                <button onclick="c1()" class="btn btn-lg btn-success btn-block" name="input">저장하기</button></a><br>
              </div>
            </div>
          </div>
        </div>

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