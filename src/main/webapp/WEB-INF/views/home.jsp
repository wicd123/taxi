<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="kr">


<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <jsp:include page="header.jsp" />
    <title>약속택시 - 안전하고 편안한 이동수단 </title>

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




    <!-- Section: intro -->
    <section id="intro" class="intro">
    
        <div class="slogan">
            <h2>당신을 <span class="text_color">환영합니다.</span> </h2>
            <h4>가장 간단하고 가장 편안한 택시와 약속하세요.</h4>
        </div>
        <div class="page-scroll">
            <a href="#footer" class="btn btn-circle">
                <i class="fa fa-angle-double-down animated"></i>
            </a>
        </div>
    </section>
    
    
    
    <!-- /Section: intro -->

    <!-- Section: about -->
    <section id="about" class="home-section text-center">
        <div class="heading-about">
            <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="wow bounceInDown" data-wow-delay="0.4s">
                    <div class="section-heading">
                    <h2>이용방법</h2>
                    <i class="fa fa-2x fa-angle-down"></i>

                    </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
        <div class="container">

        <div class="row">
            <div class="col-lg-2 col-lg-offset-5">
                <hr class="marginbot-50">
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="wow bounceInUp" data-wow-delay="0.2s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <h5>회원가입</h5>
                        <p class="subtitle">간단한 회원가입</p>
                        <div class="avatar"><img src="resources/img/team/1.png" alt=""  /></div>
                    </div>
                </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="wow bounceInUp" data-wow-delay="0.5s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <h5>로그인</h5>
                        <p class="subtitle">안전한 로그인</p>
                        <div class="avatar"><img src="resources/img/team/2.png" alt=""  /></div>

                    </div>
                </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="wow bounceInUp" data-wow-delay="0.8s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <h5>약속 정하기</h5>
                        <p class="subtitle">약속하기 or 약속받기 </p>
                        <div class="avatar"><img src="resources/img/team/3.png" alt=""  /></div>

                    </div>
                </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="wow bounceInUp" data-wow-delay="1s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <h5>약속성공</h5>
                        <p class="subtitle">약속시간 지키기</p>
                        <div class="avatar"><img src="resources/img/team/4.png" alt=""/></div>

                    </div>
                </div>
                </div>
            </div>
        </div>      
        </div>
    </section>
    <!-- /Section: about -->
    

    <!-- Section: services -->
    <section id="service" class="home-section text-center bg-gray">
        
        <div class="heading-about">
            <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="wow bounceInDown" data-wow-delay="0.4s">
                    <div class="section-heading">
                    <h2>자주묻는질문</h2>
                    <i class="fa fa-2x fa-angle-down"></i>

                    </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
        <div class="container">
        <div class="row">
            <div class="col-lg-2 col-lg-offset-5">
                <hr class="marginbot-50">
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="wow fadeInLeft" data-wow-delay="0.2s">
                <div class="service-box">
                    <div class="service-icon">
                        <img src="resources/img/icons/service-icon-1.png" alt="" />
                    </div>
                    <div class="service-desc">
                        <h5>Payment</h5>
                        <p id="q_1">결제 진행은?<span id="ico_ar_1" >▼</span></p>
                        <p id="n_1" style="display:none" >당분간은 수수료가 무료!<br/> 결제는 택시기사님과 만나서 직접하세요!<br/></p>
                    </div>
                </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="wow fadeInUp" data-wow-delay="0.2s">
                <div class="service-box">
                    <div class="service-icon">
                        <img src="resources/img/icons/service-icon-2.png" alt="" />
                    </div>
                    <div class="service-desc">
                        <h5>Smart Phone</h5>
                        <p id="q_2">스마트폰으로 약속?<span id="ico_ar_2">▼</span></p>
                        <p id="n_2" style="display:none" >공식어플리케이션은 없습니다!<br/> 인터넷에 접속해 약속은 가능합니다!</p>
                    </div>
                </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="wow fadeInUp" data-wow-delay="0.2s">
                <div class="service-box">
                    <div class="service-icon">
                        <img src="resources/img/icons/service-icon-3.png" alt="" />
                    </div>
                    <div class="service-desc">
                        <h5>Reservation</h5>
                        <p id="q_3">약속을하고 연락은?<span id="ico_ar_3">▼</span></p>
                        <p id="n_3" style="display:none">약속이 받아지면 연락이 옵니다!<br/> 약속받은 택시기님에게 회원정보에 있는<br/>전화번호가 공개됩니다.</p>
                    </div>
                </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="wow fadeInRight" data-wow-delay="0.2s">
                <div class="service-box">
                    <div class="service-icon">
                        <img src="resources/img/icons/service-icon-4.png" alt="" />
                    </div>
                    <div class="service-desc">
                        <h5>question</h5>
                        <p id="q_4">궁금한게 있다면?<span id="ico_ar_4">▼</span></p>
                        <p id="n_4" style="display:none">궁금한게 있다면 다음으로 연락주세요!<br/>email:wicd123@naver.com<br/>phone:010-9999-4444</p>
                    </div>
                </div>
                </div>
            </div>
        </div>      
        </div>
    </section>
    <!-- /Section: services -->
    

    <!-- Section: contact -->
