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
alter table article Modify (img varchar2(100));
commit
alter table article add(pos number)
alter table article add(dept number)
alter table article add(writer varchar2(30))
alter table article drop(boardpw)
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
delete from tblcomment
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
   endCity              VARCHAR2(30) NULL,
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

select * from reserve
CREATE SEQUENCE SEQ_RESERNUM;
alter table reserve add(startTime varchar2(15));
alter table reserve add(endTime varchar2(15));
alter table reserve add(aircraftCode varchar2(30));
alter table reserve rename column reserveNum to reserNum
alter table reserve drop(comebackDate);
select distinct airline from reserve

select DISTINCT airline,resernum,reservecode,reserveline,startcity,endcity,startdate,enddate,exdate,seat,num,adulttax,childtax,toddletax,starttime,endtime,aircraftcode from reserve where reserveLine='편도' and startCity='제주' and endCity='대구'
select DISTINCT airline,resernum from reserve where reserveLine='편도' and startCity='제주' and endCity='대구'
SELECT * from reserve where rowid in (select max(rowid) from reserve group by airline) and reserveLine='편도' and startCity='제주' and endCity='대구'

select * from reserve where airLine='대한항공' and startCity='제주'
		and endCity='대구' and startdate='2016-1-1' and seat >= 6
		
drop table userReservation
create table userReservation(
	comReserveNum number not null primary key, 
	reserveNum Number NOT NULL,
	reserveLine varchar2(50) not null,
	airLine varchar2(50) not null,
	startCity varchar2(30) not null,
	startDate varchar2(30) not null,
	startTime varchar2(30) not null,
	endTime varchar2(30) not null,
	adult number not null,
	child number not null,
	toddle number not null,
	adultTax number not null,
	childTax number not null,
	toddleTax number not null,
	id varchar2(50) not null,
	tax number not null,
	mileage number not null,
	startCity2 varchar2(30) default null,
	startDate2 varchar2(30) default null,
	startTime2 varchar2(30) default null,
	endCity2 varchar2(30) default null,
	endDate2 varchar2(30) default null,
	endTime2 varchar2(30) default null
);
create sequence seq_userReserve;
select * from userReservation
delete from userReservation
alter table userReservation add(comReserveNum number);
alter table userReservation add(startCity varchar2(30));
alter table userReservation add(endCity varchar2(30));
alter table userReservation modify (endCity default null)
alter table userReservation modify(startTime varchar(30))
alter table userReservation modify(endTime varchar(30))

select comReserveNum from userReservation where id='1' and startDate='2016-01-01' and startTime='8:10'
and reserveNum='44'

SELECT * from reserve where rowid in (select max(rowid) from reserve where reserveLine='왕복' group by airline) and reserveLine='왕복'
SELECT * from reserve where reserveLine='왕복'

select distinct airline from reserve where reserveLine='왕복'

select distinct airline,resernum,reservecode,reserveline,startcity,endcity,startdate,enddate,exdate,seat,num,adulttax,childtax,toddletax,starttime,endtime,aircraftcode from reserve where reserveLine='왕복'
SELECT * from reserve where rowid in (select max(rowid) from reserve where reserveLine='편도' group by airline) and reserveLine='편도' and startCity='제주' and endCity='청주' and startDate ='2016-01-01'
SELECT * from reserve where reserveLine='편도'

select * from (select ROW_NUMBER() OVER (PARTITION BY airLine ORDER BY airLine)
as num from reserve) where num>2
select * from reserve where reserveLine='왕복' group by airLine having count(*) > 0

select distinct airline,resernum,reservecode,reserveline,startcity,endcity,startdate,enddate,exdate,seat,num,adulttax,childtax,toddletax,starttime,endtime,aircraftcode from reserve where rownum =1 and reserveLine='왕복';

select distinct airline,resernum from reserve where reserveLine='왕복'

SELECT * from reserve where rowid in (select max(rowid) from reserve  where reserveLine='왕복' group by airline) and reserveLine='왕복' and startCity='제주' and endCity='청주'
and startDate = '2016-01-01' and endDate = '2016-01-01'
	
		
select * from reserve where rowid in (select max(rowid) from reserve  where reserveLine='왕복' group by airline) and reserveLine='왕복' and startCity='제주' and endCity='청주' and startDate ='2016-01-01' and endDate='2016-01-01'
select * from reserve where endDate = '2016-01-01'
select * from reserve where reserveLine ='왕복' and startCity='제주'
select comReserveNum from userReservation where reserveNum='44'
alter table userReservation add(reserveLine varchar2(20));