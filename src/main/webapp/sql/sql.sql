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
insert into article values(seq_article.nextval,'�̺�Ʈ','�ι�° �̺�Ʈ','1111','�׽�Ʈ...',sysdate,0,0,0,'������')

delete from article where title='������'

select * from article where boardcd='event' and title LIKE '%'||'��'||'%' order by pos asc,dept asc, articleno desc
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
drop table reserve
CREATE TABLE reserve
(
   reserNum             NUMBER NOT NULL PRIMARY KEY,
   reserveCode          VARCHAR2(20) NULL,
   reserveLine          VARCHAR2(20) NULL,
   startCity            VARCHAR2(30) NULL,
   endCity              VARCHAR2(30) NULL,
   startDate            VARCHAR2(30) NULL,
   endDate              VARCHAR2(30) NULL,
   startTime			VARCHAR2(30) NULL,
   endTime				VARCHAR2(30) NULL,
   exDate               DATE NULL,
   seat                 NUMBER NULL,
   num                  NUMBER NULL,
   airLine              VARCHAR2(30) NULL,
   adultTax             NUMBER NULL,
   childTax             NUMBER NULL,
   toddleTax            NUMBER NULL,
   aircraftCode			varchar2(30),
    reserNum2             NUMBER  NULL ,
   reserveCode2          VARCHAR2(20) NULL,
   reserveLine2          VARCHAR2(20) NULL,
   startCity2            VARCHAR2(30) NULL,
   endCity2              VARCHAR2(30) NULL,
   startDate2            VARCHAR2(30) NULL,
   endDate2              VARCHAR2(30) NULL,
   startTime2			VARCHAR2(30) NULL,
   endTime2				VARCHAR2(30) NULL,
   exDate2               DATE NULL,
   seat2                 NUMBER NULL,
   num2                  NUMBER NULL,
   airLine2              VARCHAR2(30) NULL,
   adultTax2             NUMBER NULL,
   childTax2             NUMBER NULL,
   toddleTax2            NUMBER NULL,
   aircraftCode2			varchar2(30) 
);
commit
select * from reserve
CREATE SEQUENCE SEQ_RESERNUM;
alter table reserve add(startTime varchar2(15));
alter table reserve add(endTime varchar2(15));
alter table reserve add(aircraftCode varchar2(30));
alter table reserve rename column reserveNum to reserNum
alter table reserve drop(comebackDate);
select distinct airline from reserve

select DISTINCT airline,resernum,reservecode,reserveline,startcity,endcity,startdate,enddate,exdate,seat,num,adulttax,childtax,toddletax,starttime,endtime,aircraftcode from reserve where reserveLine='����' and startCity='����' and endCity='�뱸'
select DISTINCT airline,resernum from reserve where reserveLine='����' and startCity='����' and endCity='�뱸'
SELECT * from reserve where rowid in (select max(rowid) from reserve group by airline) and reserveLine='����' and startCity='����' and endCity='�뱸'

select * from reserve where airLine='�����װ�' and startCity='����'
		and endCity='�뱸' and startdate='2016-1-1' and seat >= 6
		
drop table userReservation
create table userReservation(
	comReserveNum number not null primary key, 
	reserveNum Number NOT NULL,
	reserveLine varchar2(50) not null,
	airLine varchar2(50) not null,
	startCity varchar2(30) not null,
	startDate varchar2(30) not null,
	startTime varchar2(30) not null,
	endCity varchar2(30) not null,
	endDate varchar2(30)  null,
	endTime varchar2(30)  null,
	adult number not null,
	child number not null,
	toddle number not null,
	adultTax number not null,
	childTax number not null,
	toddleTax number not null,
	id varchar2(50) not null,
	tax number not null,
	mileage number not null,
	
	comReserveNum2 number  null , 
	reserveNum2 Number  NULL,
	startCity2 varchar2(30)  null,
	startDate2 varchar2(30)  null,
	startTime2 varchar2(30)  null,
	endCity2 varchar2(30)  null,
	endDate2 varchar2(30)  null,
	endTime2 varchar2(30)  null,
	adult2 number  null,
	child2 number  null,
	toddle2 number  null,
	adultTax2 number  null,
	childTax2 number  null,
	toddleTax2 number  null,
	tax2 number  null,
	mileage2 number  null
);
select * from reserve;
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

