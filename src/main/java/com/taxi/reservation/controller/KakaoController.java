package com.taxi.reservation.controller;

import com.taxi.reservation.model.ModelUser;
import com.taxi.reservation.service.IServiceUser;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

@Controller
@SessionAttributes({"user","kakao_user"})
public class KakaoController {

    public static String access_token = null;
    public static String kakao_user_account = null;

    @Autowired
    IServiceUser usersvr;

    //이 메서드는 해당 컨트롤러로 접근하려는 모든 요청에 @ModelAttribute가 붙은 메서드의 리턴 값을 설정된 모델명으로 자동 포함해주는 역할을 담당해준다.
    // 물론 이미 동일한 이름의 모델이 생성되있다면 위의 메서드 값은 포함되지 않으며 오로지 설정한 모델명과 일치하는 객체가 존재하지 않는 경우에만
    // 메서드의 리턴 값을 서버의 응답과 함께 클라이언트에게 전송하는 역할을 담당한다.
    @ModelAttribute("user")
    public ModelUser mockUser(){
        ModelUser user = new ModelUser();
        return user;
    }

    @RequestMapping(value="/kakaoJoin")
    public String kakaoJoin(Model model){
        String msg = "카카오톡 알람 서비스를 위해 \\n카카오톡 연동을 가입시 1회 진행합니다. \\n카카오톡으로 가입시 자동 가입됩니다.";
        /*String url = "https://kauth.kakao.com/oauth/authorize?client_id=7285451cb5736d58585f95457b13681d&redirect_uri=http://localhost:8080/kakaoLogin&response_type=code";*/
        String url = "https://kauth.kakao.com/oauth/authorize?client_id=7285451cb5736d58585f95457b13681d&redirect_uri=http://wicd1234.cafe24.com/kakaoLogin&response_type=code";
        model.addAttribute("msg", msg);
        model.addAttribute("url", url);
        return "msg/msg";
    }

    @RequestMapping(value="/kakaoJoin_add")
    public String kakaoJoinAdd(Model model){
        String msg = "카카오톡 알람 서비스를 위해 \\n카카오톡 연동을 진행합니다.";
        String url = "https://kauth.kakao.com/oauth/authorize?client_id=7285451cb5736d58585f95457b13681d&redirect_uri=http://wicd1234.cafe24.com/kakaoLogin&response_type=code";
        model.addAttribute("msg", msg);
        model.addAttribute("url", url);
        return "msg/msg";
    }

    @RequestMapping(value="/kakaoLogin", method = {RequestMethod.POST, RequestMethod.GET})
    public String kakaoLogin(@RequestParam(value = "code", defaultValue = "unchecked")String code, Model model, @ModelAttribute("user") ModelUser user){

        if(code.equals("off")){
            String msg = "알림 서비스를 위한 카카오톡 연동이 해제 되었습니다.";
            model.addAttribute("msg",msg);
            model.addAttribute("status", "off");

            return "close/close";
        } else if(!code.equals("unchecked")) {

            user.setUser_refresh_token(this.getAccessToken(code)); // 토큰값 확인
            //System.out.println("user_refresh_token : " + user.getUser_refresh_token());
            String msg = "알림 서비스를 위한 카카오톡 연동이 완료 되었습니다.";
            model.addAttribute("msg",msg);
            String kakaoUser = this.getUserInfo();
            model.addAttribute("kakao_user",kakaoUser);
            model.addAttribute("status", "on");
            return "close/close";

        } else {

            String msg = "해당 카카오 이용내역은 필수 사항입니다. \\n동의하지 않으시면 알람 서비스를 이용하실 수 없습니다.";
            String url = "/";
            model.addAttribute("msg", msg);
            model.addAttribute("url", url);
            return "msg/msg";

        }
    }

    /** 카카오톡 알림을 위한 token 얻기
     * 해당 메소드를 통해 access, refresh 토큰을 얻는게 주 목적이다*/
    public String getAccessToken(String code){

        String result = null;

        final String RequestUrl = "https://kauth.kakao.com/oauth/token";

        final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
        postParams.add(new BasicNameValuePair("grant_type", "authorization_code"));
        postParams.add(new BasicNameValuePair("client_id", "7285451cb5736d58585f95457b13681d")); 
        /*postParams.add(new BasicNameValuePair("redirect_uri", "http://localhost:8080/kakaoLogin"));*/// REST API KEY
        postParams.add(new BasicNameValuePair("redirect_uri", "http://wicd1234.cafe24.com/kakaoLogin"));    // 리다이렉트 URI
        postParams.add(new BasicNameValuePair("code", code));    // 로그인 과정중 얻은 code 값

        final HttpClient client = HttpClientBuilder.create().build();
        final HttpPost post = new HttpPost(RequestUrl);

        try {
            post.setEntity(new UrlEncodedFormEntity(postParams));
            final HttpResponse response = client.execute(post);
            final int responseCode = response.getStatusLine().getStatusCode();

            System.out.println("\nSending 'getAccessToken' request to URL : " + RequestUrl);
            //System.out.println("Post parameters : " + postParams);
            System.out.println("Response Code : " + responseCode);

            //JSON 형태 반환값 처리
            BufferedReader br = new BufferedReader(
                    new InputStreamReader(
                            (response.getEntity().getContent())
                    )
            );

            StringBuilder content = new StringBuilder();
            String line;
            while (null != (line = br.readLine())) {
                content.append(line);
            }

            Object obj= JSONValue.parse(content.toString());
            JSONObject finalResult=(JSONObject)obj;
            //System.out.println("getAccessToken result : " + finalResult);
            access_token = finalResult.get("access_token").toString();
            result = finalResult.get("refresh_token").toString();
        } catch (Exception e){
            e.printStackTrace();
        }

        return result;

    }

