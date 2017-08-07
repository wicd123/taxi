
        
CREATE TABLE user (
   user_no INT UNSIGNED    NOT NULL AUTO_INCREMENT,
    user_id  VARCHAR(10)   NOT NULL, -- user_id
    user_pw VARCHAR(15)   NOT NULL,     -- user_pw
    user_email VARCHAR(40)   NOT NULL,     -- user_email
    user_phone VARCHAR(20)   NOT NULL,     -- user_phone
    user_gender VARCHAR(10) NOT NULL,     -- user_gender
    user_carnum VARCHAR(12)   NULL,     -- user_carnum
    user_lv INTEGER(2)    NOT NULL      -- user_lv
    
    , PRIMARY KEY(user_no)
    , UNIQUE KEY(user_id)
);

-- reservation
CREATE TABLE reservation (
    r_idx INTEGER(10) NOT NULL, -- r_idx
    user_no  INTEGER(10) NOT NULL, -- user_id
    r_date DATE        NOT NULL,     -- r_date
    r_time TIME        NOT NULL,     -- r_time
    r_start_place VARCHAR(30) NOT NULL,     -- r_start_place
    r_arrival_place VARCHAR(30) NOT NULL      -- r_arrival_place
    
    ,PRIMARY KEY(r_idx)
);

INSERT INTO user (user_id,      user_pw,    user_email,    user_phone,    user_gender,     user_carnum,    user_lv)
        VALUES ("goall2", "1234", "wicd123@email.com", "010-7777-7777", "남" , "23차2555", 1);
        
select user_id, user_email, user_phone, user_gender, user_carnum, user_lv, user_no 
              from user
             WHERE  user_id = goall2
              AND user_pw = 1234
        
        
        
CREATE TABLE user (
   user_no INT UNSIGNED    NOT NULL AUTO_INCREMENT,
    user_id  VARCHAR(10)   NOT NULL, -- user_id
    user_pw VARCHAR(15)   NOT NULL,     -- user_pw
    user_email VARCHAR(40)   NOT NULL,     -- user_email
    user_phone VARCHAR(20)   NOT NULL,     -- user_phone
    user_gender VARCHAR(10) NOT NULL,     -- user_gender
    user_carnum VARCHAR(12)   NULL,     -- user_carnum
    user_lv INTEGER(2)    NOT NULL      -- user_lv
    
    , PRIMARY KEY(user_no)
    , UNIQUE KEY(user_id)
);

