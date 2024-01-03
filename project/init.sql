
CREATE TABLE TB_PCR (
CRN VARCHAR (15) NOT null comment '사업자등록번호',
PCR_NA VARCHAR (30) comment 'pc방 이름',
PCR_ADD VARCHAR (100) comment 'pc방 주소'
);

CREATE TABLE TB_EMP (
EMPNO VARCHAR (50) NOT null comment '회원 아이디',
PCR_NA VARCHAR (30) comment '주민등록번호',
PCR_ADD VARCHAR (100) comment '비밀번호',
JOIN_DT TIMESTAMP comment '가입 날짜',
DOR_ACC BOOL comment '휴먼 계정 여부',
CAC_ACC BOOL comment '탈퇴 여부',
CRN VARCHAR (15) not null comment '사업자등록번호',
BLACKLIST BOOL comment '블랙리스트 여부',
PHONE_NO VARCHAR (11) comment '전화번호',
ADDRESS VARCHAR (50) comment '주소'
);

CREATE TABLE TB_BLACK (
BLACK_NO INT (4) NOT null comment '블랙리스트 번호',
EMPNO VARCHAR (50) comment '회원 아이디',
BLACK_DATE DATETIME comment '날짜',
REASON VARCHAR (2000) comment '사유'
);

CREATE TABLE TB_LOGIN (
LGNO INT (8) NOT null  comment '로그인 이력코드',
EMPNO VARCHAR (50) comment '회원 아이디',
LG_DT TIMESTAMP comment '로그인 시간',
LO_DT TIMESTAMP comment '로그아웃 시간'
);

CREATE TABLE TB_REC (
REC_NO INT (8) NOT null comment '충전 이력코드',
EMPNO VARCHAR (50) comment '회원 아이디',
REC_DT TIMESTAMP comment '충전한 날짜',
REC_MN INT (4) comment '충전한 금액',
REC_TM INT (4) comment '충전된 시간'
);

insert into tb_pcr values (1120000432, "아레나 PC방", "충청남도 천안시 어쩌구");
insert into tb_pcr values (2130000532, "애플 PC방", "충청남도 아산시 어쩌구");
insert into tb_pcr values (3140000432, "파이 PC방", "충청남도 천안시 저쩌구");
insert into tb_emp values ("qkqh123", "041102-1234123", "qwe123",now(),false, false, "1120000432", false, "010-1234-1234", "충청남도 어쩌구");
insert into tb_emp values ("ajdcjddl123", "900823-1234123", "qwrr23", "2024-03-03 21:08:20",false, false, "1120000432", false, "010-1234-1234", "충청남도 저쩌구");
insert into tb_emp values ("rnaqpddl123", "001201-1234123", "qwww23", "2022-03-03 21:08:20",false, false, "2130000532", false, "010-1234-1234", "충청남도 어쩌구");
insert into tb_emp values ("qkqxlddl123", "020728-1234123", "qwee23", "2021-03-03 21:08:20",false, true, "2130000532", false, "010-1234-1234", "충청남도 저쩌구");
insert into tb_emp values ("Qkrk123", "100203-1234123", "qwgg23", "2022-03-03 21:08:20",false, false, "2130000532", true, "010-1234-1234", "충청남도 어쩌구");
insert into tb_emp values ("tkfl123", "020424-1234123", "qwzz23", "2022-03-03 21:08:20",false, false, "3140000432", false, "010-1234-1234", "충청남도 저쩌구");
insert into tb_black values (1234, "qkqxlddl123", "2022-03-03 21:08:20", "2024-03-03 21:08:20");
insert into tb_login values (23152333, "rnaqpddl123", "2022-03-03 21:08:20", "2024-03-03 21:08:20");
insert into tb_login values (23152333, "Qkrk123", "2022-03-03 21:08:20", "2024-03-03 21:08:20");
insert into tb_login values (23152333, "ajdcjddl123", "2021-03-03 21:08:20", "2024-03-03 21:08:20");
insert into tb_login values (23152333, "qkqh123", "2013-03-03 21:08:20", "2024-03-03 21:08:20");
insert into tb_login values (23152333, "qkqh123", "2015-03-03 21:08:20", "2024-03-03 21:08:20");
insert into tb_rec values (34654345, "qkqh123", "2019-03-03 21:08:20",5000, 180);
insert into tb_rec values (34654345, "rnaqpddl123", "2012-03-03 21:08:20",3000, 120);
insert into tb_rec values (34654345, "ajdcjddl123", "2023-02-03 16:08:20",10000, 300);
insert into tb_rec values (34654345, "Qkrk123", "2023-05-24 19:08:20",1000, 40);
insert into tb_rec values (34654345, "Qkrk123", "2034-01-11 20:08:20",1000, 40);
insert into tb_rec values (45233244, "tkfl123", "2012-11-28 21:08:20", 5000, 180);

COMMIT;