    /** access_token을 이용하여 카카오톡 유저의 이메일 정보를 가져온다. */
    public String getUserInfo(){

        String result = null;

        final String RequestUrl = "https://kapi.kakao.com/v1/user/me";

        final HttpClient client = HttpClientBuilder.create().build();
        final HttpPost post = new HttpPost(RequestUrl);

        try {
            post.setHeader("Authorization","Bearer " + access_token);
            final HttpResponse response = client.execute(post);
            final int responseCode = response.getStatusLine().getStatusCode();

            System.out.println("\nSending 'getUserInfo' request to URL : " + RequestUrl);
            System.out.println("Response Code : " + responseCode);

            //JSON 형태 반환값 처리
            BufferedReader br = new BufferedReader(
                    new InputStreamReader(
                            (response.getEntity().getContent()), "UTF-8"
                    )
            );

            StringBuilder content = new StringBuilder();
            String line;
            while (null != (line = br.readLine())) {
                content.append(line);
            }

            Object obj= JSONValue.parse(content.toString());
            JSONObject finalResult=(JSONObject)obj;

            result = finalResult.get("kaccount_email").toString();

        } catch (Exception e){
            e.printStackTrace();
        }

        return result;

    }

    /** 카카오톡 나에게 알림 보내기
     * access_token이 필수적이다 해당 access_token의 유효기간은 약 6시간으로써 refresh_token으로 관리해줘야한다.*/
    public void sendSelfMessage(String r_date, String r_time){
        final String RequestUrl = "https://kapi.kakao.com/v2/api/talk/memo/default/send";

        final HttpClient client = HttpClientBuilder.create().build();
        final HttpPost post = new HttpPost(RequestUrl);

        final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
        final List<NameValuePair> postParams2 = new ArrayList<NameValuePair>();

        JSONObject objContent2 = new JSONObject();
        objContent2.put("web_url","/login");
        objContent2.put("mobile_web_url","/logout");

        JSONObject objContent = new JSONObject();
        objContent.put("title","예약내역 확인");
        objContent.put("description", r_date + "\n" + r_time +"에 예약이 있습니다.\n자세한 정보는 홈페이지에서 확인하세요.");
        objContent.put("image_url","http://ww4.hdnux.com/photos/41/31/51/8755791/5/920x920.jpg");
        objContent.put("link", objContent2);

        JSONObject objSub = new JSONObject();
        objSub.put("object_type","feed");
        objSub.put("content",objContent);
        objSub.put("button_title", "예약내역 확인");

        postParams.add(new BasicNameValuePair("template_object", objSub.toString()));

        try {
            post.setHeader("Authorization", "Bearer "+access_token);
            post.setEntity(new UrlEncodedFormEntity(postParams, "utf-8"));
            final HttpResponse response = client.execute(post);
            final int responseCode = response.getStatusLine().getStatusCode();

            System.out.println("\nSending 'sendSelfMessage' request to URL : " + RequestUrl);
            System.out.println("Response Code : " + responseCode);
           // System.out.println("Post parameters : " + postParams);

            //JSON 형태 반환값 처리
            BufferedReader br = new BufferedReader(
                    new InputStreamReader(
                            (response.getEntity().getContent()), "utf-8")
            );

            StringBuilder content = new StringBuilder();
            String line;
            while (null != (line = br.readLine())) {
                content.append(line);
            }

            Object obj=JSONValue.parse(content.toString());
            JSONObject finalResult=(JSONObject)obj;
            //System.out.println("sendSelfMessage result : " + finalResult);

        } catch (Exception e){
            e.printStackTrace();
        }

    }

    /** 카카오톡 알림을 위한 token 재획득
     * 해당 refresh_token을 재 획득함으로써 다시 access_token을 취득할 수 있다.*/
    public void kakaoRefreshToken(@ModelAttribute("user")ModelUser user){
        final String RequestUrl = "https://kauth.kakao.com/oauth/token";

        final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
        postParams.add(new BasicNameValuePair("grant_type", "refresh_token"));
        postParams.add(new BasicNameValuePair("client_id", "7285451cb5736d58585f95457b13681d"));    // REST API KEY
        postParams.add(new BasicNameValuePair("refresh_token", user.getUser_refresh_token()));

        final HttpClient client = HttpClientBuilder.create().build();
        final HttpPost post = new HttpPost(RequestUrl);

        try {
            post.setEntity(new UrlEncodedFormEntity(postParams));
            final HttpResponse response = client.execute(post);
            final int responseCode = response.getStatusLine().getStatusCode();

            System.out.println("\nSending 'kakaoRefreshToken' request to URL : " + RequestUrl);
            System.out.println("Response Code : " + responseCode);
            //System.out.println("PostParams : " + postParams);

            //JSON 형태 반환값 처리
            BufferedReader br = new BufferedReader(
                    new InputStreamReader(
                            (response.getEntity().getContent()), "utf-8")
            );

            StringBuilder content = new StringBuilder();
            String line;
            while (null != (line = br.readLine())) {
                content.append(line);
            }

            Object obj=JSONValue.parse(content.toString());
            JSONObject finalResult=(JSONObject)obj;

            System.out.println("access_token post : " + access_token);

            access_token = finalResult.get("access_token").toString();

            if(finalResult.get("refresh_token") != null){
                user.setUser_refresh_token(finalResult.get("refresh_token").toString());
                int result = usersvr.refreshToken(user);
                String msg = result > 0 ? "success" : "fail";
                System.out.println("refresh_token result : " + msg);
            }

            System.out.println("access_token present : " + access_token);

        } catch (Exception e){
            e.printStackTrace();
        }
    }

}