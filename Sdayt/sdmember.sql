show databases ;

use myschool;
use sys;
use sdmember;

show tables;

select * from 학생;
create index 성적 on 학생(주소);

alter table 학생 add column 성적 varchar(20) not null;
update 학생 set 성적=50 where 학생이름='최규성';
update 학생 set 성적=80 where 학생이름='최성우';
update 학생 set 성적=90 where 학생이름='이민태';
update 학생 set 성적=85 where 학생이름='장준홍';
update 학생 set 성적=70 where 학생이름='현석경';
update 학생 set 성적=75 where 학생이름='홍길동';
update 학생 set 성적=77 where 학생이름='정호경';
update 학생 set 성적=88 where 학생이름='정희영';
update 학생 set 성적=86 where 학생이름='박원장';

select * from 교수;
select * from 회원;

create database grades;

create table 성적(
	id char(20) not null,
    pass varchar(30) not null,
    학생명 varchar(20) not null,
    학년	varchar(20) not null,
    국어성적 varchar(20),
    영어성적  varchar(20),
    수학성적  varchar(20) not null,
    총점 varchar(50),
    평균 varchar(50),
    석차 varchar(50),
    primary key(id)
);


insert into 성적(id,pass,학생명,학년,국어성적,영어성적,수학성적,총점,평균,석차) values('ST01','1234','홍길동','4','80','80','70','230','183','2');
insert into 성적(id,pass,학생명,학년,국어성적,영어성적,수학성적,총점,평균,석차) values('ST02','1234','이순신','4','90','80','70','240','193','1');
insert into 성적(id,pass,학생명,학년,국어성적,영어성적,수학성적,총점,평균,석차) values('ST03','1234','강감찬','4','70','80','70','220','173','3');




create database sdmember;

drop database sdmember;

create table 회원(
	id char(20) not null,
    pass varchar(30) not null,
    name varchar(20) not null,
    year	varchar(20) not null,
    gender varchar(20)	not null,
    email  varchar(20) not null,
    phone  varchar(20) not null,
    primary key(id)
);

insert into 회원(id,pass,name,year,gender,email,phone) values('admin','1234','고현노','1995-09-10','남','dwa48613@naver.com','010-1564-7897');
insert into 회원(id,pass,name,year,gender,email,phone) values('ST01','1234','홍길동','1995-03-10','남','jis5302@naver.com','010-1564-7897');
insert into 회원(id,pass,name,year,gender,email,phone) values('ST02','1234','이순신','1995-05-10','남','jis5303@naver.com','010-1564-7897');
insert into 회원(id,pass,name,year,gender,email,phone) values('ST03','1234','강감찬','1995-09-10','남','jis5304@naver.com','010-1564-7897');
insert into 회원(id,pass,name,year,gender,email,phone) values('ST30','1234','고감찬','1995-09-10','남','jis5306@naver.com','010-1564-7897');
insert into 회원(id,pass,name,year,gender,email,phone) values('ST40','1234','임감찬','1995-09-10','남','jis5306@naver.com','010-1564-7897');
insert into 회원(id,pass,name,year,gender,email,phone) values('ST90','1234','촤고다','1995-09-10','남','jis5306@naver.com','010-1564-7897');

select * from 회원;


DELETE FROM 회원 WHERE id ='ST90';
DELETE FROM 회원 WHERE email ='48452';
DELETE FROM 회원 WHERE email ='489';
DELETE FROM 회원 WHERE id ='ST90';
DELETE FROM 회원 WHERE id ='ST90';
DELETE FROM 회원 WHERE id ='ST0411';

SHOW CREATE TABLE 회원;