<c:if test="${empty user.user_no}">
    <section id="contact" class="home-section text-center">
        <div class="heading-contact">
            <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="wow bounceInDown" data-wow-delay="0.4s">
                    <div class="section-heading">
                    <h2>회원가입</h2>
                    <i class="fa fa-2x fa-angle-down"></i>

                    </div>
                    </div>
                </div>
            </div>
            </div>
        </div>


        <div class="section-heading" >
            <label for="userordriver">
                    어떤회원이세요?</label><br>
                <div class="col-md-12">
                    <button type="button" class="btn btn-skin pull-center" id="user_btn">
                          일반회원</button>
                      <button type="button" class="btn btn-skin pull-center" id="driver_btn">
                          택시드라이버</button>
                </div>
        </div>

        <div class="container">

        <div class="row">
            <div class="col-lg-2 col-lg-offset-5">
                <hr class="marginbot-50">
            </div>
        </div>
        
        
    <div class="row">
        <div class="col-lg-12">
            <div class="boxed-grey" disabled="disabled">

                <div id="sendmessage">Your message has been sent. Thank you!</div>
                <div id="errormessage"></div>
                
                <form id="signUpForm"  action="register" method="post" role="form" class="contactForm" onsubmit="return FormSubmit();">

                <div class="row" id="user" style="display:none">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="user_id">
                                아이디</label>
                            <input type="text" name="user_id" class="form-control" id="user_id" placeholder="영문,숫자,4~16자리로 가입해주세요"  required="rsequired"/>
                            <input type="button" class="btn btn-skin pull-left"  value="아이디 중복 조회" id="checkuserid"/><br>
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <label for="user_passwd">
                                비밀번호</label>
                            <div class="form-group">
                                <input type="password" disabled="disabled" class="form-control" name="user_pw" id="user_pw" placeholder="비밀번호 입력" required />
                                <div class="validation"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_passwd_ck">
                                비밀번호 확인</label>
                            <input type="password" disabled="disabled" class="form-control" name="confirm" id="confirm" placeholder="비밀번호 확인" required  />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <label for="email">
                                이메일</label>
                            <div class="form-group">
                                <input type="email" disabled="disabled" class="form-control" name="user_email" id="req_input" placeholder="이메일 입력" required />
                                <div class="validation"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="phone">
                                핸드폰</label>
                            <div class="form-group">
                                <input type="text"  disabled="disabled" class="form-control" name="user_phone"  id=req_input placeholder="핸드폰 입력" required />
                                <div class="validation"></div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="gener">
                                성별</label>
                              <input type="radio" disabled="disabled" value="남"   name="user_gender" checked="checked" /> <span class="up">남</span>&nbsp;&nbsp; 
                              <input type="radio" disabled="disabled" value="여"  name="user_gender" /> <span class="up">여</span>
                            <div class="validation"></div>
                        </div>

                        <div class="form-group">
                            <label for="checkKakao">
                                카카오톡 알림</label>
                            &nbsp;&nbsp;<input type="checkbox" disabled="disabled" name="user_check_kakao" onclick="javascript:window.open('/kakaoJoin','_blank','left=50, top=50, width=800, height=600')"/> <span class="up">알림 서비스 사용</span>&nbsp;&nbsp;
                            <div class="validation"></div>
                        </div>
                        
                        

                        <div class="col-md-12">
                              <input type="submit" class="btn btn-skin pull-center"  value="회원가입" id = "submit_btn" disabled="disabled"/>
                        </div>
                        
                     </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <div class="avatar"><img src="resources/img/imageplus/user_plus.png" alt="" /></div>
                        </div>
                    </div>
                </div>
                </form>
                
                
                
                <!-- 여기부터는 드라이브 회원 입니다람쥐 -->
                
                <form id="d_signUpForm"  action="register" method="post" role="form" class="contactForm">
                <div class="row" id="driver" style="display:none">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="user_id">
                                아이디</label>
                            <input type="text" name="user_id" class="form-control" id="d_user_id" placeholder="영문,숫자,4~16자리로 가입해주세요" required  />
                            <input type="button" class="btn btn-skin pull-left"  value="아이디 중복 조회" id="d_checkuserid"/><br>
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <label for="user_passwd">
                                비밀번호</label>
                            <div class="form-group">
                                <input type="password" class="form-control" disabled="disabled" name="user_pw" id="d_user_pw" placeholder="비밀번호 입력" required />
                                <div class="validation"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_passwd_ck">
                                비밀번호 확인</label>
                            <input type="password" class="form-control" name="confirm" disabled="disabled" id="d_confirm" placeholder="비밀번호 확인" required />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <label for="user_email">
                                이메일</label>
                            <div class="form-group">
                                <input type="email" class="form-control" name="user_email" disabled="disabled" id="d_req_input" placeholder="이메일 입력" required />
                                <div class="validation"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_phone">
                                핸드폰</label>
                            <div class="form-group">
                                <input type="text" class="form-control" name="user_phone" disabled="disabled" id="d_req_input" placeholder="핸드폰 입력" required />
                                <div class="validation"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_carnum">
                                차번호</label>
                            <input type="text" name="user_carnum" class="form-control" disabled="disabled" id="d_req_input" placeholder="차번호입력(ex:00차0000)" required />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <label for="gener">
                                성별</label>
                              <input type="radio" disabled="disabled" value="남"   name="user_gender" checked="checked" /> <span class="up">남</span>&nbsp;&nbsp; 
                              <input type="radio" disabled="disabled" value="여"  name="user_gender" /> <span class="up">여</span>
                            <div class="validation"></div>
                        </div>

                        <div class="form-group">
                            <label for="checkKakao">
                                카카오톡 알림</label>
                            &nbsp;&nbsp;<input type="checkbox" disabled="disabled" name="user_check_kakao" onclick="javascript:window.open('/kakaoJoin','_blank','left=50, top=50, width=800, height=600')"/> <span class="up">알림 서비스 사용</span>&nbsp;&nbsp;
                            <div class="validation"></div>
                        </div>
                        

                        <div class="col-md-12">
                            <button type="submit" class="btn btn-skin pull-center" id="d_submit_btn" disabled="disabled">
                              회원가입</button>
                        </div>
                     </div>
                     
                     <div class="col-md-6">
                        <div class="form-group">
                            <div class="avatar"><img src="resources/img/imageplus/driver_plus.png" alt="" /></div>
                        </div>
                    </div>
                </div>
                </form>
                
                <div id="recaptcha" align="center" class="center-block clearfix" style="display:none">
                          <div id="recaptcha1" ></div>
                </div>
                
            </div>
        </div>
        
        <%--<div class="col-lg-4">--%>
            <%--<div class="widget-contact">--%>
                <%--<h5>Main Office</h5>--%>
                <%----%>
                <%--<address>--%>
                  <%--<strong>Squas Design, Inc.</strong><br>--%>
                  <%--Tower 795 Folsom Ave, Beautiful Suite 600<br>--%>
                  <%--San Francisco, CA 94107<br>--%>
                  <%--<abbr title="Phone">P:</abbr> (123) 456-7890--%>
                <%--</address>--%>

                <%--<address>--%>
                  <%--<strong>Email</strong><br>--%>
                  <%--<a href="mailto:#">email.name@example.com</a>--%>
                <%--</address>  --%>
                <%--<address>--%>
                  <%--<strong>We're on social networks</strong><br>--%>
                        <%--<ul class="company-social">--%>
                            <%--<li class="social-facebook"><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>--%>
                            <%--<li class="social-twitter"><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>--%>
                            <%--<li class="social-dribble"><a href="#" target="_blank"><i class="fa fa-dribbble"></i></a></li>--%>
                            <%--<li class="social-google"><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>--%>
                        <%--</ul>   --%>
                <%--</address>                  --%>
            <%----%>
            <%--</div>  --%>
        <%--</div>--%>
    </div>  

        </div>
    </section>
