package com.taxi.reservation.model;

import java.util.Date;

public class ModelReservation {
    
    private Integer r_idx    = null; // INT(10) UNSIGNED NOT NULL AUTO_INCREMENT
    private Integer  user_id    = null;   // VARCHAR(50) NOT NULL
    private String  user_pw     = "";   // VARCHAR(100) NOT NULL
    private String  user_email    = "";   // VARCHAR(30) NULL DEFAULT NULL
    private String  user_phone      = "";   // VARCHAR(30) NULL DEFAULT NULL
    private String  user_gender    = "";   // VARCHAR(20) NULL DEFAULT NULL
    private String user_carnum  = null; // TINYINT(1) NULL DEFAULT '1'
    private Integer  user_lv = null;   // VARCHAR(40) NULL DEFAULT NULL
    
}
