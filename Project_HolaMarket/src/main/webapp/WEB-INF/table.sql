CREATE TABLE item(
num NUMBER PRIMARY KEY, -- 아이템 번호
img BLOB NOT NULL, -- 아이템 이미지
title VARCHAR2(50) NOT NULL, -- 아이템 이름
content BLOB NOT NULL, -- 아이템 설명
category VARCHAR2(40) NOT NULL, -- 카테고리
lowcategory VARCHAR2(40) NOT NULL, -- 하위 카테고리
address VARCHAR2(100), -- 아이템 거래 장소
regdate DATE -- 등록 날짜
);

CREATE SEQUENCE item_seq;
