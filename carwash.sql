-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        5.7.21-log - MySQL Community Server (GPL)
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- carwash 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `carwash` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `carwash`;

-- 테이블 carwash.board_carwash 구조 내보내기
CREATE TABLE IF NOT EXISTS `board_carwash` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '일련번호',
  `title` varchar(50) NOT NULL COMMENT '제목',
  `contents` varchar(3000) NOT NULL COMMENT '내용',
  `file_name` varchar(100) DEFAULT NULL COMMENT '파일명',
  `save_route` varchar(200) DEFAULT NULL COMMENT '저장경로',
  `short_comment` varchar(100) DEFAULT NULL COMMENT '한줄평',
  `registered_id` varchar(20) NOT NULL COMMENT '등록자ID',
  `updated_id` varchar(20) DEFAULT NULL COMMENT '수정자ID',
  `registered_date` datetime NOT NULL COMMENT '등록일시',
  `updated_date` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='게시판테이블';

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 carwash.busin_place 구조 내보내기
CREATE TABLE IF NOT EXISTS `busin_place` (
  `code` varchar(50) NOT NULL COMMENT '사업장업종명일련번호',
  `busin_place_code_name` varchar(20) DEFAULT NULL COMMENT '사업장업종명',
  `registered_id` varchar(50) DEFAULT NULL COMMENT '등록자ID',
  `updated_id` varchar(50) DEFAULT NULL COMMENT '수정자ID',
  `registered_date` datetime DEFAULT NULL COMMENT '등록일시',
  `updated_date` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='사업장업종구분테이블';

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 carwash.carwash 구조 내보내기
CREATE TABLE IF NOT EXISTS `carwash` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '일련번호',
  `busin_place_name` varchar(50) DEFAULT NULL COMMENT '사업장명',
  `busin_place_code` varchar(50) DEFAULT NULL COMMENT '사업장업종명일련번호',
  `busin_place_code_name` varchar(20) DEFAULT NULL COMMENT '사업장업종명',
  `ceo_name` varchar(20) DEFAULT NULL COMMENT '대표자명',
  `carwash_type` varchar(50) DEFAULT NULL COMMENT '세차유형',
  `water_quality_permi_num` varchar(80) DEFAULT NULL COMMENT '수질허가번호',
  `road_name_addr` varchar(300) DEFAULT NULL COMMENT '소재지도로명주소',
  `busin_place_tele_num` varchar(50) DEFAULT NULL COMMENT '사업장전화번호',
  `closed_date` varchar(50) DEFAULT NULL COMMENT '휴무일',
  `registered_date` datetime DEFAULT NULL COMMENT '등록일시',
  `updated_date` datetime DEFAULT NULL COMMENT '수정일시',
  `registered_id` varchar(50) DEFAULT NULL COMMENT '등록자ID',
  `updated_id` varchar(50) DEFAULT NULL COMMENT '수정자ID',
  PRIMARY KEY (`id`),
  KEY `idx_carwash` (`busin_place_code`,`busin_place_name`),
  KEY `busin_place_code` (`busin_place_code`),
  CONSTRAINT `FK_carwash_busin_place` FOREIGN KEY (`busin_place_code`) REFERENCES `busin_place` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11396 DEFAULT CHARSET=utf8 COMMENT='세차장정보 테이블';

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 carwash.carwash_orig 구조 내보내기
CREATE TABLE IF NOT EXISTS `carwash_orig` (
  `사업장명` varchar(200) NOT NULL,
  `시도명` varchar(100) NOT NULL,
  `시군구명` varchar(100) NOT NULL,
  `사업장업종명` varchar(100) DEFAULT NULL,
  `세차유형` varchar(100) DEFAULT NULL,
  `소재지도로명주소` varchar(500) DEFAULT NULL,
  `휴무일` varchar(100) DEFAULT NULL,
  `평일운영시작시각` varchar(100) DEFAULT NULL,
  `평일운영종료시각` varchar(100) DEFAULT NULL,
  `휴일운영시작시각` varchar(100) DEFAULT NULL,
  `휴일운영종료시각` varchar(100) DEFAULT NULL,
  `세차요금정보` varchar(100) DEFAULT NULL,
  `대표자명` varchar(100) DEFAULT NULL,
  `세차장전화번호` varchar(100) DEFAULT NULL,
  `수질허가번호` varchar(100) DEFAULT NULL,
  `위도` varchar(100) DEFAULT NULL,
  `경도` varchar(100) DEFAULT NULL,
  `데이터기준일자` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='공공데이터 세차장데이터 원본';

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 carwash.carwash_orig_bkup 구조 내보내기
CREATE TABLE IF NOT EXISTS `carwash_orig_bkup` (
  `사업장명` varchar(100) DEFAULT NULL COMMENT 'busin_place_name',
  `시도명` varchar(30) NOT NULL COMMENT 'sido_name',
  `시군구명` varchar(50) DEFAULT NULL COMMENT 'city_name',
  `사업장업종명` varchar(20) DEFAULT NULL COMMENT 'busin_place_code_name',
  `세차유형` varchar(30) DEFAULT NULL COMMENT 'carwash_type',
  `소재지도로명주소` varchar(500) DEFAULT NULL COMMENT 'road_name_addr',
  `휴무일` varchar(100) DEFAULT NULL COMMENT 'closed_date',
  `평일운영시작시각` time DEFAULT NULL COMMENT 'week_oper_start_time',
  `평일운영종료시각` time DEFAULT NULL COMMENT 'week_oper_end_time',
  `휴일운영시작시각` time DEFAULT NULL COMMENT 'holi_oper_start_time',
  `휴일운영종료시각` time DEFAULT NULL COMMENT 'holi_oper_end_time',
  `세차요금정보` varchar(150) DEFAULT NULL COMMENT 'wash_fee',
  `대표자명` varchar(20) DEFAULT NULL COMMENT 'ceo_name',
  `세차장전화번호` varchar(30) DEFAULT NULL COMMENT 'busin_place_tele_num',
  `수질허가번호` varchar(50) DEFAULT NULL COMMENT 'water_quality_permi_num',
  `위도` double DEFAULT NULL COMMENT 'latitude',
  `경도` double DEFAULT NULL COMMENT 'longitude',
  `데이터기준일자` date NOT NULL COMMENT 'data_refer_date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='공공데이터 세차장데이터 백업용';

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 carwash.ids 구조 내보내기
CREATE TABLE IF NOT EXISTS `ids` (
  `TABLE_NAME` varchar(20) NOT NULL,
  `NEXT_ID` decimal(30,0) NOT NULL,
  PRIMARY KEY (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 carwash.oper_time 구조 내보내기
CREATE TABLE IF NOT EXISTS `oper_time` (
  `id` varchar(50) NOT NULL COMMENT '일련번호',
  `closed_date` varchar(100) DEFAULT NULL COMMENT '휴무일',
  `week_oper_start_time` time DEFAULT '00:00:00' COMMENT '평일운영시작시각',
  `week_oper_end_time` time DEFAULT '00:00:00' COMMENT '평일운영종료시각',
  `holi_oper_start_time` time DEFAULT '00:00:00' COMMENT '휴일운영시작시각',
  `holi_oper_end_time` time DEFAULT '00:00:00' COMMENT '휴일운영종료시각',
  `registered_id` varchar(50) DEFAULT NULL COMMENT '등록자ID',
  `updated_id` varchar(50) DEFAULT NULL COMMENT '수정자ID',
  `registered_date` datetime DEFAULT NULL COMMENT '등록일시',
  `updated_date` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='세차장 운영시간 테이블';

-- 내보낼 데이터가 선택되어 있지 않습니다.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
