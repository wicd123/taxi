package com.taxi.reservation.model;

import java.sql.Time;
import java.util.Date;

public class ModelReservation {
    
    private int r_idx;
    private int user_no;
    private String r_date;
    private String r_time;
    private String r_start_place;
    private String r_arrival_place;
    private int r_ck;
    public int getR_idx() {
        return r_idx;
    }
    public void setR_idx(int r_idx) {
        this.r_idx = r_idx;
    }
    public int getUser_no() {
        return user_no;
    }
    public void setUser_no(int user_no) {
        this.user_no = user_no;
    }
    public String getR_date() {
        return r_date;
    }
    public void setR_date(String r_date) {
        this.r_date = r_date;
    }
    public String getR_time() {
        return r_time;
    }
    public void setR_time(String r_time) {
        this.r_time = r_time;
    }
    public String getR_start_place() {
        return r_start_place;
    }
    public void setR_start_place(String r_start_place) {
        this.r_start_place = r_start_place;
    }
    public String getR_arrival_place() {
        return r_arrival_place;
    }
    public void setR_arrival_place(String r_arrival_place) {
        this.r_arrival_place = r_arrival_place;
    }
    public int getR_ck() {
        return r_ck;
    }
    public void setR_ck(int r_ck) {
        this.r_ck = r_ck;
    }

    
}