</c:if>
    <!-- /Section: contact -->
    
    <!--  약속하기 입니다 -->
<c:if test="${!empty user.user_no && empty user.user_carnum }">
    <section id="contact" class="home-section text-center">
        <div class="heading-contact">
            <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="wow bounceInDown" data-wow-delay="0.4s">
                    <div class="section-heading">
                    <h2>약속하기</h2>
                    <i class="fa fa-2x fa-angle-down"></i>

                    </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
        <div class="section-heading" >
            <label for="userordriver">
                    어떤작업을 하실꺼죠?</label><br>
                <div class="col-md-12">
                    <button type="button" class="btn btn-skin pull-center" id="reservation_btn">
                          약속하기</button>
                      <button type="button" class="btn btn-skin pull-center" id="reservation_ck_btn">
                          약속확인하기</button>
                </div>
        </div>
        <div class="container">

        <div class="row">
            <div class="col-lg-2 col-lg-offset-5">
                <hr class="marginbot-50">
            </div>
        </div>
    <div class="row">
        <div class="col-lg-12">
            <div>
                <div id="sendmessage">Your message has been sent. Thank you!</div>
                <div id="errormessage"></div>
                <form id="reservationForm"  action="reservation" method="post" role="form" class="contactForm">
                    <div class="row" id="reservation" style="display:none">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="user_id">
                                    날짜</label>
                                <input type="date" name="r_date" class="form-control" id="r_date" placeholder="날짜 입력" required  />
                                <div class="validation"></div>
                            </div>
                            <div class="form-group">
                                <label for="user_passwd">
                                    시간</label>
                                <div class="form-group">
                                    <input type="time" class="form-control" name="r_time" id="r_time" placeholder="시간 입력" required />
                                    <div class="validation"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="user_passwd_ck">
                                    출발 장소</label>
                                <input type="text"  class="form-control" name="r_start_place" id="r_start_place" placeholder="출발 장소 입력" required  />
                                <div class="validation"></div>
                            </div>
                            <div class="form-group">
                                <label for="email">
                                    도착 장소</label>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="r_arrival_place" id="r_arrival_place" placeholder="도착 장소 입력" required />
                                    <div class="validation"></div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                  <input type="submit" class="btn btn-skin pull-center"  value="약속하기" id = "reservation_submit_btn"/>
                            </div>
                            <br>

                         </div>
                         <div class="col-md-6">
                            <div class="form-group">
                                <div class="avatar"><img src="resources/img/imageplus/reservation.png" alt="" /></div>
                            </div>
                        </div>

                    </div>
                </form>

                <table class="table table-condensed" id="reservation_ck" style="display:none">
                  <thead>
                    <tr  id="reservation_ck_title">
                        <th id="r_ck_ck">
                            약속상태
                        </th>
                       <th id="r_date_ck">
                            약속날짜
                        </th>
                        <th  id="r_time_ck">
                            약속시간
                        </th>
                        <th id="r_start_place_ck">
                            출발장소
                        </th>
                        <th id="r_arrival_place_ck">
                            도착장소
                        </th>
                        <th id="r_arrival_place_ck">
                            삭제
                        </th>
                     </tr>
                  </thead>
                  <tbody id="reservation_ck_content">
                  </tbody>
                </table>
            </div>
        </div>
    </div>
        </div>
    </section>
</c:if>
  <!--  드라이브 약속 받기   -->  
<c:if test="${!empty user.user_no && !empty user.user_carnum }">
    <section id="contact" class="home-section text-center">
        <div class="heading-contact">
            <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="wow bounceInDown" data-wow-delay="0.4s">
                    <div class="section-heading">
                    <h2>약속받기</h2>
                    <i class="fa fa-2x fa-angle-down"></i>
                    </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
        
        <div class="section-heading" >
            <label for="userordriver">
                    어떤작업을 하실꺼죠?</label><br>
                <div class="col-md-12">
                    <button type="button" class="btn btn-skin pull-center" id="d_reservation_btn">
                          약속받기</button>
                      <button type="button" class="btn btn-skin pull-center" id="d_reservation_ck_btn">
                          약속확인하기</button>
                </div>
        </div>
        <div class="container">
        <div class="row">
            <div class="col-lg-2 col-lg-offset-5">
                <hr class="marginbot-50">
            </div>
        </div>
        
        <div class="section-heading inline" id="s_d_reservation" style="display:none" >
            <label for="s_reservation">
                    원하는 장소가 있으세요?</label><br>
                <form id="s_reservationForm" class="form-inline" role="form">
                     <div class="form-group"> 
                       <select class="form-control" name="searchPlace" id="searchPlace">
                          <option id="r_start_place" value="r_start_place">출발장소</option>
                          <option id="r_arrival_place" value="r_arrival_place">도착장소</option>
                       </select>
                     </div> 
                     <div class="form-group"> 
                       <input type="text" class="form-control" id="reservationPosition" name="reservationPosition" placeholder="장소검색(ex.노원)" >
                     </div> 
                      <button type="button" id="reservationPositionSearch" class="btn btn-skin pull-center">검색</button>
               </form>

        </div>
        
     
    <div class="row">
        <div class="col-lg-12">
            <div >
                <div id="sendmessage">Your message has been sent. Thank you!</div>
                <div id="errormessage"></div>
                <table class="table table-condensed" id="d_reservation" style="display:none">
                  <thead>
                    <tr  id="d_reservation_title">
                       <th id="d_r_date">
                            약속날짜
                        </th>
                        <th  id="d_r_time">
                            약속시간
                        </th>
                        <th id="d_r_start_place">
                            출발장소
                        </th>
                        <th id="d_r_arrival_place">
                            도착장소
                        </th>
                        <th id="d_r_button">
                            약속받기
                        </th>
                     </tr>
                  </thead>
                  <tbody id="d_reservation_content">
                  </tbody>
                </table>
                <table class="table table-condensed" id="d_reservation_ck" style="display:none">
                  <thead>
                    <tr  id="d_reservation_ck_title">
                       <th id="d_r_date_ck">
                            약속날짜
                        </th>
                        <th  id="d_r_time_ck">
                            약속시간
                        </th>
                        <th id="d_r_start_place_ck">
                            출발장소
                        </th>
                        <th id="d_r_arrival_place_ck">
                            도착장소
                        </th>
                        <th id="d_r_date_ck">
                            약속핸드폰번호
                        </th>
                        <th id="d_r_arrival_place_ck">
                            약속취소
                        </th>
                     </tr>
                  </thead>
                  <tbody id="d_reservation_ck_content">
                  </tbody>
                </table>
            </div>
        </div>
    </div>
        </div>
    </section>
