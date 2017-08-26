<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    window.alert('${msg}');
    <c:choose>
        <c:when test="${status eq 'off'}">
            $("#kakao_alarm",opener.document).val("미사용중");
            $("#kakao_alarm_button",opener.document).html('사용하기').attr('class','btn btn-primary col-md-push-1 col-md-11 kakao_alarm_button')
                .attr('onclick', 'javascript:window.open(\'/kakaoJoin_add\',\'_blank\',\'left=50, top=50, width=800, height=600\')');
            $(".kakao_alarm",opener.document).attr('style','display:none');
            $("#user_check_kakao",opener.document).val("off");
        </c:when>
        <c:when test="${status eq 'on'}">
            $("#kakao_alarm",opener.document).val("사용중");
            $("#kakao_alarm_button",opener.document).html('사용 해제').attr('class','btn btn-danger col-md-push-1 col-md-11 kakao_alarm_button')
                .attr('onclick','javascript:window.open(\'/kakaoLogin?code=off\',\'_blank\',\'left=50, top=50, width=500, height=300\')')
            $(".kakao_alarm",opener.document).attr('style','padding: 0');
            $("#kakao_alarm2",opener.document).val('${kakao_user}');
            $("#user_check_kakao",opener.document).val("on");
        </c:when>
    </c:choose>
    self.close();
</script>