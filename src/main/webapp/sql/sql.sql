select * from tbluser

select * from tbluser where id='1' and password='1111111'

create table board(
	boardcd varchar2(20),
	boardnm varchar2(40) not null,
	constraint pk_board primary key(boardcd)
);

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
	writer varchar2(30)
);
alter table tbluser drop(writer)
alter table article add(writer varchar2(30))
commit
select * from article 
create sequence seq_article
delete from article
insert into article values(seq_article.nextval,'�̺�Ʈ','�ι�° �̺�Ʈ','1111','�׽�Ʈ...',sysdate,0,0,0,'������')