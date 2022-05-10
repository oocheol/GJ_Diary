create table member(
m_id varchar2(20),
m_pw varchar2(20) not null,
b_date date,
tel varchar2(20) not null,
c_nick varchar2(20) not null,
c_id varchar2(20),
exp number(20),
lev number(8),
constraint member_m_id_pk primary key (m_id),
constraint member_c_id_fk foreign key (c_id)
references character_img (c_id)
);

select * from member;

create table diary(
d_id varchar2(20),
d_date date,
diary varchar2(600),
POSITIVE_S1 varchar2(600),
POSITIVE_S2 varchar2(600),
POSITIVE_S3 varchar2(600),
diary_rate number(20),
S1_rate number(20),
S2_rate number(20),
S3_rate number(20),
m_id varchar2(20) not null,
constraint diary_d_id_pk primary key (d_id),
constraint diary_m_id_fk foreign key (m_id)
references member (m_id)
);

select * from DIARY

create table character_img(
c_id varchar2(20),
img1 varchar2(100),
img2 varchar2(100),
img3 varchar2(100),
img4 varchar2(100),
img5 varchar2(100),
constraint character_c_id_pk primary key (c_id)
);

drop table character_img
drop table member
drop table diary

create sequence mem_num_seq
	start with 1
	increment by 1
	maxvalue 999999
	nocycle
	nocache
	
create sequence diary_num_seq
	start with 1
	increment by 1
	maxvalue 999999
	nocycle
	nocache