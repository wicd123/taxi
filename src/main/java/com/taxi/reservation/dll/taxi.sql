
CREATE TABLE `user2` (
	`user_no` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`user_id` VARCHAR(10) NOT NULL,
	`user_pw` VARCHAR(15) NOT NULL,
	`user_email` VARCHAR(40) NOT NULL,
	`user_phone` VARCHAR(20) NOT NULL,
	`user_gender` VARCHAR(10) NOT NULL,
	`user_carnum` VARCHAR(12) NULL DEFAULT NULL,
	`user_check_kakao` VARCHAR(10) NULL DEFAULT NULL,
	`user_refresh_token` VARCHAR(100) NULL DEFAULT NULL,
	`user_lv` INT(2) NULL DEFAULT NULL,
	PRIMARY KEY (`user_no`),
	UNIQUE INDEX `user_id` (`user_id`)
)
;



-- reservation
CREATE TABLE reservation (
    r_idx INT UNSIGNED    NOT NULL AUTO_INCREMENT, -- r_idx
    user_no  INTEGER(10)  NULL, -- user_id
    r_date DATE        NOT NULL,     -- r_date
    r_time TIME        NOT NULL,     -- r_time
    r_start_place VARCHAR(30) NOT NULL,     -- r_start_place
    r_arrival_place VARCHAR(30) NOT NULL,      -- r_arrival_place
    r_ck INTEGER(2) NOT NULL,
    d_user_no INTEGER(2) null
    
    ,PRIMARY KEY(r_idx)
);

INSERT INTO user (user_id,      user_pw,    user_email,    user_phone,    user_gender,     user_carnum,    user_lv)
        VALUES ("goall2", "1234", "w23@email.com", "010-7777-7777", "남" , "23차2555", 1);
        
select user_id, user_email, user_phone, user_gender, user_carnum, user_lv, user_no 
              from user
             WHERE  user_id = goall2
              AND user_pw = 1234
        
              
              INSERT INTO reservation (user_no,      r_date,    r_time,    r_start_place,    r_arrival_place,     r_ck,    d_user_no)
        VALUES (5, "2007-05-02", "15:00:00", "서울시 노원구", "서울시 강남구" , 0, 6)
        INSERT INTO reservation (user_no,      r_date,    r_time,    r_start_place,    r_arrival_place,     r_ck,    d_user_no)
        VALUES (5, "2007-05-02", "15:00:00", "서울시 도봉구", "서울시 강남구" , 0, 6)
        INSERT INTO reservation (user_no,      r_date,    r_time,    r_start_place,    r_arrival_place,     r_ck,    d_user_no)
        VALUES (5, "2007-05-02", "15:00:00", "의정부시 신곡동", "서울시 강남구" , 0, 6)
        INSERT INTO reservation (user_no,      r_date,    r_time,    r_start_place,    r_arrival_place,     r_ck,    d_user_no)
        VALUES (5, "2007-05-02", "15:00:00", "부산시 이수동", "서울시 강남구" , 0, 6)
        INSERT INTO reservation (user_no,      r_date,    r_time,    r_start_place,    r_arrival_place,     r_ck,    d_user_no)
        VALUES (5, "2007-05-02", "15:00:00", "인천시 구원동", "서울시 강남구" , 0, 6)
        INSERT INTO reservation (user_no,      r_date,    r_time,    r_start_place,    r_arrival_place,     r_ck,    d_user_no)
        VALUES (5, "2007-05-02", "15:00:00", "충천남도 당진", "서울시 강남구" , 0, 6)

        
        


