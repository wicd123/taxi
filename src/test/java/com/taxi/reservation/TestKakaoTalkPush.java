package com.taxi.reservation;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml")
public class TestKakaoTalkPush {

    @RequestMapping(value="/kakaoLogin", method = {RequestMethod.POST, RequestMethod.GET})
    public String kakaoLogin(@RequestParam("code")String code, Model model){
        System.out.println("code: " + code);
        getAccessToken(code); // 토큰값 확인
        return "home";
    }

    public void getAccessToken(String code){
        final String RequestUrl = "https://kauth.kakao.com/oauth/token";

        final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
        postParams.add(new BasicNameValuePair("grant_type", "authorization_code"));
        postParams.add(new BasicNameValuePair("client_id", "bda53bc9a3fa6ede16a790719e2af4a0"));    // REST API KEY
        postParams.add(new BasicNameValuePair("redirect_uri", "http://localhost:8080/kakaoLogin"));    // 리다이렉트 URI
        postParams.add(new BasicNameValuePair("code", code));    // 로그인 과정중 얻은 code 값

        final HttpClient client = HttpClientBuilder.create().build();
        final HttpPost post = new HttpPost(RequestUrl);

        try {
            post.setEntity(new UrlEncodedFormEntity(postParams));
            final HttpResponse response = client.execute(post);
            final int responseCode = response.getStatusLine().getStatusCode();

            System.out.println("\nSending 'POST' request to URL : " + RequestUrl);
            System.out.println("Post parameters : " + postParams);
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

            Object obj=JSONValue.parse(content.toString());
            JSONObject finalResult=(JSONObject)obj;
            System.out.println("access_token : " + finalResult.get("access_token").toString());
            System.out.println("refresh_token : " + finalResult.get("refresh_token").toString());
            System.out.println("expires_in : " + finalResult.get("expires_in").toString());

            sendSelfMessage(finalResult.get("access_token").toString()); // 유저인포 확인

        } catch (Exception e){
            e.printStackTrace();
        }

    }