SELECT * from reserve where rowid in (select max(rowid) from reserve where reserveLine='�պ�' group by airline) and reserveLine='�պ�'
SELECT * from reserve where reserveLine='�պ�'

select distinct airline from reserve where reserveLine='�պ�'

select distinct airline,resernum,reservecode,reserveline,startcity,endcity,startdate,enddate,exdate,seat,num,adulttax,childtax,toddletax,starttime,endtime,aircraftcode from reserve where reserveLine='�պ�'
SELECT * from reserve where rowid in (select max(rowid) from reserve where reserveLine='����' group by airline) and reserveLine='����' and startCity='����' and endCity='û��' and startDate ='2016-01-01'
SELECT * from reserve where reserveLine='����'

select * from (select ROW_NUMBER() OVER (PARTITION BY airLine ORDER BY airLine)
as num from reserve) where num>2
select * from reserve where reserveLine='�պ�' group by airLine having count(*) > 0

select distinct airline,resernum,reservecode,reserveline,startcity,endcity,startdate,enddate,exdate,seat,num,adulttax,childtax,toddletax,starttime,endtime,aircraftcode from reserve where rownum =1 and reserveLine='�պ�';

select distinct airline,resernum from reserve where reserveLine='�պ�'

SELECT * from reserve where rowid in (select max(rowid) from reserve  where reserveLine='�պ�' group by airline) and reserveLine='�պ�' and startCity='����' and endCity='û��'
and startDate = '2016-01-01' and endDate = '2016-01-01'

SELECT * from reserve where rowid in (select max(rowid) from reserve  where reserveLine='�պ�' group by airline) and reserveLine='�պ�' and startCity='����' and endCity='����'
and startDate = '2016-01-01' and endDate = '2016-01-01'
	
		
select * from reserve where rowid in (select max(rowid) from reserve  where reserveLine='�պ�' group by airline) and reserveLine='�պ�' and startCity='�뱸' and endCity='����' and startDate ='2016-01-01' and endDate='2016-01-01'
select * from reserve where endDate = '2016-01-01'
select * from reserve where reserveLine ='�պ�' and startCity='����'
select comReserveNum from userReservation where reserveNum='44'
alter table userReservation add(reserveLine varchar2(20));

SELECT * from reserve where rowid in (select max(rowid) from reserve  where reserveLine='�պ�' group by airline) and reserveLine='�պ�' and startCity='����'
		and endCity='����' and startDate='2016-01-01' and startDate2='2016-01-03'
delete from reserve where resernum = 110
SELECT * from reserve where reserveLine='�պ�' and startCity='����'
		and endCity='����' and startDate='2016-01-01' and startDate2='2016-01-03'
		
		SELECT * from reserve where rowid in (select max(rowid) from reserve  where reserveLine='�պ�' group by airline) and reserveLine='�պ�' and startCity='����'
		and endCity='����' and startDate='2016-01-01' and startDate2='2016-01-03' 
		
	select * from (select airline count(*) cnt from reserve group by airline where cnt >1
	commit
select * from reserve where  rowid in(select max(rowid) from reserve where reserveline='�պ�' group by airline)

	select * from reserve where  rowid in(select max(rowid) from reserve where reserveline='�պ�' group by airline)
	and startCity='����'
		and endCity='û��' and startDate='2016-01-01' and endDate='2016-01-01'
		
		select * from reserve where airLine=#{airLine} and reserveLine=#{reserveLine} and startCity=#{startCity}
		and endCity=#{endCity} and startDate=#{startDate} and endDate=#{endDate} and seat <![CDATA[>=]]> #{adult}+#{child}+#{toddle}
		
		select * from reserve where airLine='üũ�װ�' and reserveLine='�պ�' and startCity='����'
		and endCity='û��' and startDate='2016-01-01' and endDate='2016-01-01' and seat >= 1