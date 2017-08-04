
-- user
CREATE TABLE user (
	user_id  VARCHAR(10)   NOT NULL, -- user_id
	user_pw VARCHAR(15)   NOT NULL,     -- user_pw
	user_email VARCHAR(40)   NOT NULL,     -- user_email
	user_phone VARCHAR(10)   NOT NULL,     -- user_phone
	user_gender ENUM('M','F') NOT NULL,     -- user_gender
	user_carnum VARCHAR(12)   NULL,     -- user_carnum
	user_lv INTEGER(2)    NOT NULL      -- user_lv
);

-- reservation
CREATE TABLE reservation (
	r_idx INTEGER(10) NOT NULL, -- r_idx
	user_id  VARCHAR(10) NOT NULL, -- user_id
	r_date DATE        NOT NULL,     -- r_date
	r_time TIME        NOT NULL,     -- r_time
	r_start_place VARCHAR(30) NOT NULL,     -- r_start_place
	r_arrival_place VARCHAR(30) NOT NULL      -- r_arrival_place
);


