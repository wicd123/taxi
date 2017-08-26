<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>약속택시 - 신속하고 안전한 택시와 약속하세요.</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="resources/css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="resources/css/style.css" rel="stylesheet">
    <link href="resources/color/default.css" rel="stylesheet">

    <!-- =======================================================
        Theme Name: Squadfree
        Theme URL: https://bootstrapmade.com/squadfree-free-bootstrap-template-creative/
        Author: BootstrapMade
        Author URL: https://bootstrapmade.com
    ======================================================= -->
</head>




<body id="page-top" data-spy="scroll" data-target=".navbar-custom">

    <!-- Preloader -->
    <div id="preloader">
      <div id="load"></div>
    </div>
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="/">
                    <h1>약속택시</h1>
                </a>
            </div>
            <c:if test="${empty user.user_no}">
                <form id="loginForm"  action="login" method="post">
                    <div class="navbar-header page-scroll">
                        <a class="navbar-brand">
                          <input type="text" name="user_id" class="form-control" id="login_user_id" placeholder="아이디 입력"  />
                         </a>
                    </div>

                    <div class="navbar-header page-scroll">
                        <a class="navbar-brand">
                         <input type="password" name="user_pw" class="form-control" id="login_user_pw" placeholder="비밀번호 입력"  />
                        </a>
                    </div>

                    <div class="navbar-header page-scroll">
                        <a class="navbar-brand">
                         <button type="submit" class="btn btn-skin pull-center" id="login">로그인</button>
                        </a>
                    </div>
                </form>
            </c:if>
            <c:if test="${!empty user.user_no}">
                    <div class="navbar-header page-scroll">
                        <a class="navbar-brand">
                            <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    ${user.user_id} 님 환영합니다!</h2>
                        </a>
                    </div>

                    <div class="navbar-header page-scroll">
                        <a class="navbar-brand">
                            <button type="button" class="btn btn-skin pull-center" id="logout" onclick="location.href='/logout'">로그아웃</button>
                        </a>
                    </div>
            </c:if>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#intro">Home</a></li>
        <li><a href="#about">이용방법</a></li>
        <li><a href="#service">자주묻는질문</a></li>
          <c:if test="${!empty user.user_no && empty user.user_carnum }">
            <li><a href="#contact">약속하기</a></li>
          </c:if>
          <c:if test="${!empty user.user_no && !empty user.user_carnum }">
            <li><a href="#contact">약속받기</a></li>
          </c:if>
          <c:if test="${empty user.user_no}">
              <li><a href="#contact">회원가입</a></li>
          </c:if>
          <c:if test="${!empty user.user_no}">
              <li><a href="#delete">정보수정/탈퇴</a></li>
          </c:if>
      </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    

</body>
</html>