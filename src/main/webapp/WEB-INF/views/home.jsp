<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">


<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <jsp:include page="header.jsp" />
    <title>Squadfree - Free bootstrap 3 one page template</title>

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
            <a href="#service" class="btn btn-circle">
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
                        <h5>Print</h5>
                        <p id="q_1">질문질문<span id="ico_ar_1" >▼</span></p>
                        <p id="n_1" style="display:none" >답변답변</p>
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
                        <h5>Web Design</h5>
                        <p id="q_2">질문질문<span id="ico_ar_2">▼</span></p>
                        <p id="n_2" style="display:none" >답변답변</p>
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
                        <h5>Photography</h5>
                        <p id="q_3">질문질문<span id="ico_ar_3">▼</span></p>
                        <p id="n_3" style="display:none">답변답변</p>
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
                        <h5>Cloud System</h5>
                        <p id="q_4">질문질문<span id="ico_ar_4">▼</span></p>
                        <p id="n_4" style="display:none">답변답변</p>
                    </div>
                </div>
                </div>
            </div>
        </div>      
        </div>
    </section>
    <!-- /Section: services -->
    

    <!-- Section: contact -->
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
        <div class="col-lg-8">
            <div class="boxed-grey">
                
                
                <div id="sendmessage">Your message has been sent. Thank you!</div>
                <div id="errormessage"></div>
                
                <form id="signUpForm"  action="register" method="post" role="form" class="contactForm">
                <div class="row" id="user" style="display:none">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="user_id">
                                아이디</label>
                            <input type="text" name="user_id" class="form-control" id="user_id" placeholder="아이디 입력"  />
                            <input type="button" class="btn btn-skin pull-left"  value="아이디 중복 조회" id="checkuserid"/><br>
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <label for="user_passwd">
                                비밀번호</label>
                            <div class="form-group">
                                <input type="password" disabled="disabled" class="form-control" name="user_pw" id="req_input" placeholder="비밀번호 입력" />
                                <div class="validation"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_passwd_ck">
                                비밀번호 확인</label>
                            <input type="password" disabled="disabled" class="form-control" name="confirm" id="req_input" placeholder="비밀번호 확인"  />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <label for="email">
                                이메일</label>
                            <div class="form-group">
                                <input type="email" disabled="disabled" class="form-control" name="user_email" id="req_input" placeholder="이메일 입력" />
                                <div class="validation"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="phone">
                                핸드폰</label>
                            <div class="form-group">
                                <input type="text"  disabled="disabled" class="form-control" name="user_phone"  id=req_input placeholder="핸드폰 입력" />
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
                        
                        
                        <div class="col-md-12">
                              <input type="submit" class="btn btn-skin pull-center"  value="회원가입" id = "submit_btn"/>
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
                            <input type="text" name="user_id" class="form-control" id="d_user_id" placeholder="아이디 입력"  />
                            <input type="button" class="btn btn-skin pull-left"  value="아이디 중복 조회" id="d_checkuserid"/><br>
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <label for="user_passwd">
                                비밀번호</label>
                            <div class="form-group">
                                <input type="password" class="form-control" disabled="disabled" name="user_pw" id="d_req_input" placeholder="비밀번호 입력" />
                                <div class="validation"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_passwd_ck">
                                비밀번호 확인</label>
                            <input type="password" class="form-control" name="confirm" disabled="disabled" id="d_req_input" placeholder="비밀번호 확인"  />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <label for="user_email">
                                이메일</label>
                            <div class="form-group">
                                <input type="email" class="form-control" name="user_email" disabled="disabled" id="d_req_input" placeholder="이메일 입력" />
                                <div class="validation"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_phone">
                                핸드폰</label>
                            <div class="form-group">
                                <input type="text" class="form-control" name="user_phone" disabled="disabled" id="d_req_input" placeholder="핸드폰 입력" />
                                <div class="validation"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_carnum">
                                차번호</label>
                            <input type="text" name="user_carnum" class="form-control" disabled="disabled" id="d_req_input" placeholder="차번호입력(ex:00차0000)"  />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <label for="gener">
                                성별</label>
                              <input type="radio" disabled="disabled" value="남"   name="user_gender" checked="checked" /> <span class="up">남</span>&nbsp;&nbsp; 
                              <input type="radio" disabled="disabled" value="여"  name="user_gender" /> <span class="up">여</span>
                            <div class="validation"></div>
                        </div>
                        <div class="col-md-12">
                            <button type="button" class="btn btn-skin pull-center" id="d_submit_btn">
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
            </div>
        </div>
        
        <div class="col-lg-4">
            <div class="widget-contact">
                <h5>Main Office</h5>
                
                <address>
                  <strong>Squas Design, Inc.</strong><br>
                  Tower 795 Folsom Ave, Beautiful Suite 600<br>
                  San Francisco, CA 94107<br>
                  <abbr title="Phone">P:</abbr> (123) 456-7890
                </address>

                <address>
                  <strong>Email</strong><br>
                  <a href="mailto:#">email.name@example.com</a>
                </address>  
                <address>
                  <strong>We're on social networks</strong><br>
                        <ul class="company-social">
                            <li class="social-facebook"><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <li class="social-twitter"><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                            <li class="social-dribble"><a href="#" target="_blank"><i class="fa fa-dribbble"></i></a></li>
                            <li class="social-google"><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                        </ul>   
                </address>                  
            
            </div>  
        </div>
    </div>  

        </div>
    </section>
    <!-- /Section: contact -->
    
    
    <!--  예약하기 입니다 -->
    <section id="contact" class="home-section text-center">
        <div class="heading-contact">
            <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="wow bounceInDown" data-wow-delay="0.4s">
                    <div class="section-heading">
                    <h2>예약하기</h2>
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
            <div class="boxed-grey">
                
                
                <div id="sendmessage">Your message has been sent. Thank you!</div>
                <div id="errormessage"></div>
                <form id="r_signUpForm"  action="register" method="post" role="form" class="contactForm">
                <div class="row" id="reservation" style="display:none">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="user_id">
                                날짜</label>
                            <input type="date" name="r_date" class="form-control" id="r_date" placeholder="날짜 입력"  />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <label for="user_passwd">
                                시간</label>
                            <div class="form-group">
                                <input type="time" class="form-control" name="r_time" id="r_time" placeholder="시간 입력" />
                                <div class="validation"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_passwd_ck">
                                출발 장소</label>
                            <input type="text"  class="form-control" name="r_start_place" id="r_start_place" placeholder="출발 장소 입력"  />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <label for="email">
                                도착 장소</label>
                            <div class="form-group">
                                <input type="text" class="form-control" name="r_arrival_place" id="r_arrival_place" placeholder="도착 장소 입력" />
                                <div class="validation"></div>
                            </div>
                        </div>
                        <div class="col-md-12">
                              <input type="submit" class="btn btn-skin pull-center"  value="예약하기" id = "reservation_submit_btn"/>
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
            </div>
        </div>
        
        
        
        
        
    </div>  

        </div>
    </section>
    <!--  예약하기 끝입니다. -->
    
    <!-- Core JavaScript Files -->
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.easing.min.js"></script> 
    <script src="resources/js/jquery.scrollTo.js"></script>
    <script src="resources/js/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="resources/js/custom.js"></script>
    <script src="resources/js/jquery-1.10.2.js"></script>
    <script src="resources/js/jquery.easing.1.3.js"></script>
    <script src="resources/js/ajaxsetup.js"></script>
    <script src="resources/js/MyApp.board.js"></script>
    
    <script>
    $(document).ready(function (e){
    	//회원가입 외부 제이꽈리
    	$('#user_btn').click(function(e){
    		$('#user').show(1000, 'easeOutBounce', function(){})
    		$('#driver').hide(1000, 'easeOutBounce', function(){})
    	});
    	$('#driver_btn').click(function(e){
            $('#driver').show(1000, 'easeOutBounce', function(){})
            $('#user').hide(1000, 'easeOutBounce', function(){})
        });
    	
    	//일반회원 약속 하기 / 약속 확인 제이 꽈리
        $('#reservation_btn').click(function(e){
            $('#reservation').show(1000, 'easeOutBounce', function(){})
           /*  $('#reservation_ck').hide(1000, 'easeOutBounce', function(){}) */
        });
        $('#reservation_ck_btn').click(function(e){
            $('#reservation_ck').show(1000, 'easeOutBounce', function(){})
            /* $('#reservation').hide(1000, 'easeOutBounce', function(){}) */
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
                    alert('존재하는 id');
                }
                else{
                    alert('가능한 id');
                    $('#signUpForm  input').prop('disabled', false);
                }
            });
            
            
            $('#submit_btn').click(function(e){
                
                // 패스워드 동일 여부 체크
                if ($('input:password[name="user_pw"]').val() === $('input:password[name="confirm"]').val() ) {
                  // 서브밑 호출 : form 의 action 이 실행됨
                  $('#signUpForm').submit();
                return true;
               }
                else{
                    alert('패스워드가 다릅니다');
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
                    alert('존재하는 id');
                }
                else{
                    alert('가능한 id');
                    $('#d_signUpForm  input').prop('disabled', false);
                }
            });
            $('#d_submit_btn').click(function(e){
                
                // 패스워드 동일 여부 체크
                if ($('input:password[name="d_user_pw"]').val() === $('input:password[name="d_confirm"]').val() ) {
                  // 서브밑 호출 : form 의 action 이 실행됨
                  $('#d_signUpForm').submit();
                return true;
               }
                else{
                    alert('패스워드가 다릅니다');
                    return false;
            }
            });
    
            $('#req_input').keyup( function (e) {
                if( $(this).val() !== '') {
                    $(this).next('label').remove();
                }
        });
    });
    	
      //일반 회원 예약하기 제이 꽈리
            $('#reservation_submit_btn').click(function(e){
                  $('#r_signUpForm').submit();
                return true;
            });
    	
    });
    	
    	
    
    
    
    </script>
    
    <jsp:include page="footer.jsp" />
</body>

</html>
