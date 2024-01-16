CREATE TABLE "MESSAGE" (
                           "CD"	VARCHAR2(20)		NOT NULL,
                           "TYPE"	VARCHAR2(2)		NULL,
                           "DESCRIPTION"	VARCHAR2(2000)		NULL,
                           "REG_DT"	VARCHAR2(20)	DEFAULT TO_CHAR(CURRENT_DATE,'YYYYMMDDHH24MISS')	NOT NULL,
                           "REG_ID"	VARCHAR2(10)		NOT NULL,
                           "UPD_DT"	VARCHAR2(20)	DEFAULT TO_CHAR(CURRENT_DATE,'YYYYMMDDHH24MISS')	NOT NULL,
                           "UPD_ID"	VARCHAR2(10)		NOT NULL
);

COMMENT ON COLUMN "MESSAGE"."CD" IS '메세지코드';
COMMENT ON COLUMN "MESSAGE"."TYPE" IS '메세지타입 (C:CONFIRM, A:ALERT)';
COMMENT ON COLUMN "MESSAGE"."DESCRIPTION" IS '메세지설명';
COMMENT ON COLUMN "MESSAGE"."REG_DT" IS '등록일';
COMMENT ON COLUMN "MESSAGE"."REG_ID" IS '등록자';
COMMENT ON COLUMN "MESSAGE"."UPD_DT" IS '수정일시';
COMMENT ON COLUMN "MESSAGE"."UPD_ID" IS '수정자';
CREATE TABLE "MEMBER" (
                          "ID"	VARCHAR2(20)		NOT NULL,
                          "GRP_AUTH_MST_CD"	VARCHAR2(10)		NULL,
                          "DEPT_CD"	VARCHAR2(10)		NULL,
                          "PWD"	VARCHAR2(200)		NULL,
                          "NAME"	VARCHAR2(150)		NULL,
                          "NAME_ENG"	VARCHAR2(50)		NULL,
                          "POSITION_CD"	VARCHAR2(10)		NULL,
                          "EMAIL"	VARCHAR2(255)		NULL,
                          "TEL_NO"	VARCHAR2(20)		NULL,
                          "FAIL_CNT"	NUMBER(1)	DEFAULT 0	NULL,
                          "FIRST_LOGIN_YN"	VARCHAR2(1)	DEFAULT 'Y'	NULL,
                          "REMARK"	VARCHAR2(255)		NULL,
                          "USE_YN"	VARCHAR2(1)	DEFAULT 'Y'	NULL,
                          "LAST_LOGIN_DT"	VARCHAR2(8)		NULL,
                          "REG_DT"	VARCHAR2(14)	DEFAULT TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')	NOT NULL,
                          "REG_ID"	VARCHAR2(20)		NOT NULL,
                          "UPD_DT"	VARCHAR2(14)	DEFAULT TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')	NOT NULL,
                          "UPD_ID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "MEMBER"."ID" IS '사용자ID';

COMMENT ON COLUMN "MEMBER"."GRP_AUTH_MST_CD" IS '그룹코드';

COMMENT ON COLUMN "MEMBER"."DEPT_CD" IS '부서코드';

COMMENT ON COLUMN "MEMBER"."PWD" IS '패스워드';

COMMENT ON COLUMN "MEMBER"."NAME" IS '사용자이름';

COMMENT ON COLUMN "MEMBER"."NAME_ENG" IS '사용자이름(영문)';

COMMENT ON COLUMN "MEMBER"."POSITION_CD" IS '직급코드';

COMMENT ON COLUMN "MEMBER"."EMAIL" IS '이메일';

COMMENT ON COLUMN "MEMBER"."TEL_NO" IS '전화번호';

COMMENT ON COLUMN "MEMBER"."FAIL_CNT" IS '실패횟수';

COMMENT ON COLUMN "MEMBER"."FIRST_LOGIN_YN" IS '처음로그인여부';

COMMENT ON COLUMN "MEMBER"."REMARK" IS '노트';

COMMENT ON COLUMN "MEMBER"."USE_YN" IS '사용여부(퇴직)';

COMMENT ON COLUMN "MEMBER"."LAST_LOGIN_DT" IS '마지막로그인일자';

COMMENT ON COLUMN "MEMBER"."REG_DT" IS '등록일시';

COMMENT ON COLUMN "MEMBER"."REG_ID" IS '등록자';

COMMENT ON COLUMN "MEMBER"."UPD_DT" IS '수정일시';

COMMENT ON COLUMN "MEMBER"."UPD_ID" IS '수정자';

CREATE TABLE "DEPT" (
                        "CD"	VARCHAR2(10)		NOT NULL,
                        "NAME"	VARCHAR2(150)		NULL,
                        "MGR_ID"	VARCHAR2(20)		NULL,
                        "UPPER_CD"	VARCHAR2(10)		NULL,
                        "SORT"	NUMBER(3)		NULL
);

COMMENT ON COLUMN "DEPT"."CD" IS '부서코드';

COMMENT ON COLUMN "DEPT"."NAME" IS '부서이름';

COMMENT ON COLUMN "DEPT"."MGR_ID" IS '관리자ID';

COMMENT ON COLUMN "DEPT"."UPPER_CD" IS '상위부서코드';

COMMENT ON COLUMN "DEPT"."SORT" IS '정렬순서';

CREATE TABLE "NOTICE_BOARD" (
                                "REG_SEQ"	NUMBER(10)		NOT NULL,
                                "FILE_CD"	VARCHAR2(100)		NOT NULL,
                                "NTBD_DIV"	VARCHAR2(2)		NULL,
                                "VIEW_CNT"	NUMBER(10)		NULL,
                                "POST_NM"	VARCHAR2(400)		NULL,
                                "POST_CONT"	VARCHAR2(2000)		NULL,
                                "POST_IN_DATE"	VARCHAR2(8)		NULL,
                                "POST_OUT_DATE"	VARCHAR2(8)		NULL,
                                "REG_DT"	VARCHAR2(14)	DEFAULT TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')	NOT NULL,
                                "REG_ID"	VARCHAR2(20)		NOT NULL,
                                "UPD_DT"	VARCHAR2(14)	DEFAULT TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')	NOT NULL,
                                "UPD_ID"	VARCHAR2(20)		NOT NULL,
                                "TOP_YN"	VARCHAR2(1)	DEFAULT 'N'	NULL
);

COMMENT ON COLUMN "NOTICE_BOARD"."REG_SEQ" IS '등록순번';

COMMENT ON COLUMN "NOTICE_BOARD"."NTBD_DIV" IS '구분:B032';

COMMENT ON COLUMN "NOTICE_BOARD"."VIEW_CNT" IS '조회수';

COMMENT ON COLUMN "NOTICE_BOARD"."POST_NM" IS '게시글제목';

COMMENT ON COLUMN "NOTICE_BOARD"."POST_CONT" IS '게시글내용';

COMMENT ON COLUMN "NOTICE_BOARD"."POST_IN_DATE" IS '게시시작일';

COMMENT ON COLUMN "NOTICE_BOARD"."POST_OUT_DATE" IS '게시종료일';

COMMENT ON COLUMN "NOTICE_BOARD"."REG_DT" IS '시스템입력일';

COMMENT ON COLUMN "NOTICE_BOARD"."REG_ID" IS '시스템입력ID';

COMMENT ON COLUMN "NOTICE_BOARD"."UPD_DT" IS '시스템수정일';

COMMENT ON COLUMN "NOTICE_BOARD"."UPD_ID" IS '시스템수정ID';

CREATE TABLE "FILE" (
                        "CD"	VARCHAR2(100)		NOT NULL,
                        "SEQ"	NUMBER(10)		NOT NULL,
                        "NAME"	VARCHAR2(100)		NULL,
                        "SIZE"	NUMBER(8)		NULL,
                        "PATH"	VARCHAR2(3000)		NULL,
                        "USE_YN"	VARCHAR2(1)		NULL,
                        "REG_DT"	VARCHAR2(14)		NOT NULL,
                        "REG_ID"	VARCHAR2(20)		NOT NULL,
                        "UPD_DT"	VARCHAR2(14)		NOT NULL,
                        "UPD_ID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "FILE"."CD" IS 'FILE_CD';

COMMENT ON COLUMN "FILE"."SEQ" IS 'SEQ';

COMMENT ON COLUMN "FILE"."NAME" IS '파일이름';

COMMENT ON COLUMN "FILE"."SIZE" IS '파일용량';

COMMENT ON COLUMN "FILE"."PATH" IS '원본파일경로';

COMMENT ON COLUMN "FILE"."USE_YN" IS '업로드YN';

COMMENT ON COLUMN "FILE"."REG_DT" IS '시스템입력일';

COMMENT ON COLUMN "FILE"."REG_ID" IS '시스템입력ID';

COMMENT ON COLUMN "FILE"."UPD_DT" IS '시스템수정일';

COMMENT ON COLUMN "FILE"."UPD_ID" IS '시스템수정ID';

CREATE TABLE "GRP_AUTH_MST" (
                                "CD"	VARCHAR2(10)		NOT NULL,
                                "NAME"	VARCHAR2(100)		NULL,
                                "REG_DT"	DATE		NOT NULL,
                                "REG_ID"	VARCHAR2(20)		NOT NULL,
                                "UPD_DT"	DATE		NOT NULL,
                                "UPD_ID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "GRP_AUTH_MST"."CD" IS '그룹코드';

COMMENT ON COLUMN "GRP_AUTH_MST"."NAME" IS '그룹명';

COMMENT ON COLUMN "GRP_AUTH_MST"."REG_DT" IS '등록일시';

COMMENT ON COLUMN "GRP_AUTH_MST"."REG_ID" IS '등록자';

COMMENT ON COLUMN "GRP_AUTH_MST"."UPD_DT" IS '수정일시';

COMMENT ON COLUMN "GRP_AUTH_MST"."UPD_ID" IS '수정자';

CREATE TABLE "ACCESS_LOG" (
                              "ACCS_DT"	VARCHAR2(16)	DEFAULT TO_CHAR(SYSDATE,'YYYYMMDDHH24MISSFF2')	NULL,
                              "MENU_CD"	VARCHAR2(10)		NULL,
                              "MENU_PATH"	VARCHAR2(1000)		NULL,
                              "USER_ID"	VARCHAR2(20)		NULL
);

COMMENT ON COLUMN "ACCESS_LOG"."ACCS_DT" IS '접속일시';

COMMENT ON COLUMN "ACCESS_LOG"."MENU_CD" IS '메뉴ID';

COMMENT ON COLUMN "ACCESS_LOG"."MENU_PATH" IS '메뉴경로';

COMMENT ON COLUMN "ACCESS_LOG"."USER_ID" IS '사용자ID';

CREATE TABLE "CODE_MST" (
                            "CD"	VARCHAR2(10)		NOT NULL,
                            "NAME"	VARCHAR2(100)		NULL,
                            "REMARK"	VARCHAR2(100)		NULL,
                            "REG_DT"	VARCHAR2(20)	DEFAULT TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')	NOT NULL,
                            "REG_ID"	VARCHAR2(10)		NOT NULL,
                            "UPD_DT"	VARCHAR2(20)	DEFAULT TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')	NOT NULL,
                            "UPD_ID"	VARCHAR2(10)		NOT NULL
);

COMMENT ON COLUMN "CODE_MST"."CD" IS '대분류코드';

COMMENT ON COLUMN "CODE_MST"."NAME" IS '대분류이름';

COMMENT ON COLUMN "CODE_MST"."REMARK" IS '기타';

COMMENT ON COLUMN "CODE_MST"."REG_DT" IS '등록일';

COMMENT ON COLUMN "CODE_MST"."REG_ID" IS '등록자';

COMMENT ON COLUMN "CODE_MST"."UPD_DT" IS '수정일시';

COMMENT ON COLUMN "CODE_MST"."UPD_ID" IS '수정자';

CREATE TABLE "GRP_AUTH_DTL" (
                                "GRP_AUTH_MST_CD"	VARCHAR2(10)		NOT NULL,
                                "MENU_CD"	VARCHAR2(10)		NOT NULL,
                                "USE_YN"	VARCHAR2(1)		NULL,
                                "CRT_YN"	VARCHAR2(1)		NULL,
                                "RED_YN"	VARCHAR2(1)		NULL,
                                "SAV_YN"	VARCHAR2(1)		NULL,
                                "DEL_YN"	VARCHAR2(1)		NULL,
                                "PRT_YN"	VARCHAR2(1)		NULL,
                                "EXL_YN"	VARCHAR2(1)		NULL,
                                "ETC_1_YN"	VARCHAR2(1)		NULL,
                                "ETC_2_YN"	VARCHAR2(1)		NULL,
                                "ETC_3_YN"	VARCHAR2(1)		NULL,
                                "REG_DT"	DATE		NOT NULL,
                                "REG_ID"	VARCHAR2(20)		NOT NULL,
                                "UPD_DT"	DATE		NOT NULL,
                                "UPD_ID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "GRP_AUTH_DTL"."GRP_AUTH_MST_CD" IS '그룹코드';

COMMENT ON COLUMN "GRP_AUTH_DTL"."MENU_CD" IS '메뉴ID';

COMMENT ON COLUMN "GRP_AUTH_DTL"."USE_YN" IS '표시여부';

COMMENT ON COLUMN "GRP_AUTH_DTL"."CRT_YN" IS '생성권한';

COMMENT ON COLUMN "GRP_AUTH_DTL"."RED_YN" IS '읽기권한';

COMMENT ON COLUMN "GRP_AUTH_DTL"."SAV_YN" IS '저장권한';

COMMENT ON COLUMN "GRP_AUTH_DTL"."DEL_YN" IS '삭제권한';

COMMENT ON COLUMN "GRP_AUTH_DTL"."PRT_YN" IS '인쇄권한';

COMMENT ON COLUMN "GRP_AUTH_DTL"."EXL_YN" IS '엑셀권한';

COMMENT ON COLUMN "GRP_AUTH_DTL"."ETC_1_YN" IS '기타1권한';

COMMENT ON COLUMN "GRP_AUTH_DTL"."ETC_2_YN" IS '기타2권한';

COMMENT ON COLUMN "GRP_AUTH_DTL"."ETC_3_YN" IS '기타3권한';

COMMENT ON COLUMN "GRP_AUTH_DTL"."REG_DT" IS '등록일시';

COMMENT ON COLUMN "GRP_AUTH_DTL"."REG_ID" IS '등록자';

COMMENT ON COLUMN "GRP_AUTH_DTL"."UPD_DT" IS '수정일시';

COMMENT ON COLUMN "GRP_AUTH_DTL"."UPD_ID" IS '수정자';

CREATE TABLE "ERR_LOG" (
                           "TRAN_DT"	VARCHAR2(8)	DEFAULT TO_CHAR(SYSDATE,'YYYYMMDD')	NOT NULL,
                           "TRAN_SEQ"	NUMBER(5)		NOT NULL,
                           "TRAN_TM"	VARCHAR2(6)	DEFAULT TO_CHAR(SYSDATE,'HH24MISS')	NULL,
                           "MENU_CD"	VARCHAR2(10)		NULL,
                           "REQ_PATH"	VARCHAR2(1000)		NULL,
                           "SER_PATH"	VARCHAR2(100)		NULL,
                           "ERR_TYPE"	VARCHAR2(100)		NULL,
                           "ERR_CD"	VARCHAR2(30)		NULL,
                           "ERR_MSG"	VARCHAR2(3000)		NULL,
                           "USER_ID"	VARCHAR2(20)		NULL
);

COMMENT ON COLUMN "ERR_LOG"."TRAN_DT" IS '오류발생일자';

COMMENT ON COLUMN "ERR_LOG"."TRAN_SEQ" IS '오류순번';

COMMENT ON COLUMN "ERR_LOG"."TRAN_TM" IS '오류시간';

COMMENT ON COLUMN "ERR_LOG"."MENU_CD" IS '메뉴ID';

COMMENT ON COLUMN "ERR_LOG"."REQ_PATH" IS '요청경로';

COMMENT ON COLUMN "ERR_LOG"."SER_PATH" IS '서비스명';

COMMENT ON COLUMN "ERR_LOG"."ERR_TYPE" IS '오류유형';

COMMENT ON COLUMN "ERR_LOG"."ERR_CD" IS '오류코드(각 Vendor사 지정코드 ex Oracle)';

COMMENT ON COLUMN "ERR_LOG"."ERR_MSG" IS '오류메세지';

COMMENT ON COLUMN "ERR_LOG"."USER_ID" IS '사용자ID';

CREATE TABLE "CODE_DTL" (
                            "CD"	VARCHAR2(10)		NOT NULL,
                            "CODE_MST_CD"	VARCHAR2(10)		NOT NULL,
                            "NAME"	VARCHAR2(100)		NULL,
                            "OPT_1"	VARCHAR2(100)		NULL,
                            "OPT_2"	VARCHAR2(100)		NULL,
                            "OPT_3"	VARCHAR2(100)		NULL,
                            "REMARK"	VARCHAR2(100)		NULL,
                            "REG_DT"	VARCHAR2(20)	DEFAULT TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')	NOT NULL,
                            "REG_ID"	VARCHAR2(10)		NOT NULL,
                            "UPD_DT"	VARCHAR2(20)	DEFAULT TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')	NOT NULL,
                            "UPD_ID"	VARCHAR2(10)		NOT NULL
);

COMMENT ON COLUMN "CODE_DTL"."CD" IS '소분류코드';

COMMENT ON COLUMN "CODE_DTL"."CODE_MST_CD" IS '대분류코드';

COMMENT ON COLUMN "CODE_DTL"."NAME" IS '소분류이름';

COMMENT ON COLUMN "CODE_DTL"."REMARK" IS '기타';

COMMENT ON COLUMN "CODE_DTL"."REG_DT" IS '등록일';

COMMENT ON COLUMN "CODE_DTL"."REG_ID" IS '등록자';

COMMENT ON COLUMN "CODE_DTL"."UPD_DT" IS '수정일시';

COMMENT ON COLUMN "CODE_DTL"."UPD_ID" IS '수정자';

CREATE TABLE "MENU" (
                        "CD"	VARCHAR2(10)		NOT NULL,
                        "NAME"	VARCHAR2(200)		NULL,
                        "SORT"	NUMBER(3)		NULL,
                        "UPPER_CD"	VARCHAR2(10)		NULL,
                        "URL"	VARCHAR2(1000)		NULL,
                        "USE_YN"	VARCHAR2(1)		NULL,
                        "CRT_YN"	VARCHAR2(1)		NULL,
                        "RED_YN"	VARCHAR2(1)		NULL,
                        "SAV_YN"	VARCHAR2(1)		NULL,
                        "DEL_YN"	VARCHAR2(1)		NULL,
                        "PRT_YN"	VARCHAR2(1)		NULL,
                        "EXL_YN"	VARCHAR2(1)		NULL,
                        "ETC_1_YN"	VARCHAR2(1)		NULL,
                        "ETC_2_YN"	VARCHAR2(1)		NULL,
                        "ETC_3_YN"	VARCHAR2(1)		NULL,
                        "PARAM_ID"	VARCHAR2(10)		NULL,
                        "REG_ID"	VARCHAR2(20)		NOT NULL,
                        "REG_DT"	DATE	DEFAULT SYSDATE	NOT NULL,
                        "UPD_ID"	VARCHAR2(20)		NOT NULL,
                        "UPD_DT"	DATE	DEFAULT SYSDATE	NOT NULL
);

COMMENT ON COLUMN "MENU"."CD" IS '메뉴ID';

COMMENT ON COLUMN "MENU"."NAME" IS '메뉴명';

COMMENT ON COLUMN "MENU"."SORT" IS '메뉴순번';

COMMENT ON COLUMN "MENU"."UPPER_CD" IS '상위메뉴ID';

COMMENT ON COLUMN "MENU"."URL" IS '화면ID';

COMMENT ON COLUMN "MENU"."USE_YN" IS '메뉴사용여부';

COMMENT ON COLUMN "MENU"."CRT_YN" IS '생성권한';

COMMENT ON COLUMN "MENU"."RED_YN" IS '읽기권한';

COMMENT ON COLUMN "MENU"."SAV_YN" IS '저장권한';

COMMENT ON COLUMN "MENU"."DEL_YN" IS '삭제권한';

COMMENT ON COLUMN "MENU"."PRT_YN" IS '인쇄권한';

COMMENT ON COLUMN "MENU"."EXL_YN" IS '엑셀권한';

COMMENT ON COLUMN "MENU"."ETC_1_YN" IS '기타1권한';

COMMENT ON COLUMN "MENU"."ETC_2_YN" IS '기타2권한';

COMMENT ON COLUMN "MENU"."ETC_3_YN" IS '기타3권한';

COMMENT ON COLUMN "MENU"."PARAM_ID" IS '메뉴파라미터ID';

COMMENT ON COLUMN "MENU"."REG_ID" IS '등록자';

COMMENT ON COLUMN "MENU"."REG_DT" IS '등록일시';

COMMENT ON COLUMN "MENU"."UPD_ID" IS '수정자';

COMMENT ON COLUMN "MENU"."UPD_DT" IS '수정일시';

ALTER TABLE "MESSAGE" ADD CONSTRAINT "PK_MESSAGE" PRIMARY KEY (
                                                               "CD"
    );

ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
                                                             "ID"
    );

ALTER TABLE "DEPT" ADD CONSTRAINT "PK_DEPT" PRIMARY KEY (
                                                         "CD"
    );

ALTER TABLE "NOTICE_BOARD" ADD CONSTRAINT "PK_NOTICE_BOARD" PRIMARY KEY (
                                                                         "REG_SEQ"
    );

ALTER TABLE "FILE" ADD CONSTRAINT "PK_FILE" PRIMARY KEY (
                                                         "CD",
                                                         "SEQ"
    );

ALTER TABLE "GRP_AUTH_MST" ADD CONSTRAINT "PK_GRP_AUTH_MST" PRIMARY KEY (
                                                                         "CD"
    );

ALTER TABLE "CODE_MST" ADD CONSTRAINT "PK_CODE_MST" PRIMARY KEY (
                                                                 "CD"
    );

ALTER TABLE "GRP_AUTH_DTL" ADD CONSTRAINT "PK_GRP_AUTH_DTL" PRIMARY KEY (
                                                                         "GRP_AUTH_MST_CD",
                                                                         "MENU_CD"
    );

ALTER TABLE "ERR_LOG" ADD CONSTRAINT "PK_ERR_LOG" PRIMARY KEY (
                                                               "TRAN_DT",
                                                               "TRAN_SEQ"
    );

ALTER TABLE "CODE_DTL" ADD CONSTRAINT "PK_CODE_DTL" PRIMARY KEY (
                                                                 "CD",
                                                                 "CODE_MST_CD"
    );

ALTER TABLE "MENU" ADD CONSTRAINT "PK_MENU" PRIMARY KEY (
                                                         "CD"
    );

ALTER TABLE "MEMBER" ADD CONSTRAINT "FK_GRP_AUTH_MST_TO_MEMBER_1" FOREIGN KEY (
                                                                               "GRP_AUTH_MST_CD"
    )
    REFERENCES "GRP_AUTH_MST" (
                               "CD"
        );

ALTER TABLE "MEMBER" ADD CONSTRAINT "FK_DEPT_TO_MEMBER_1" FOREIGN KEY (
                                                                       "DEPT_CD"
    )
    REFERENCES "DEPT" (
                       "CD"
        );

-- ALTER TABLE "NOTICE_BOARD" ADD CONSTRAINT "FK_FILE_TO_NOTICE_BOARD_1" FOREIGN KEY (
--                                                                                    "FILE_CD"
--     )
--     REFERENCES "FILE" (
--                        "CD","SEQ"
--         );

ALTER TABLE "GRP_AUTH_DTL" ADD CONSTRAINT "FK_GRP_AUTH_MST_TO_GRP_AUTH_DTL_1" FOREIGN KEY (
                                                                                           "GRP_AUTH_MST_CD"
    )
    REFERENCES "GRP_AUTH_MST" (
                               "CD"
        );

ALTER TABLE "GRP_AUTH_DTL" ADD CONSTRAINT "FK_MENU_TO_GRP_AUTH_DTL_1" FOREIGN KEY (
                                                                                   "MENU_CD"
    )
    REFERENCES "MENU" (
                       "CD"
        );

ALTER TABLE "CODE_DTL" ADD CONSTRAINT "FK_CODE_MST_TO_CODE_DTL_1" FOREIGN KEY (
                                                                               "CODE_MST_CD"
    )
    REFERENCES "CODE_MST" (
                           "CD"
        );

