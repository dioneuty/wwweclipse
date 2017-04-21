drop table guest04;
CREATE TABLE guest04(
  `sabun` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(19) NULL DEFAULT '이름없음',
  `sub` VARCHAR(6) NULL DEFAULT '제목없음',
  `nalja` DATE NULL,
  `pay` INT NULL DEFAULT 0,
  PRIMARY KEY (`sabun`)
);

insert into testdb.guest04 (name,sub,nalja,pay) values ('user01','제목없음',now(),1000);
insert into testdb.guest04 (name,sub,nalja,pay) values ('user03','제목없음',now(),1500);
insert into testdb.guest04 (name,sub,nalja,pay) values ('user02','제목없음',now(),1200);
insert into testdb.guest04 (name,sub,nalja,pay) values ('user01','제목없음',now(),1600);
insert into testdb.guest04 (name,sub,nalja,pay) values ('user01','제목없음',now(),1600);

select * from testdb.guest04;