</c:if>    
    
    
<c:if test="${!empty user.user_no}">
     <section id="delete" class="home-section text-center bg-gray">
        <div class="heading-contact">
            <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="wow bounceInDown" data-wow-delay="0.4s">
                    <div class="section-heading">
                    <h2>회원정보수정/탈퇴</h2>
                    <i class="fa fa-2x fa-angle-down"></i>

                    </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
        
        <div class="section-heading" >
            <label for="userordriver">
                    어떤작업을 하실꺼죠?</label><br>
                <div class="col-md-12">
                    <button type="button" class="btn btn-skin pull-center" id="user_change_btn">
                          회원정보수정</button>
                      <button type="button" class="btn btn-skin pull-center" id="user_delete_btn">
                          회원탈퇴</button>
                </div>
        </div>
        <div class="container">

            <div class="row">
                <div class="col-lg-2 col-lg-offset-5">
                    <hr class="marginbot-50">
                </div>
            </div>


            <div class="row">
                <div class="col-lg-12">
                    <div class="boxed-grey">
                        <div id="sendmessage">Your message has been sent. Thank you!</div>
                        <div id="errormessage"></div>
                        <form id="user_change_Form"  action="user_update" method="post" role="form" class="contactForm">
                            <div class="row" id="user_change" style="display:none">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="user_change_id">
                                            아이디</label>
                                        <input type="text" disabled="disabled"  name="user_id" class="form-control" id="user_change_id" value="${user.user_id}" style="font-weight: bold" required  />
                                        <div class="validation"></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="user_cahnge_now_passwd">
                                            현재 비밀번호</label>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="user_password" id="user_cahnge_now_passwd" placeholder="현재 비밀번호를 입력하세요." required />
                                            <div class="validation"></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="user_cahnge_password">
                                            수정 비밀번호</label>
                                        <input type="password"  class="form-control" name="user_pw" id="u_user_pw" placeholder="수정하실 비밀번호를 입력하세요" required  />
                                        <div class="validation"></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="user_cahnge_password_ck">
                                            수정 비밀번호 확인</label>
                                        <input type="password"  class="form-control" name="user_pw_ck" id="u_confirm" placeholder="다시 한번 수정하실 비밀번호를 입력하세요" required  />
                                        <div class="validation"></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="email">
                                            이메일</label>
                                        <div class="form-group">
                                            <input type="email" class="form-control" name="user_email" id="user_cahnge_email" value="${user.user_email}" required />
                                            <div class="validation"></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="phone">
                                            핸드폰 번호</label>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="user_phone" id="user_cahnge_phone" value="${user.user_phone}" required />
                                            <div class="validation"></div>
                                        </div>
                                    </div>
                                    <c:if test="${!empty user.user_carnum}">
                                        <div class="form-group">
                                            <label for="carnum">
                                                차번호</label>
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="user_carnum" id="user_cahnge_carnum" value="${user.user_carnum}" required />
                                                <div class="validation"></div>
                                            </div>
                                        </div>
                                    </c:if>
                                    <div class="form-group"><strong>카톡 알림 연동 상황</strong></div>
                                    <c:if test="${user.user_check_kakao eq 'on'}">
                                        <div class="form-group col-md-8" style="padding: 0;">
                                            <input type="text" id="kakao_alarm" class="form-control col-md-6" value="사용중" style="text-align:center;font-weight:bold" readonly />
                                        </div>
                                        <div class="form-group col-md-4" style="padding: 0;">
                                            <button type="button" id="kakao_alarm_button" class="btn btn-danger col-md-push-1 col-md-11 kakao_alarm_button" onclick="javascript:window.open('/kakaoLogin?code=off','_blank','left=50, top=50, width=500, height=300')">사용 해제</button>
                                        </div>
                                        <div class="form-group kakao_alarm"><strong>카톡 연동 아이디</strong></div>
                                        <div class="form-group col-md-8 kakao_alarm" style="padding: 0;">
                                            <input type="text" id="kakao_alarm2" class="form-control col-md-6" value="${kakao_user}" style="text-align:center;font-weight:bold" readonly />
                                        </div>
                                        <div class="form-group col-md-4 kakao_alarm" style="padding: 0;">
                                            <button type="button" id="kakao_alarm_button2" class="btn btn-warning col-md-push-1 col-md-11" onclick="javascript:window.open('/kakaoJoin_add','_blank','left=50, top=50, width=800, height=600')">계정 변경</button>
                                        </div>
                                    </c:if>
                                    <c:if test="${user.user_check_kakao eq 'off'}">
                                        <div class="form-group col-md-8" style="padding: 0;">
                                            <input type="text" id="kakao_alarm" class="form-control col-md-6" value="미사용중" style="text-align:center;font-weight:bold" readonly />
                                        </div>
                                        <div class="form-group col-md-4 " style="padding: 0;">
                                            <button type="button" id="kakao_alarm_button" class="btn btn-primary col-md-push-1 col-md-11" onclick="javascript:window.open('/kakaoJoin_add','_blank','left=50, top=50, width=800, height=600')">사용하기</button>
                                        </div>
                                        <div class="form-group kakao_alarm" style="display:none"><strong>카톡 연동 아이디</strong></div>
                                        <div class="form-group col-md-8 kakao_alarm" style="padding: 0;display: none;">
                                            <input type="text" id="kakao_alarm2" class="form-control col-md-6" value="${kakao_user}" style="text-align:center;font-weight:bold" readonly />
                                        </div>
                                        <div class="form-group col-md-4 kakao_alarm" style="padding: 0;display: none;">
                                            <button type="button" id="kakao_alarm_button2" class="btn btn-warning col-md-push-1 col-md-11" onclick="javascript:window.open('/kakaoJoin_add','_blank','left=50, top=50, width=800, height=600')">계정 변경</button>
                                        </div>
                                    </c:if>
                                    <input type="hidden" id="user_check_kakao" name="user_check_kakao" value="${user.user_check_kakao}"/>
                                    <div class="col-md-12">
                                        <input type="submit" class="btn btn-skin pull-center"  value="수정 완료" id = "user_cahange_submit"/>
                                    </div>
                                    <br>

                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="avatar"><img src="resources/img/imageplus/user_change.png" alt="" /></div>
                                    </div>
                                </div>
                            </div>
                        </form>

                        <form id="user_delete_Form" action="user_delete" method="post" role="form" class="contactForm">
                            <div class="row" id="user_delete" style="display:none">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="user_delete_id">
                                            아이디</label>
                                        <input type="text" name="user_id" class="form-control" id="user_delete_id" value="${user.user_id}" readonly  />
                                        <div class="validation"></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="user_delete_passwd">
                                            현재 비밀번호</label>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="user_pw" id="user_delete_password" placeholder="현재 비밀번호 입력" required />
                                            <div class="validation"></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="user_delete_ck">
                                            정말로 탈퇴 하시겠습니까?</label>
                                        <input type="text"  class="form-control" name="user_delete_ck" id="user_delete_ck" placeholder="[탈퇴를 원합니다.] or [탈퇴를 원합니다]라는 문구를 정확히 작성하세요." required  />
                                        <div class="validation"></div>
                                    </div>


                                    <div class="col-md-12">
                                        <input type="submit" class="btn btn-skin pull-center"  value="탈퇴 완료" id = "user_delete_submit" data-trigger="manual" data-toggle="tooltip" data-placement="bottom" title="탈퇴 안내를 모두 확인하고 동의해 주세요."/>
                                    </div>
                                    <br>

                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="avatar"><img src="resources/img/imageplus/user_delete.png" alt="" /></div>
                                    </div>
                                </div>
                            </div>
                        </form>



                    </div>
                </div>
            </div>

        </div>
    </section>
    
