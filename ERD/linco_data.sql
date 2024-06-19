# data 삽입

# 외래 키 제약 조건 비활성화
SET FOREIGN_KEY_CHECKS = 0;

# 모든 테이블의 데이터 삭제
DELETE
FROM ATTACHMENT_LIKE;
DELETE
FROM COMMENT;
ALTER TABLE COMMENT
    AUTO_INCREMENT = 1;
DELETE
FROM BOARD_LIKE;
DELETE
FROM USER_AUTHORITY;
DELETE
FROM CLUB_USER_LIST;
DELETE
FROM ATTACHMENT;
ALTER TABLE ATTACHMENT
    AUTO_INCREMENT = 1;
DELETE
FROM RESERVATION;
DELETE
FROM USER_SOCIALIZING;
DELETE
FROM SOCIALIZING;
ALTER TABLE SOCIALIZING
    AUTO_INCREMENT = 1;
DELETE
FROM VENUE;
ALTER TABLE VENUE
    AUTO_INCREMENT = 1;
DELETE
FROM BOARD;
ALTER TABLE BOARD
    AUTO_INCREMENT = 1;
DELETE
FROM BOARD_TYPE;
ALTER TABLE BOARD_TYPE
    AUTO_INCREMENT = 1;
DELETE
FROM CLUB;
ALTER TABLE CLUB
    AUTO_INCREMENT = 1;
DELETE
FROM USER;
ALTER TABLE USER
    AUTO_INCREMENT = 1;
DELETE
FROM AUTHORITY;
ALTER TABLE AUTHORITY
    AUTO_INCREMENT = 1;

# 외래 키 제약 조건 활성화
SET FOREIGN_KEY_CHECKS = 1;


insert into USER (tel, username, password, name, address, gender, birthday, profile_picture, regdate)
values ('010-0000-0000', 'yee@gmail.com', 'yee1234', '김예현', '서울시 관악구 신림동', 'FEMALE', '1999-05-14', 'face04.png', null),
       ('010-1111-1111', 'seye@gmail.com', 'seye1234', '김세현', '서울시 관악구 사당동', 'FEMALE', '1998-05-14', 'face01.png',
        null),
       ('010-2222-3333', 'sejin@gmail.com', 'sejin1234', '김세진', '서울시 관악구 역삼동', 'MALE', '1999-01-01', 'face02.png',
        null),
       ('010-4444-4444', 'so@gmail.com', 'so1234', '김소소', '서울시 강남구 역삼동', 'MALE', '1999-12-31', 'face03.png', null);

# select * from USER;


insert into AUTHORITY (name)
values ('ADMIN'),
       ('MEMBER');

# select * from AUTHORITY;

insert into USER_AUTHORITY (user_id, authority_id)
values (1, 1),
       (2, 2),
       (3, 2),
       (4, 2);

# select * from USER_AUTHORITY;

insert into CLUB(name, category, detail_category, intro, content, representative_picture)
values ('부리부리부리부리', '운동', '축구', '어서왕~~~~', '부리부리부리부리 축구하쟝', 'face03.png'),
       ('디컨', '스터디', '컴퓨터', '하기 시러', '집에 가고 싶어, 자고 싶어', 'face04.png');

# select * from CLUB;

insert into CLUB_USER_LIST(user_id, club_id, role)
values (1, 1, 'MASTER'),
       (2, 1, 'MEMBER'),
       (3, 2, 'MASTER'),
       (4, 2, 'MEMBER');


# select * from CLUB_USER_LIST;

insert into BOARD_TYPE(name)
values ('공지사항'),
       ('자유게시판'),
       ('클럽홍보');

# select * from BOARD_TYPE;

insert into BOARD(user_id, club_id, board_type_id, title, content, viewcnt)
values
       (1, null, 3, '벌레마시쪙', '벌레마시쪙????', 1),
       (1, null, 2, '야 나두2', '야 너두? 맛없쪙? 나두 맛없쪙2', 1),
       (2, null, 1, '야 나두1', '야 너두? 맛없쪙? 나두 맛없쪙1', 1),
       (3, null, 1, '너두?!1', '야 너두? 맛없쪙? 나두 맛없쪙1', 1),
       (2, null, 2, '이거 되려나', '야 이거 뜨냐?', 1),
       (3, null, 2, '게시글2', '게시글2',1),
       (3, 1, 3, '이건?', '되려나?', 1),
       (2, 2, 3, '과연', '두둥',1)
       ;

# select * from BOARD;

insert into BOARD_LIKE(user_id, board_id)
values (1, 1),
       (2, 2);

# select * from BOARD_LIKE;

insert into ATTACHMENT (board_id, club_id, sourcename, filename)
values (1, 1, 'face01.png', 'face01.png'),
       (1, 2, 'face02.png', 'face02.png'),
       (2, null, 'face03.png', 'face03.png'),
       (1, null, 'face04.png', 'face04.png'),
       (3, null, 'face06.png', 'face06.png'),
       (4, null, 'face07.png', 'face07.png')
       ;

# select * from ATTACHMENT;

insert into ATTACHMENT_LIKE(user_id, attachment_id)
values (1, 1),
       (2, 1);

# select * from ATTACHMENT_LIKE;

insert into COMMENT(user_id, board_id, attachment_id, content, regdate)
values (1, 1, 1, '재미없쪙', null),
       (2, 2, 1, '야 너도?', null),
       (3, 3, 1, '야 나두', null),
       (3, 1, null, '이거 출력되니?', null),
       (3, 2, null, '이건 출력되니??', null),
       (3, 3, null, '이것도 출력되니???', null),
       (4, 3, null, '댓글1', null),
       (2, 3, null, '댓글2', null)
       ;

