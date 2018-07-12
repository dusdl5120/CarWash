CREATE TABLE `admin_account` (
	`admin_id` VARCHAR(50) NOT NULL COMMENT '관리자아이디',
	`admin_passwd` VARCHAR(50) NOT NULL COMMENT '관리자비밀번호',
	`admin_name` VARCHAR(50) NOT NULL COMMENT '관리자이름',
	`admin_phone` VARCHAR(50) NOT NULL COMMENT '관리자휴대폰번호',
	`busin_place_name` VARCHAR(50) NULL DEFAULT NULL COMMENT '사업장명',
	`busin_place_code_name` VARCHAR(20) NULL DEFAULT NULL COMMENT '사업장업종명',
	`ceo_name` VARCHAR(20) NULL DEFAULT NULL COMMENT '대표자명',
	`carwash_type` VARCHAR(50) NULL DEFAULT NULL COMMENT '세차유형',
	`water_quality_permi_num` VARCHAR(80) NULL DEFAULT NULL COMMENT '수질허가번호',
	`road_name_addr` VARCHAR(300) NULL DEFAULT NULL COMMENT '소재지도로명주소',
	`busin_place_tele_num` VARCHAR(50) NULL DEFAULT NULL COMMENT '사업장전화번호',
	`closed_date` VARCHAR(50) NULL DEFAULT NULL COMMENT '휴무일',
	`registered_date` DATETIME NULL DEFAULT NULL COMMENT '등록일시',
	`updated_date` DATETIME NULL DEFAULT NULL COMMENT '수정일시',
	`registered_id` VARCHAR(50) NULL DEFAULT NULL COMMENT '등록자ID',
	`updated_id` VARCHAR(50) NULL DEFAULT NULL COMMENT '수정자ID',
	PRIMARY KEY (`admin_id`)
)
COMMENT='관리자계정테이블'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