    public void sendSelfMessage(String access_token){
        final String RequestUrl = "https://kapi.kakao.com/v2/api/talk/memo/default/send";

        final HttpClient client = HttpClientBuilder.create().build();
        final HttpPost post = new HttpPost(RequestUrl);

        final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
        JSONObject objSub3 = new JSONObject();
        objSub3.put("article_id", "test");
        objSub3.put("comment_id", "test");
        objSub3.put("comment_preview", "testmessage");

        JSONObject objContent2 = new JSONObject();
        objContent2.put("web_url","http://www.daum.net");
        objContent2.put("mobile_web_url","http://m.daum.net");
        objContent2.put("android_execution_params","contentId=100");
        objContent2.put("ios_execution_params","contentId=100");

        JSONObject objContent = new JSONObject();
        objContent.put("title","맛집을 찾아서");
        objContent.put("description","맛집 맛집해!");
        objContent.put("image_url","http://mud-kage.kakao.co.kr/dn/NTmhS/btqfEUdFAUf/FjKzkZsnoeE4o19klTOVI1/openlink_640x640s.jpg");
        objContent.put("image_width", 640);
        objContent.put("image_height", 640);
        objContent.put("link", objContent2);

        JSONObject objbuttons3 = new JSONObject();
        objbuttons3.put("android_execution_params","contentId=100");
        objbuttons3.put("ios_execution_params","contentId=100");

        JSONObject objbuttons2 = new JSONObject();
        objbuttons2.put("web_url","http://www.daum.net");
        objbuttons2.put("mobile_web_url","http://m.daum.net");

        JSONObject objbuttons = new JSONObject();
        objbuttons.put("title","웹으로 열기");
        objbuttons.put("link", objbuttons2);

        JSONObject objSub = new JSONObject();
        objSub.put("object_type","feed");
        objSub.put("content",objContent);

        postParams.add(new BasicNameValuePair("template_object", objSub.toString()));

        try {
            post.setHeader("Authorization", "Bearer "+access_token);
            post.setEntity(new UrlEncodedFormEntity(postParams, "utf-8"));
            final HttpResponse response = client.execute(post);
            final int responseCode = response.getStatusLine().getStatusCode();

            System.out.println("\nSending 'POST' request to URL : " + RequestUrl);
            System.out.println("Response Code : " + responseCode);
            System.out.println("Post parameters : " + postParams);

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
            System.out.println(finalResult);

        } catch (Exception e){
            e.printStackTrace();
        }

    }

//
//    public void getUserInfo(String access_token){
//        final String RequestUrl = "https://kapi.kakao.com/v1/user/me";
//
//        final HttpClient client = HttpClientBuilder.create().build();
//        final HttpPost post = new HttpPost(RequestUrl);
//
//        try {
//            post.setHeader("Authorization", "Bearer "+access_token);
//            final HttpResponse response = client.execute(post);
//            final int responseCode = response.getStatusLine().getStatusCode();
//
//            System.out.println("\nSending 'POST' request to URL : " + RequestUrl);
//            System.out.println("Response Code : " + responseCode);
//
//            //JSON 형태 반환값 처리
//            BufferedReader br = new BufferedReader(
//                    new InputStreamReader(
//                            (response.getEntity().getContent()), "utf-8")
//            );
//
//            StringBuilder content = new StringBuilder();
//            String line;
//            while (null != (line = br.readLine())) {
//                content.append(line);
//            }
//
//            Object obj=JSONValue.parse(content.toString());
//            JSONObject finalResult=(JSONObject)obj;
//            System.out.println(finalResult);
//
//            testPushAdd(finalResult.get("id").toString()); // 푸쉬 정보 확인
//
//        } catch (Exception e){
//            e.printStackTrace();
//        }
//
//    }

//    public void testPushAdd(String id){
//        final String RequestUrl = "https://kapi.kakao.com/v1/push/register";
//
//        final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
//        postParams.add(new BasicNameValuePair("uuid", id));
//        postParams.add(new BasicNameValuePair("device_id", "00000000-597a-5266-0000-000075b319f8"));
//        postParams.add(new BasicNameValuePair("push_type", "gcm"));
//        postParams.add(new BasicNameValuePair("push_token", "AAAALzR5_IM:APA91bE0pRbhZ8g41h5H_pvOSISP0nU1SSfzJLs5CXswIUKG04_swLm1NQkrNXQDTc-Ss7a5FJMrG8Nc3ecHz5qOlRfg7E4X29L7O9wa2zuEH4mbQcty_IWYdFWu6sa3fcRJCeFGSMds"));
//
//        final HttpClient client = HttpClientBuilder.create().build();
//        final HttpPost post = new HttpPost(RequestUrl);
//
//        try {
//            post.setHeader("Authorization", "KakaoAK 49b95c4013a6a89d07b5dd47a0f66694");
//            post.setEntity(new UrlEncodedFormEntity(postParams));
//
//            final HttpResponse response = client.execute(post);
//            final int responseCode = response.getStatusLine().getStatusCode();
//
//            System.out.println("\nSending 'POST' request to URL : " + RequestUrl);
//            System.out.println("Response Code : " + responseCode);
//            System.out.println("Post parameters : " + postParams);
//
//            //JSON 형태 반환값 처리
//            BufferedReader br = new BufferedReader(
//                    new InputStreamReader(
//                            (response.getEntity().getContent()), "utf-8")
//            );
//
//            StringBuilder content = new StringBuilder();
//            String line;
//            while (null != (line = br.readLine())) {
//                content.append(line);
//            }
//
//            System.out.println("Result : " + responseCode);
//            testPushList(id); // 등록한 토큰값 유저 조회
//
//        } catch (Exception e){
//            e.printStackTrace();
//        }
//    }
//
//    public void testPushList(String id){
//        final String RequestUrl = "https://kapi.kakao.com/v1/push/tokens";
//
//        final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
//        postParams.add(new BasicNameValuePair("uuid", id));
//
//        final HttpClient client = HttpClientBuilder.create().build();
//        final HttpPost post = new HttpPost(RequestUrl);
//
//        try {
//            post.setHeader("Authorization", "KakaoAK 49b95c4013a6a89d07b5dd47a0f66694");
//            post.setEntity(new UrlEncodedFormEntity(postParams));
//
//            final HttpResponse response = client.execute(post);
//            final int responseCode = response.getStatusLine().getStatusCode();
//
//            System.out.println("\nSending 'POST' request to URL : " + RequestUrl);
//            System.out.println("Response Code : " + responseCode);
//            System.out.println("Post parameters : " + postParams);
//
//            //JSON 형태 반환값 처리
//            BufferedReader br = new BufferedReader(
//                    new InputStreamReader(
//                            (response.getEntity().getContent()), "utf-8")
//            );
//
//            StringBuilder content = new StringBuilder();
//            String line;
//            while (null != (line = br.readLine())) {
//                content.append(line);
//            }
//
//            Object obj=JSONValue.parse(content.toString());
//            org.json.simple.JSONArray finalResult=(org.json.simple.JSONArray) obj;
//            System.out.println(finalResult);
//            testPushSend(id); // 토큰 확인 후 메세지 전송 확인;
//        } catch (Exception e){
//            e.printStackTrace();
//        }
//
//    }
//
//    public void testPushSend(String id){
//        final String RequestUrl = "https://kapi.kakao.com/v1/push/send";
//
//        final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
//        postParams.add(new BasicNameValuePair("uuids", "[\"" +id+ "\"]"));
//        JSONObject objSub3 = new JSONObject();
//        objSub3.put("article_id", "test");
//        objSub3.put("comment_id", "test");
//        objSub3.put("comment_preview", "testmessage");
//        JSONObject objSub2 = new JSONObject();
//        objSub2.put("custom_field",objSub3);
//        JSONObject objSub1 = new JSONObject();
//        objSub1.put("for_gcm",objSub2);
//        postParams.add(new BasicNameValuePair("push_message", objSub1.toString()));
//
//        final HttpClient client = HttpClientBuilder.create().build();
//        final HttpPost post = new HttpPost(RequestUrl);
//
//        try {
//            post.setHeader("Authorization", "KakaoAK 49b95c4013a6a89d07b5dd47a0f66694");
//            post.setEntity(new UrlEncodedFormEntity(postParams));
//
//            final HttpResponse response = client.execute(post);
//            final int responseCode = response.getStatusLine().getStatusCode();
//
//            System.out.println("\nSending 'POST' request to URL : " + RequestUrl);
//            System.out.println("Response Code : " + responseCode);
//            System.out.println("Post parameters : " + postParams);
//
//            //JSON 형태 반환값 처리
//            BufferedReader br = new BufferedReader(
//                    new InputStreamReader(
//                            (response.getEntity().getContent()), "utf-8")
//            );
//
//            StringBuilder content = new StringBuilder();
//            String line;
//            while (null != (line = br.readLine())) {
//                content.append(line);
//            }
//
//            Object obj=JSONValue.parse(content.toString());
//            JSONObject finalResult=(JSONObject) obj;
//
//        } catch (Exception e){
//            e.printStackTrace();
//        }
//
//    }

}