# select * from COMMENT;

insert into VENUE (venue_name, address, limit_num, venue_category, info_tel, price, posible_start_date, posible_end_date, open_time, close_time, img)
values ('코리아IT아카데미', '서울시 강남구 역삼동 테헤란로 26길 12', 31, '강의실', '070-0000-0000', 1000, '2024-06-14', '2025-06-14', '09:00:00', '22:00:00', 'face02.png'),
       ('코리아IT아카데미', '서울시 강남구 역삼동 테헤란로 26길 12', 6, '강의실', '070-1234-1234', 1000, '2024-06-14', '2025-06-14', '09:00:00', '22:00:00', 'face03.png'),
       ('해성이집', '서울시 동대문구 청량리역 6번 출구', 6, '공용시설', '070-1111-2222', 0, '2024-06-14', '2025-06-14', '00:00:00', '23:59:59', 'face01.png'),
       ('연가', '서울특별시 강남구 논현로85길 5-13', 6, '밥집', '070-1234-5678', 0, '2024-06-14', '2025-06-20', '10:00:00', '20:00:00', 'face03.png'),
       ('긴자료코', '서울 강남구 테헤란로20길 19 1동 106호', 6, '돈가스집', '070-2315-1313', 0, '2024-06-14', '2025-07-14', '10:00:00', '21:30:00', 'face04.png'),
       ('킹콩부대찌개', '서울 강남구 논현로87길 15-8 종합빌딩 1층', 6, '부대찌개', '070-6776-5656', 0, '2024-06-14', '2025-06-30', '10:00:00', '22:00:00', 'face02.png');

# select * from VENUE;

insert into RESERVATION (user_id, reservation_name, email, tel, venue_id, venue_name, status, reserve_date, reserve_start_time, reserve_end_time, total_price, paydate)
values (1, '김예현', 'yee0514@gamil.com', '010-0000-0000', 1, '코리아IT아카데미', 'PAYED', '2024-06-14', '09:00:00',  '18:00:00', 1000, null),
       (1, '김예현', 'yee0514@gamil.com', '010-0000-0000', 2, '코리아IT아카데미', 'CANCELED', '2024-06-15', '09:00:00',  '22:00:00', 1000, null),
       (1, '김예현', 'yee0514@gamil.com', '010-0000-0000', 3, '해성이집', 'PAYED', '2024-06-13', '00:00:00',  '23:59:59', 0, null),
       (2, '김세현', 'sehyun_jjang@naver.com', '010-1111-1111', 2, '코리아IT아카데미', 'DONE', '2024-06-16', '09:00:00',  '18:00:00', 1000, null);

# select * from RESERVATION;

insert into SOCIALIZING (venue_id, socializing_title, category, detail_category, address, meeting_date, meeting_time,
                         limit_num, content, total_price, img)
values (1, '같이 스야치쟝~', '운동', '야구', '서울시 강남구 역삼동 테헤란로 26길12', '2024-06-13', '09:00', 30, '강의실에서 빠따치쟝', 1000,
        'face02.png'),
       (3, '코딩하쟝~~', '운동', '농구', '전남 여수시 경호동 482-1', '2024-06-14', '09:00', 30, '강의실에서 키보드나 두드리쟝', 20000,
        'face02.png'),
       (1, '코딩하쟝~~', '운동', '야구', '서울 송파구 올림픽로 25 서울종합운동장', '2024-06-14', '09:00', 30, '강의실에서 키보드나 두드리쟝', 20000,
        'face02.png'),
       (1, '코딩하쟝~~', '공부', '컴퓨터', '경기 수원시 장안구 서부로 2149 성대역사', '2024-06-14', '09:00', 30, '강의실에서 키보드나 두드리쟝', 20000,
        'face02.png'),
       (1, '코딩하쟝~~', '공부', '영어', '경기 고양시 덕양구 성사동', '2024-06-14', '09:00', 30, '강의실에서 키보드나 두드리쟝', 20000,
        'face02.png'),
       (1, '코딩하쟝~~', '공부', '수학', '서울 용산구 남산공원길 105', '2024-06-14', '09:00', 30, '강의실에서 키보드나 두드리쟝', 20000,
        'face02.png'),
       (1, '코딩하쟝~~', '공연', '전시', '경기 수원시 장안구 서부로 2149 성대역사', '2024-06-14', '09:00', 30, '강의실에서 키보드나 두드리쟝', 20000,
        'face02.png'),
       (1, '코딩하쟝~~', '공연', '영화', '경기 수원시 장안구 서부로 2149 성대역사', '2024-06-14', '09:00', 30, '강의실에서 키보드나 두드리쟝', 20000,
        'face02.png'),
       (1, '코딩하쟝~~', '공연', '댄스', '경기 수원시 장안구 서부로 2149 성대역사', '2024-06-14', '09:00', 30, '강의실에서 키보드나 두드리쟝', 20000,
        'face02.png'),
       (1, '코딩하쟝~~', '공연', '댄스', '서울 동작구 사당동 남성중학교', '2024-06-14', '09:00', 30, '강의실에서 키보드나 두드리쟝', 20000,
        'face02.png'),
       (2, '축구하쟝~~', '운동', '축구', '서울특별시 마포구 월드컵로 240', '2024-06-14', '09:00', 30, '강의실에서 키보드나 두드리쟝', 20000,
        'face02.png');

# select * from SOCIALIZING;

insert into USER_SOCIALIZING (user_id, socializing_id, role)
values (1, 1, 'MASTER'),
       (2, 1, 'MEMBER'),
       (3, 2, 'MASTER'),
       (4, 2, 'MEMBER');

select * from USER_SOCIALIZING;