</c:if>

    <!--  약속하기 끝입니다. -->
    
    <!-- Core JavaScript Files -->
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.easing.min.js"></script> 
    <script src="resources/js/jquery.scrollTo.js"></script>
    <script src="resources/js/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="resources/js/custom.js"></script>
    <script src="resources/js/jquery-3.1.0.js"></script>
    <script src="resources/js/jquery.easing.1.3.js"></script>
    <script src="resources/js/ajaxsetup.js"></script>
    <script src="resources/js/MyApp.board.js"></script>
    <script src="https://www.google.com/recaptcha/api.js?onload=myCallBack&render=explicit" async defer></script>

    <script>
      var recaptcha1;
      var myCallBack = function() {
        //Render the recaptcha1 on the element with ID "recaptcha1"
        recaptcha1 = grecaptcha.render('recaptcha1', {
          'sitekey' : '6Lf00y0UAAAAALO2TXpzKtRjV7UOYe2IDDiXd2Az', //Replace this with your Site key
          'theme' : 'light'
        });
      };
    </script>
    
    
    

    <script>
    $(document).ready(function (e){
    	$('#submit_btn').click(function(e){
            if (grecaptcha.getResponse() == ""){
                alert("리캡챠를 체크해야 합니다.");
                return false;
                } else {
                }
        });
    	
    	//회원가입 아이디 조건
    	
    	
    	
    	
    	
        $('#user_delete_submit').click(function(){
            var delete_text = $('#user_delete_ck').val();
            if(delete_text == '탈퇴를 원합니다' || delete_text == '탈퇴를 원합니다.'){
                return true;
            } else {
                alert('탈퇴 문구를 정확히 입력하세요.\n탈퇴를 원합니다 또는 탈퇴를 원합니다.로 입력하세요');
                return false;
            }

        });
    	//회원가입 외부 제이꽈리
    	$('#user_btn').click(function(e){
    		$('#user').show(1000, 'easeOutBounce', function(){})
    		$('#recaptcha').show(1000, 'easeOutBounce', function(){})
    		$('#driver').hide(1000, 'easeOutBounce', function(){})
    	});
    	$('#driver_btn').click(function(e){
            $('#driver').show(1000, 'easeOutBounce', function(){})
            $('#recaptcha').show(1000, 'easeOutBounce', function(){})
            $('#user').hide(1000, 'easeOutBounce', function(){})
        });
    	
    	//일반회원 약속 하기 / 약속 확인 제이 꽈리
        $('#reservation_btn').click(function(e){
            $('#reservation_ck').hide(1000, 'easeOutBounce', function(){})
            $('#reservation').show(1000, 'easeOutBounce', function(){})
           /*  $('#reservation_ck').hide(1000, 'easeOutBounce', function(){}) */
        });

    	$('#r_c_button0').click(function(e){

    	});

        //일반회원 약속하기 내부 제이 꽈리
        $('#reservation_ck_btn').click(function(e){

            $('#reservation').hide(1000, 'easeOutBounce', function(){})

            var login = $('#login').val();
            var user_no = <c:out value="${user.user_no}" default="-1"/>;

            if(login != undefined ){
                alert('로그인 후 약속 확인해주세요');
                return false;
            }

            $.ajax({
                url : '/reservationCheck'
                ,data: {'user_no' : user_no}
                ,type: 'post'
                ,dataType: 'json'
                ,beforeSend: function(){
                    $('#reservation_ck_content').append($('<div/>', {
                        id: 'load',
                        class: 'loading_image'
                    }));
                    $(".loading_image").delay(300).fadeOut("slow");
                }
                ,success : function(result) {
                    if(result.length == 0){
                        alert('약속 내역이 없습니다! 약속 후 이용해주세요');
                        location.href="/";
                    } else {
                        alert('총 ' + result.length + '개의 약속 내역이 있습니다.');
                        $('.reservation_ck_content').remove();

                        for(var i=0; i < result.length; i++){
                        	$('#reservation_ck_content').append($('<tr>', {
                                class: 'reservation_ck_content',
                                id: 'aaa'+i,
                            }));
                        	if(result[i].r_ck == 1){
                                $('#aaa'+i).append($('<td class="reservation_ck_content" style="color:#5CB95C">드라이버 약속 완료</td>'));
                            } else if(result[i].r_ck == 0) {
                                $('#aaa'+i).append($('<td class="reservation_ck_content" style="color:#f1ae4d">드라이버 약속 대기중</td>'))
                            } else {
                                $('#aaa'+i).append($('<td/>', {
                                    class: 'reservation_ck_content',
                                    text: '약속 오류 발생'
                                }))
                            }
                            $('#aaa'+i).append($('<td/>', {
                            	class: 'reservation_ck_content',
                                id: 'r_date_'+i,
                                text: result[i].r_date
                            }));
                            $('#aaa'+i).append($('<td/>', {
                            	class: 'reservation_ck_content',
                                id: 'r_time_'+i,
                                text: result[i].r_time
                            }));
                            $('#aaa'+i).append($('<td/>', {
                            	class: 'reservation_ck_content',
                                id: 'r_start_place_'+i,
                                text: result[i].r_start_place
                            }));
                            $('#aaa'+i).append($('<td/>', {
                            	class: 'reservation_ck_content',
                                id: 'r_arrival_place_'+i,
                                text: result[i].r_arrival_place
                            }));
                            
                            $('tr').mouseenter(function (e) {
                                $(this).css('background', '#BEE6F1');
                            });
                            $('tr').mouseleave(function (e) {
                                $(this).css('background', '');
                            });
                            
                            let r_idx = result[i].r_idx;
                            $('#aaa'+i).append($('<button/>', {class: 'btn btn-danger btn-sm', type:'button',  id: 'r_c_button'+i,  text: '약속삭제',
                                action: '/reservationdelete/?r_idx='+result[i].r_idx}));
                            $('#r_c_button'+i).click(function(e){
                                console.log(i);
                                var chk = confirm('정말로 삭제하시겠습니까?');
                                /* $('#aaa'+i-1).hide(); */
                                if (chk == true) {
                                	$(this).parent().remove();
                                    	$.ajax({
                                            url : '/reservationdelete'
                                            ,data: {'r_idx' : r_idx}
                                            ,type: 'post'
                                            ,dataType: 'json'
                                            ,beforeSend: function(){
                                                $('#reservation_ck_content').append($('<div/>', {
                                                    id: 'load',
                                                    class: 'loading_image'
                                                }));
                                                $(".loading_image").delay(300).fadeOut("slow");
                                            }
                                        })
                                        .done( function(data, textStatus, xhr ){

                                        });
                                
                                 }
                                $('#reservation_ck_content').append("</tr>");
                            });
                        }

/*                  error:function(request,status,error){
                    alert("code:"+request.status+"\n"+"error:"+error);
                } */
                    }
                }
            });
            $('#reservation_ck').show(1000, 'easeOutBounce', function(){})
            /* $('#reservation').hide(1000, 'easeOutBounce', function(){}) */
        });


        // 약속하기 관련 미로그인시 예외상황 처리
        $('#reservationForm').submit(function(){
            var login = $('#login').val();

            if(login != undefined ){
                alert('로그인 후 약속해주세요');
                return false;
            }

        });

        //자주묻는질문 제이꽈리
    	$('#q_1').click(function(e){
    		if($('#ico_ar_1').html() == '▼'){
    			$('#n_1').show(1000, 'easeOutBounce', function(){})
                $('#ico_ar_1').html('▲');
    		}
    		else{
    			$('#n_1').hide(1000, 'easeOutBounce', function(){})
                $('#ico_ar_1').html('▼');
    		}
        });
           
    	
    	$('#q_2').click(function(e){
            if($('#ico_ar_2').html() == '▼'){
                $('#n_2').show(1000, 'easeOutBounce', function(){})
                $('#ico_ar_2').html('▲');
            }
            else{
                $('#n_2').hide(1000, 'easeOutBounce', function(){})
                $('#ico_ar_2').html('▼');
            }
        });
    	
    	$('#q_3').click(function(e){
            if($('#ico_ar_3').html() == '▼'){
                $('#n_3').show(1000, 'easeOutBounce', function(){})
                $('#ico_ar_3').html('▲');
            }
            else{
                $('#n_3').hide(1000, 'easeOutBounce', function(){})
                $('#ico_ar_3').html('▼');
            }
        });
    	
    	$('#q_4').click(function(e){
            if($('#ico_ar_4').html() == '▼'){
                $('#n_4').show(1000, 'easeOutBounce', function(){})
                $('#ico_ar_4').html('▲');
            }
            else{
                $('#n_4').hide(1000, 'easeOutBounce', function(){})
                $('#ico_ar_4').html('▼');
            }
        });
    	
    	//일반_회원가입 내부 제이 꽈리
    	$('#checkuserid').click(function(e){
            var user_id = $('#user_id').val();
            var regex = /^[A-Za-z0-9+]{4,16}$/;
            
            if(user_id=="" || user_id==null){
            	alert("아이디를 입력해주세요.");
				return false;
            }
            else if(!regex.test(user_id)){
            	alert("영문,숫자,4~16자리로 가입해주세요");
				return false;
            }
            
            
            
            $.ajax({
                 url : '/user/checkuserid'
                ,data: {'user_id' :  user_id }      // 사용하는 경우에는 { data1:'test1', data2:'test2' }
                ,type: 'get'       // get, post
                ,timeout: 30000    // 30초
                ,dataType: 'json'  // text, html, xml, json, jsonp, script
            })
            .done( function(data, textStatus, xhr ){
                // 통신이 성공적으로 이루어졌을 때 이 함수를 타게 된다.
                if(data === 1 ){
                    alert('이미 사용중인 아이디 입니다!');
                }
                else{
                    alert('사용 가능한 아이디 입니다!');
                    $('#submit_btn').attr('disabled', false);
                    $('#signUpForm  input').prop('disabled', false);

                }
            });
            
            
            $('#confirm').focusout(function(e){
                // 패스워드 동일 여부 체크
                if ($('input:password[id="user_pw"]').val() === $('input:password[id="confirm"]').val() ) {
                    return true;
               }
                else{
                    alert('패스워드가 다릅니다.\n다시 비밀번호를 설정해주세요.');
                    return false;
               }
            });
            


    
            $('#req_input').keyup( function (e) {
                if( $(this).val() !== '') {
                    $(this).next('label').remove();
                }
        });
    });
    	//드라이브_회원가입 내부 제이 꽈리
        $('#d_checkuserid').click(function(e){
            var d_user_id = $('#d_user_id').val();
    
			var regex = /^[A-Za-z0-9+]{4,16}$/;
            
            if(d_user_id=="" || d_user_id==null){
            	alert("아이디를 입력해주세요.");
				return false;
            }
            else if(!regex.test(d_user_id)){
            	alert("영문,숫자,4~16자리로 가입해주세요");
				return false;
            }
            
            $.ajax({
                 url : '/user/checkuserid'
                ,data: {'user_id' :  d_user_id }      // 사용하는 경우에는 { data1:'test1', data2:'test2' }
                ,type: 'get'       // get, post
                ,timeout: 30000    // 30초
                ,dataType: 'json'  // text, html, xml, json, jsonp, script
            })
            .done( function(data, textStatus, xhr ){
                // 통신이 성공적으로 이루어졌을 때 이 함수를 타게 된다.
                if(data === 1 ){
                    alert('이미 사용중인 아이디 입니다!');
                }
                else{
                    alert('사용 가능한 아이디 입니다!');
                    $('#d_submit_btn').attr('disabled', false);
                    $('#d_signUpForm  input').prop('disabled', false);
                }
            });
            $('#d_confirm').focusout(function(e){

                // 패스워드 동일 여부 체크
                if ($('input:password[id="d_user_pw"]').val() === $('input:password[id="d_confirm"]').val() ) {
                    // 서브밑 호출 : form 의 action 이 실행됨
                    return true;
                }
                else{
                    alert('패스워드가 다릅니다.\n다시 비밀번호를 설정해주세요.');
                    return false;
                }
                
            });


            $('#req_input').keyup( function (e) {
                if( $(this).val() !== '') {
                    $(this).next('label').remove();
                }
        });
    });
    	
    	//회원 정보 수정 and 탈퇴 제이 꽈리
            $('#user_change_btn').click(function(e){
                $('#user_change').show(1000, 'easeOutBounce', function(){})
                $('#user_delete').hide(1000, 'easeOutBounce', function(){})
            });
            $('#user_delete_btn').click(function(e){
                $('#user_delete').show(1000, 'easeOutBounce', function(){})
                $('#user_change').hide(1000, 'easeOutBounce', function(){})
            });

        //드라이브 검색
            $('#reservationPositionSearch').click(function(e){
                let searchPlace = $('#searchPlace').val();
                let reservationPositon = $('#reservationPosition').val();
                var user_no = <c:out value="${user.user_no}" default="-1"/>;
                $.ajax({
                    url : '/d_reservationPositionSearch'
                    ,data: {'searchPlace' : searchPlace, 'reservationPositon' : reservationPositon}
                    ,type: 'post'
                    ,dataType: 'json'
                    ,beforeSend: function(){
                        $('#d_reservation_content').append($('<div/>', {
                            id: 'load',
                            class: 'loading_image'
                        }));
                        $(".loading_image").delay(400).fadeOut("slow");
                    }
                    ,success : function(result) {
                        if(result.length == 0){
                            alert('검색 내역이 없습니다!');
                        } else {
                            console.log(result);
                            $('.d_reservation_content').remove();

                            for(var i=0; i < result.length; i++){
                                $('#d_reservation_content').append($('<tr>', {
                                    class: 'd_reservation_content',
                                    id: 'aaa'+i,
                                }));
                                $('#aaa'+i).append($('<td/>', {
                                    class: 'd_reservation_content',
                                    text: result[i].r_date
                                }));
                                $('#aaa'+i).append($('<td/>', {
                                    class: 'd_reservation_content',
                                    id: 'r_date_'+i,
                                    text: result[i].r_time
                                }));
                                $('#aaa'+i).append($('<td/>', {
                                    class: 'd_reservation_content',
                                    id: 'r_time_'+i,
                                    text: result[i].r_start_place
                                }));
                                $('#aaa'+i).append($('<td/>', {
                                    class: 'd_reservation_content',
                                    id: 'r_start_place_'+i,
                                    text: result[i].r_arrival_place
                                }));
                                $('#aaa'+i).append($('<button/>', {
                                	class: 'btn btn-success btn-xs',
                                	type: 'button',
                                    id: 'd_r_button'+i,
                                    text: '약속받기',
                                }));
                                
                                $('tr').mouseenter(function (e) {
                                    $(this).css('background', '#BEE6F1');
                                });
                                $('tr').mouseleave(function (e) {
                                    $(this).css('background', '');
                                });
                                
                                let r_idx = result[i].r_idx;
                                $('#d_r_button'+i).click(function(e){
                                    var chk = confirm('약속을 받으시겠습니까?');
                                    /* $('#aaa'+i-1).hide(); */
                                    if (chk == true) {
                                        $(this).parent().remove();
                                        $.ajax({
                                            url : '/receive'
                                            ,data: {'user_no' : user_no, 'r_idx' : r_idx}
                                            ,type: 'post'
                                            ,dataType: 'json'
                                            ,success : function(result) {
                                                alert('약속 받기에 성공하였습니다.');
                                            }
                                            ,error : function(e){
                                                alert(e.responseText);
                                            }
                                        })
                                    }
                                    $('#d_reservation_content').append("</tr>");
                                });
                            }

                            /*                  error:function(request,status,error){
                                                alert("code:"+request.status+"\n"+"error:"+error);
                                            } */
                        }
                    }
                });
            });

        //드라이브 약속받기/약속확인
            $('#d_reservation_btn').click(function(e){
                $('#d_reservation').show(1000, 'easeOutBounce', function(){})
                
                
                var login = $('#login').val();
                var user_no = <c:out value="${user.user_no}" default="-1"/>;
                
                $.ajax({
                url : '/d_reservationCheck'
                ,type: 'post'
                ,dataType: 'json'
                ,beforeSend: function(){
                    $('#d_reservation_content').append($('<div/>', {
                        id: 'load',
                        class: 'loading_image'
                    }));
                    $(".loading_image").delay(400).fadeOut("slow");
                }
                ,success : function(result) {
                    if(result.length == 0){
                        alert('약속 내역이 없습니다!');
                        location.href="/";
                    } else {
                        $('.d_reservation_content').remove();

                        for(var i=0; i < result.length; i++){
                            $('#d_reservation_content').append($('<tr>', {
                                class: 'd_reservation_content',
                                id: 'aaa'+i,
                            }));
                            $('#aaa'+i).append($('<td/>', {
                                class: 'd_reservation_content',
                                text: result[i].r_date
                            }));
                            $('#aaa'+i).append($('<td/>', {
                                class: 'd_reservation_content',
                                id: 'r_date_'+i,
                                text: result[i].r_time
                            }));
                            $('#aaa'+i).append($('<td/>', {
                                class: 'd_reservation_content',
                                id: 'r_time_'+i,
                                text: result[i].r_start_place
                            }));
                            $('#aaa'+i).append($('<td/>', {
                                class: 'd_reservation_content',
                                id: 'r_start_place_'+i,
                                text: result[i].r_arrival_place
                            }));
                            $('#aaa'+i).append($('<button/>', {
                            	 class: 'btn btn-success btn-xs',
                                 type: 'button', 
                                 id: 'd_r_button'+i,  
                                 text: '약속받기',
                                }));
                            
                            
                            $('tr').mouseenter(function (e) {
                                $(this).css('background', '#BEE6F1');
                            });
                            $('tr').mouseleave(function (e) {
                                $(this).css('background', '');
                            });
                            
                            let r_idx = result[i].r_idx;
                            $('#d_r_button'+i).click(function(e){
                                var chk = confirm('약속을 받으시겠습니까?');
                                /* $('#aaa'+i-1).hide(); */
                                if (chk == true) {
                                    $(this).parent().remove();
                                        $.ajax({
                                            url : '/receive'
                                            ,data: {'user_no' : user_no, 'r_idx' : r_idx}
                                            ,type: 'post'
                                            ,dataType: 'json'
                                            ,beforeSend: function(){
                                                $('#d_reservation_content').append($('<div/>', {
                                                    id: 'load',
                                                    class: 'loading_image'
                                                }));
                                                $(".loading_image").delay(300).fadeOut("slow");
                                            }
                                            ,success : function(result) {
                                            }
                                            ,error : function(e){
                                                alert(e.responseText);
                                            }
                                        })
                                 }
                                $('#d_reservation_content').append("</tr>");
                            });
                        }

/*                  error:function(request,status,error){
                    alert("code:"+request.status+"\n"+"error:"+error);
                } */
                    }
                }
            });
                
                
                
                $('#s_d_reservation').show(1000, 'easeOutBounce', function(){})
                $('#d_reservation_ck').hide(1000, 'easeOutBounce', function(){})
            });
            $('#d_reservation_ck_btn').click(function(e){


                $('#d_reservation_ck').show(1000, 'easeOutBounce', function(){})
                $('#s_d_reservation').hide(200, 'easeOutBounce', function(){})
                $('#d_reservation').hide(200, 'easeOutBounce', function(){})

                $.ajax({
                    url : '/d_findMyReservation'
                    ,type: 'post'
                    ,dataType: 'json'
                    ,beforeSend: function(){
                        $('#d_reservation_ck_content').append($('<div/>', {
                            id: 'load',
                            class: 'loading_image'
                        }));
                        $(".loading_image").delay(300).fadeOut("slow");
                    }
                    ,success : function(result) {
                        if(result.length == 0){
                            alert('약속 내역이 없습니다! 약속을 받으시고 이용해주세요!');
                            location.href="/";
                        } else {
                            $('.d_reservation_ck_content').remove();
                            console.log(result);
                            for(var i=0; i < result.length; i++){
                                $('#d_reservation_ck_content').append($('<tr>', {
                                    class: 'd_reservation_ck_content',
                                    id: 'my_aaa'+i,
                                }));
                                $('#my_aaa'+i).append($('<td/>', {
                                    class: 'd_reservation_ck_content',
                                    id: 'my_r_date_'+i,
                                    text: result[i].r_date
                                }));
                                $('#my_aaa'+i).append($('<td/>', {
                                    class: 'd_reservation_ck_content',
                                    id: 'my_r_time_'+i,
                                    text: result[i].r_time
                                }));
                                $('#my_aaa'+i).append($('<td/>', {
                                    class: 'd_reservation_ck_content',
                                    id: 'my_r_start_place_'+i,
                                    text: result[i].r_start_place
                                }));
                                $('#my_aaa'+i).append($('<td/>', {
                                    class: 'd_reservation_ck_content',
                                    id: 'my_r_arrival_place_'+i,
                                    text: result[i].r_arrival_place
                                }));
                                $('#my_aaa'+i).append($('<td/>', {
                                    class: 'd_reservation_ck_content',
                                    id: 'my_user_phone'+i,
                                    text: result[i].user_phone
                                }));
                                $('#my_aaa'+i).append($('<button/>', {
                                	class: 'btn btn-danger btn-sm', 
                                	type:'button',
                                    id: 'my_d_r_button'+i,
                                    text: '약속취소',
                                }));
                                
                                
                                $('tr').mouseenter(function (e) {
                                    $(this).css('background', '#BEE6F1');
                                });
                                $('tr').mouseleave(function (e) {
                                    $(this).css('background', '');
                                });
                                
                                let r_idx = result[i].r_idx;
                                $('#my_d_r_button'+i).click(function(e){
                                    var chk = confirm('약속을 취소 하시겠습니까?');
                                    if (chk == true) {
                                        $(this).parent().remove();
                                        $.ajax({
                                            url : '/d_receiveCancel'
                                            ,data: {'r_idx' : r_idx}
                                            ,type: 'post'
                                            ,dataType: 'json'
                                            ,beforeSend: function(){
                                                $('#d_reservation_ck_content').append($('<div/>', {
                                                    id: 'load',
                                                    class: 'loading_image'
                                                }));
                                                $(".loading_image").delay(300).fadeOut("slow");
                                            }
                                            ,success : function(result) {
                                            }
                                            ,error : function(e){
                                                alert(e.responseText);
                                            }
                                        })
                                    }
                                    $('#d_reservation_content').append("</tr>");
                                });
                            }

                            /*                  error:function(request,status,error){
                                                alert("code:"+request.status+"\n"+"error:"+error);
                                            } */
                        }
                    }
                });

            });
        


        $('#u_confirm').focusout(function(e){

            // 패스워드 동일 여부 체크
            if ($('input:password[id="u_user_pw"]').val() === $('input:password[id="u_confirm"]').val() ) {
                // 서브밑 호출 : form 의 action 이 실행됨
                return true;
            }
            else{
                alert('패스워드가 다릅니다.\n다시 비밀번호를 설정해주세요.');
                return false;
            }
        });
        
                    

    });

    </script>
    
    <jsp:include page="footer.jsp" />
</body>

</html>
