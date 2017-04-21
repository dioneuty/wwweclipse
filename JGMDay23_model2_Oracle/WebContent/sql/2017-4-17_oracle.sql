drop table guest04;
create table guest04(
	sabun number,
	name varchar2(60),
	sub varchar2(60),
	nalja date,
	pay number
);
drop sequence guest04_seq;
create Sequence guest04_seq start with 1000;

insert into guest04 values (guest04_seq.nextVal,'user01','제목없음',sysdate,1000);
insert into guest04 values (guest04_seq.nextVal,'user03','제목없음',sysdate,1500);
insert into guest04 values (guest04_seq.nextVal,'user02','제목없음',sysdate,1200);
insert into guest04 values (guest04_seq.nextVal,'user01','제목없음',sysdate,1600);
insert into guest04 values (guest04_seq.nextVal,'user03','제목없음',sysdate,2000);

select * from guest04;