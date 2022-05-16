create table users
(
    us_id int primary key auto_increment,
    us_name varchar(32),
    us_email varchar(255),
    us_password varchar(255),
    us_picture varchar(255),
    us_sex int,
    us_pronoun int,
    us_is_active bool,
    us_time_create timestamp DEFAULT CURRENT_TIMESTAMP
);

create table adm
(
    adm_id int primary key auto_increment,
    adm_us_id int,
    adm_permission_lv int,
    adm_is_active bool,
    adm_time_create int
);

create table ban
(
    ban_id int primary key auto_increment,
    ban_user_id int,
    ban_admin int,
    ban_reason text,
    ban_time_create timestamp DEFAULT CURRENT_TIMESTAMP,
    ban_time_end timestamp DEFAULT CURRENT_TIMESTAMP,
    ban_is_active bool
);

create table post
(
    pos_id int primary key auto_increment,
    pos_topic varchar(255),
    pos_body text,
    pos_user_id int,
    pos_reactions int,
    pos_is_deleted bool,
    pos_comment_is_enabled bool,
    pos_time_create int
);

create table comment
(
    com_id int primary key auto_increment,
    com_body text,
    com_user_id int,
    com_is_deleted bool,
    com_reactions int,
    com_post int,
    com_sub int
);

create table sex
(
    sex_id int primary key auto_increment,
    sex_name varchar(255),
    sex_primary bool
);


create table pronoun
(
    pro_id int primary key auto_increment,
    pro_name varchar(255)
);

create table user_pronoun
(
    up_id int primary key auto_increment,
    up_us_id int,
    up_pro_id int
);




