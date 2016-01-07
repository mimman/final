create table tbluser(
   id    varchar2(50),
   name   varchar2(30),
   birth   date,
   email   varchar2(60),
   address   varchar2(100),
   nation   varchar2(40),
   phone   varchar2(30),
   password varchar2(30),
   mileage   number(10)

);
alter table article modify(img default null)

alter table tbluser add constraint pk_id primary key(id)
select * from tbluser
delete from TBLUSER where id= 'mimman2'
select * from tbluser where id='1' and password='1111111'

create table board(
	boardcd varchar2(20),
	boardnm varchar2(40) not null,
	constraint pk_board primary key(boardcd)
);
drop table board

select * from board

create table article(
	articleno number,
	boardcd varchar2(20),
	title varchar2(200) not null,
	boardpw varchar2(50),
	content varchar2(500),
	regdate date,
	hit number(5),
	dept number(5),
	img varchar2(20),
	writer varchar2(30),
	pos number,
	dept number
);
commit
alter table article add(pos number)
alter table article add(dept number)
alter table article add(writer varchar2(30))
commit
select * from article 
create sequence seq_article
delete from article
delete from article where articleno = 131
insert into article values(seq_article.nextval,'이벤트','두번째 이벤트','1111','테스트...',sysdate,0,0,0,'이종수')

delete from article where title='빠빠셍'

select * from article where boardcd='event' and title LIKE '%'||'답'||'%' order by pos asc,dept asc, articleno desc
select * from article where boardcd='event' and writer LIKE '%'||1||'%' order by pos asc,dept asc, articleno desc


update article set img='abc' where img is null

create table tblcomment(
commentno number primary key,
	articleno number not null,
	boardcd varchar2(20)not null,
	content varchar2(200)not null,
	writer varchar2(30) not null,
	pos number not null,
	dept number not null,
	regdate date not null
);

drop table tblcomment;
create sequence seq_com

select * from tblcomment
alter table reply add 
(
constraint fk_reply
foreign key(articleno) 
	references article(articleno)
	);


alter table tblcomment modify(regdate date not null)

CREATE TABLE reserve
(
   reserNum             NUMBER NOT NULL PRIMARY KEY,
   reserveCode          VARCHAR2(20) NULL,
   reserveLine          VARCHAR2(20) NULL,
   startCity            VARCHAR2(30) NULL,
   endCity              VARCHAR(30) NULL,
   startDate            DATE NULL,
   endDate              DATE NULL,
   exDate               DATE NULL,
   seat                 NUMBER NULL,
   num                  NUMBER NULL,
   airLine              VARCHAR2(30) NULL,
   adultTax             NUMBER NULL,
   childTax             NUMBER NULL,
   toddleTax            NUMBER NULL
);

CREATE SEQUENCE SEQ_RESERNUM;

select * from reserve