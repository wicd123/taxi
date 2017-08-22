package com.taxi.captcha;

import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Date;

public class APIExamCaptchaNkey {

    public static void main(String[] args) {
        String clientId = "0I0MPaLswEEWYSbQqxbX";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "0FNWm6MyqI";//애플리케이션 클라이언트 시크릿값";
        try {
            String code = "0"; // 키 발급시 0,  캡차 이미지 비교시 1로 세팅
            String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code;
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }

            br.close();
            //System.out.println(response.toString());

            //response의 스트링을 json 형태로 mapping 한다.
            Object obj= JSONValue.parse(response.toString());
            JSONObject finalResult=(JSONObject)obj;

            // json 객체로 변환된 key 값의 value 값만을 추출한다
            String key = finalResult.get("key").toString();
            System.out.println("captcha key 값은 [" + key + "] 입니다.");
            System.out.println("해당 키값을 가지고 이미지를 생성하겠습니다.");

            captchaImage(key);

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void captchaImage(String key){
        String clientId = "0I0MPaLswEEWYSbQqxbX";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "0FNWm6MyqI";//애플리케이션 클라이언트 시크릿값";
        try {
            //String key = "CAPTCHA_KEY"; // https://openapi.naver.com/v1/captcha/nkey 호출로 받은 키값
            String apiURL = "https://openapi.naver.com/v1/captcha/ncaptcha.bin?key=" + key;
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                InputStream is = con.getInputStream();
                int read = 0;
                byte[] bytes = new byte[1024];
                // 랜덤한 이름으로 파일 생성
                String tempname = Long.valueOf(new Date().getTime()).toString();
                File f = new File("tempname" + ".jpg");
                f.createNewFile();
                OutputStream outputStream = new FileOutputStream(f);
                while ((read =is.read(bytes)) != -1) {
                    outputStream.write(bytes, 0, read);
                }
                System.out.println("Captcha 파일이 [" + f.getAbsolutePath() + "]에 생성되었습니다.");
                System.out.println("해당 그림 파일을 열고 그림에 있는 문자열을 입력해주세요.");
                br = new BufferedReader(new InputStreamReader(System.in));
                System.out.println("문자열 입력 > ");
                String result = null;
                try{
                    result = br.readLine();
                } catch (Exception e){
                    e.printStackTrace();
                }
                System.out.println("입력값은 [" + result + "] 입니다. 문자열을 대조하러 가보겠습니다.");
                captchaNkeyResult(key, result);
                is.close();
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
                String inputLine;
                StringBuffer response = new StringBuffer();
                while ((inputLine = br.readLine()) != null) {
                    response.append(inputLine);
                }
                br.close();
                System.out.println(response.toString());
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void captchaNkeyResult(String key, String value){
        String clientId = "0I0MPaLswEEWYSbQqxbX";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "0FNWm6MyqI";//애플리케이션 클라이언트 시크릿값";
        try {
            String code = "1"; // 키 발급시 0,  캡차 이미지 비교시 1로 세팅
            String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code +"&key="+ key + "&value="+ value;

            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
            //System.out.println(response.toString());

            //response의 스트링을 json 형태로 mapping 한다.
            Object obj= JSONValue.parse(response.toString());
            JSONObject finalResult=(JSONObject)obj;

            // json 객체로 변환된 key 값의 value 값만을 추출한다
            String result = finalResult.get("result").toString();

            if(result.equals("true")){
                System.out.println("축하드립니다. 문자열이 서로 잘 맞네요~");
                System.exit(0);
            } else {
                System.out.println("문자열이 서로 맞지 않습니다. 확인 후 다시 입력해주세요");
                System.exit(0);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}

