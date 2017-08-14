package com.taxi.reservation.model;

import java.util.Date;

public class ModelUser {
    
    private Integer user_no    = null; // INT(10) UNSIGNED NOT NULL AUTO_INCREMENT
    private String  user_id    = "";   // VARCHAR(50) NOT NULL
    private String  user_pw     = "";   // VARCHAR(100) NOT NULL
    private String  user_email    = "";   // VARCHAR(30) NULL DEFAULT NULL
    private String  user_phone      = "";   // VARCHAR(30) NULL DEFAULT NULL
    private String  user_gender    = "";   // VARCHAR(20) NULL DEFAULT NULL
    private String user_carnum  = null; // TINYINT(1) NULL DEFAULT '1'
    private String user_check_kakao = null;
    private String user_refresh_token = null;
    private Integer user_lv = null;   // VARCHAR(40) NULL DEFAULT NULL
    public Integer getUser_no() {
        return user_no;
    }
    public void setUser_no(Integer user_no) {
        this.user_no = user_no;
    }
    public String getUser_id() {
        return user_id;
    }
    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
    public String getUser_pw() {
        return user_pw;
    }
    public void setUser_pw(String user_pw) {
        this.user_pw = user_pw;
    }
    public String getUser_email() {
        return user_email;
    }
    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }
    public String getUser_phone() {
        return user_phone;
    }
    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }
    public String getUser_gender() {
        return user_gender;
    }
    public void setUser_gender(String user_gender) {
        this.user_gender = user_gender;
    }
    public String getUser_carnum() {
        return user_carnum;
    }
    public void setUser_carnum(String user_carnum) {
        this.user_carnum = user_carnum;
    }
    public String getUser_check_kakao() {
        return user_check_kakao;
    }
    public void setUser_check_kakao(String user_check_kakao) {
        this.user_check_kakao = user_check_kakao;
    }
    public String getUser_refresh_token() {
        return user_refresh_token;
    }
    public void setUser_refresh_token(String user_refresh_token) {
        this.user_refresh_token = user_refresh_token;
    }
    public Integer getUser_lv() {
        return user_lv;
    }
    public void setUser_lv(Integer user_lv) {
        this.user_lv = user_lv;
    }
    @Override
    public String toString() {
        return "ModelUser [user_no=" + user_no + ", user_id=" + user_id
                + ", user_pw=" + user_pw + ", user_email=" + user_email
                + ", user_phone=" + user_phone + ", user_gender=" + user_gender
                + ", user_carnum=" + user_carnum + ", user_lv=" + user_lv + "]";
    }
    public ModelUser(Integer user_no, String user_id, String user_pw,
            String user_email, String user_phone, String user_gender,
            String user_carnum, Integer user_lv) {
        super();
        this.user_no = user_no;
        this.user_id = user_id;
        this.user_pw = user_pw;
        this.user_email = user_email;
        this.user_phone = user_phone;
        this.user_gender = user_gender;
        this.user_carnum = user_carnum;
        this.user_lv = user_lv;
    }
    public ModelUser() {
        super();
    }
    public ModelUser(String id, String pw) {
        super();
        this.user_id = id;
        this.user_pw = pw;
    }
    
    
}
