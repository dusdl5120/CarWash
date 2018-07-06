CREATE TABLE `notice_board` (
	`id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '일련번호',
	`title` VARCHAR(50) NOT NULL COMMENT '제목',
	`contents` VARCHAR(3000) NOT NULL COMMENT '내용',
	`cnt` INT(11) NULL DEFAULT '0' COMMENT '조회수',
	`registered_id` VARCHAR(20) NOT NULL COMMENT '등록자ID',
	`updated_id` VARCHAR(20) NULL DEFAULT NULL COMMENT '수정자ID',
	`registered_date` DATETIME NOT NULL COMMENT '등록일시',
	`updated_date` DATETIME NULL DEFAULT NULL COMMENT '수정일시',
	PRIMARY KEY (`id`)
)
COMMENT='공지사항테이블'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;


insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
insert into notice_board(title, contents, registered_id, registered_date) values('haha', 'melong', '1212', now());
