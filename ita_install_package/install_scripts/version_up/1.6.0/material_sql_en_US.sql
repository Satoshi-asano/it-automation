ALTER TABLE F_MM_STATUS_MASTER ADD COLUMN ACCESS_AUTH TEXT AFTER DISP_FLAG_6;

ALTER TABLE F_MM_STATUS_MASTER_JNL ADD COLUMN ACCESS_AUTH TEXT AFTER DISP_FLAG_6;

ALTER TABLE F_DIR_MASTER ADD COLUMN ACCESS_AUTH TEXT AFTER DIR_USAGE;

ALTER TABLE F_DIR_MASTER_JNL ADD COLUMN ACCESS_AUTH TEXT AFTER DIR_USAGE;

ALTER TABLE F_AUTO_RETURN ADD COLUMN ACCESS_AUTH TEXT AFTER AUTO_CONFIG;

ALTER TABLE F_AUTO_RETURN_JNL ADD COLUMN ACCESS_AUTH TEXT AFTER AUTO_CONFIG;

ALTER TABLE F_FILE_MASTER ADD COLUMN ACCESS_AUTH TEXT AFTER DIR_USAGE;

ALTER TABLE F_FILE_MASTER_JNL ADD COLUMN ACCESS_AUTH TEXT AFTER DIR_USAGE;

ALTER TABLE F_FILE_MANAGEMENT ADD COLUMN ACCESS_AUTH TEXT AFTER CLOSE_REVISION;

ALTER TABLE F_FILE_MANAGEMENT_INITIAL ADD COLUMN ACCESS_AUTH TEXT AFTER CLOSE_REVISION;

ALTER TABLE F_FILE_MANAGEMENT_JNL ADD COLUMN ACCESS_AUTH TEXT AFTER CLOSE_REVISION;

ALTER TABLE F_FILE_MANAGEMENT_INITIAL_JNL ADD COLUMN ACCESS_AUTH TEXT AFTER CLOSE_REVISION;

ALTER TABLE F_MATERIAL_IF_INFO ADD COLUMN ACCESS_AUTH TEXT AFTER PASSWORD;

ALTER TABLE F_MATERIAL_IF_INFO_JNL ADD COLUMN ACCESS_AUTH TEXT AFTER PASSWORD;

CREATE OR REPLACE VIEW G_FILE_STATUS_MASTER_1 AS 
SELECT * 
FROM   F_MM_STATUS_MASTER 
WHERE  DISUSE_FLAG = '0';
	
CREATE OR REPLACE VIEW G_FILE_STATUS_MASTER_2 AS
SELECT *
FROM   F_MM_STATUS_MASTER
WHERE  DISUSE_FLAG = '0'
AND    FILE_STATUS_ID IN ( 1 );

CREATE OR REPLACE VIEW G_FILE_STATUS_MASTER_3 AS
SELECT *
FROM   F_MM_STATUS_MASTER
WHERE  DISUSE_FLAG = '0'
AND    FILE_STATUS_ID IN ( 3, 7 );

CREATE OR REPLACE VIEW G_FILE_STATUS_MASTER_4 AS
SELECT *
FROM   F_MM_STATUS_MASTER
WHERE  DISUSE_FLAG = '0'
AND    FILE_STATUS_ID IN ( 4 );

CREATE OR REPLACE VIEW G_FILE_STATUS_MASTER_5 AS
SELECT *
FROM   F_MM_STATUS_MASTER
WHERE  DISUSE_FLAG = '0'
AND    FILE_STATUS_ID IN ( 5, 8 );

CREATE OR REPLACE VIEW G_FILE_STATUS_MASTER_6 AS
SELECT *
FROM   F_MM_STATUS_MASTER
WHERE  DISUSE_FLAG = '0'
AND    FILE_STATUS_ID IN ( 9 );

CREATE OR REPLACE VIEW G_FILE_MASTER AS 
SELECT TAB_A.FILE_ID                                                             ,
       TAB_A.FILE_NAME                                                           ,
       TAB_A.DIR_ID                                                              ,
       CONCAT(TAB_B.DIR_NAME_FULLPATH,TAB_A.FILE_NAME) AS FILE_NAME_FULLPATH                                                 ,
       TAB_A.AUTO_RETURN_FLAG                                                    ,
       TAB_A.CHMOD                                                               ,
       TAB_A.GROUP_AUTH                                                          ,
       TAB_A.USER_AUTH                                                           ,
       TAB_A.DIR_USAGE                                                           ,
       TAB_A.ACCESS_AUTH                                                         ,
       TAB_A.NOTE                                                                ,
       TAB_A.DISUSE_FLAG                                                         ,
       TAB_A.LAST_UPDATE_TIMESTAMP                                               ,
       TAB_A.LAST_UPDATE_USER 
FROM   F_FILE_MASTER TAB_A 
       LEFT JOIN F_DIR_MASTER TAB_B
       ON        (TAB_A.DIR_ID = TAB_B.DIR_ID)                                   ;

CREATE OR REPLACE VIEW G_FILE_MASTER_JNL AS 
SELECT TAB_A.JOURNAL_SEQ_NO                                                      ,
       TAB_A.JOURNAL_REG_DATETIME                                                ,
       TAB_A.JOURNAL_ACTION_CLASS                                                ,
       TAB_A.FILE_ID                                                             ,
       TAB_A.FILE_NAME                                                           ,
       TAB_A.DIR_ID                                                              ,
       CONCAT(TAB_B.DIR_NAME_FULLPATH,TAB_A.FILE_NAME) AS FILE_NAME_FULLPATH                                                 ,
       TAB_A.AUTO_RETURN_FLAG                                                    ,
       TAB_A.CHMOD                                                               ,
       TAB_A.GROUP_AUTH                                                          ,
       TAB_A.USER_AUTH                                                           ,
       TAB_A.DIR_USAGE                                                           ,
       TAB_A.ACCESS_AUTH                                                         ,
       TAB_A.NOTE                                                                ,
       TAB_A.DISUSE_FLAG                                                         ,
       TAB_A.LAST_UPDATE_TIMESTAMP                                               ,
       TAB_A.LAST_UPDATE_USER 
FROM   F_FILE_MASTER_JNL TAB_A 
       LEFT JOIN F_DIR_MASTER TAB_B
       ON        (TAB_A.DIR_ID = TAB_B.DIR_ID)                                   ;

CREATE OR REPLACE VIEW G_FILE_MANAGEMENT_1 AS 
SELECT TAB_A.FILE_M_ID             ,
       TAB_A.FILE_STATUS_ID        ,
       TAB_A.FILE_ID               ,
       TAB_B.FILE_NAME_FULLPATH    ,
       TAB_A.REQUIRE_DATE          ,
       TAB_A.REQUIRE_USER_ID       ,
       TAB_A.REQUIRE_TICKET        ,
       TAB_A.REQUIRE_ABSTRUCT      ,
       TAB_A.REQUIRE_SCHEDULEDATE  ,
       TAB_A.ASSIGN_DATE           ,
       TAB_A.ASSIGN_USER_ID        ,
       TAB_A.ASSIGN_FILE           ,
       TAB_A.ASSIGN_REVISION       ,
       TAB_A.RETURN_DATE           ,
       TAB_A.RETURN_USER_ID        ,
       TAB_A.RETURN_FILE           ,
       TAB_A.RETURN_DIFF           ,
       TAB_A.RETURN_TESTCASES      ,
       TAB_A.RETURN_EVIDENCES      ,
       TAB_A.CLOSE_DATE            ,
       TAB_A.CLOSE_USER_ID         ,
       TAB_A.CLOSE_REVISION        ,
       TAB_A.ACCESS_AUTH           ,
       TAB_A.NOTE                  ,
       TAB_A.DISUSE_FLAG           ,
       TAB_A.LAST_UPDATE_TIMESTAMP ,
       TAB_A.LAST_UPDATE_USER 
FROM   F_FILE_MANAGEMENT TAB_A
LEFT JOIN G_FILE_MASTER TAB_B ON (TAB_A.FILE_ID = TAB_B.FILE_ID) 
WHERE  FILE_STATUS_ID 
IN     (SELECT FILE_STATUS_ID 
        FROM   F_MM_STATUS_MASTER 
        WHERE  DISUSE_FLAG = '0' 
        AND    DISP_FLAG_1 = 1 )   ;

CREATE OR REPLACE VIEW G_FILE_MANAGEMENT_2 AS 
SELECT TAB_A.FILE_M_ID             ,
       TAB_A.FILE_STATUS_ID        ,
       TAB_A.FILE_ID               ,
       TAB_B.FILE_NAME_FULLPATH    ,
       TAB_A.REQUIRE_DATE          ,
       TAB_A.REQUIRE_USER_ID       ,
       TAB_A.REQUIRE_TICKET        ,
       TAB_A.REQUIRE_ABSTRUCT      ,
       TAB_A.REQUIRE_SCHEDULEDATE  ,
       TAB_A.ASSIGN_DATE           ,
       TAB_A.ASSIGN_USER_ID        ,
       TAB_A.ASSIGN_FILE           ,
       TAB_A.ASSIGN_REVISION       ,
       TAB_A.RETURN_DATE           ,
       TAB_A.RETURN_USER_ID        ,
       TAB_A.RETURN_FILE           ,
       TAB_A.RETURN_DIFF           ,
       TAB_A.RETURN_TESTCASES      ,
       TAB_A.RETURN_EVIDENCES      ,
       TAB_A.CLOSE_DATE            ,
       TAB_A.CLOSE_USER_ID         ,
       TAB_A.CLOSE_REVISION        ,
       TAB_A.ACCESS_AUTH           ,
       TAB_A.NOTE                  ,
       TAB_A.DISUSE_FLAG           ,
       TAB_A.LAST_UPDATE_TIMESTAMP ,
       TAB_A.LAST_UPDATE_USER 
FROM   F_FILE_MANAGEMENT TAB_A
LEFT JOIN G_FILE_MASTER TAB_B ON (TAB_A.FILE_ID = TAB_B.FILE_ID) 
WHERE  FILE_STATUS_ID 
IN     (SELECT FILE_STATUS_ID 
        FROM   F_MM_STATUS_MASTER 
        WHERE  DISUSE_FLAG = '0' 
        AND    DISP_FLAG_2 = 1 )   ;

CREATE OR REPLACE VIEW G_FILE_MANAGEMENT_3 AS 
SELECT TAB_A.FILE_M_ID             ,
       TAB_A.FILE_STATUS_ID        ,
       TAB_A.FILE_ID               ,
       TAB_B.FILE_NAME_FULLPATH    ,
       TAB_A.REQUIRE_DATE          ,
       TAB_A.REQUIRE_USER_ID       ,
       TAB_A.REQUIRE_TICKET        ,
       TAB_A.REQUIRE_ABSTRUCT      ,
       TAB_A.REQUIRE_SCHEDULEDATE  ,
       TAB_A.ASSIGN_DATE           ,
       TAB_A.ASSIGN_USER_ID        ,
       TAB_A.ASSIGN_FILE           ,
       TAB_A.ASSIGN_REVISION       ,
       TAB_A.RETURN_DATE           ,
       TAB_A.RETURN_USER_ID        ,
       TAB_A.RETURN_FILE           ,
       TAB_A.RETURN_DIFF           ,
       TAB_A.RETURN_TESTCASES      ,
       TAB_A.RETURN_EVIDENCES      ,
       TAB_A.CLOSE_DATE            ,
       TAB_A.CLOSE_USER_ID         ,
       TAB_A.CLOSE_REVISION        ,
       TAB_A.ACCESS_AUTH           ,
       TAB_A.NOTE                  ,
       TAB_A.DISUSE_FLAG           ,
       TAB_A.LAST_UPDATE_TIMESTAMP ,
       TAB_A.LAST_UPDATE_USER 
FROM   F_FILE_MANAGEMENT TAB_A
LEFT JOIN G_FILE_MASTER TAB_B ON (TAB_A.FILE_ID = TAB_B.FILE_ID) 
WHERE  FILE_STATUS_ID 
IN     (SELECT FILE_STATUS_ID 
        FROM   F_MM_STATUS_MASTER 
        WHERE  DISUSE_FLAG = '0' 
        AND    DISP_FLAG_3 = 1 )   ;

CREATE OR REPLACE VIEW G_FILE_MANAGEMENT_4 AS 
SELECT TAB_A.FILE_M_ID             ,
       TAB_A.FILE_STATUS_ID        ,
       TAB_A.FILE_ID               ,
       TAB_B.FILE_NAME_FULLPATH    ,
       TAB_A.REQUIRE_DATE          ,
       TAB_A.REQUIRE_USER_ID       ,
       TAB_A.REQUIRE_TICKET        ,
       TAB_A.REQUIRE_ABSTRUCT      ,
       TAB_A.REQUIRE_SCHEDULEDATE  ,
       TAB_A.ASSIGN_DATE           ,
       TAB_A.ASSIGN_USER_ID        ,
       TAB_A.ASSIGN_FILE           ,
       TAB_A.ASSIGN_REVISION       ,
       TAB_A.RETURN_DATE           ,
       TAB_A.RETURN_USER_ID        ,
       TAB_A.RETURN_FILE           ,
       TAB_A.RETURN_DIFF           ,
       TAB_A.RETURN_TESTCASES      ,
       TAB_A.RETURN_EVIDENCES      ,
       TAB_A.CLOSE_DATE            ,
       TAB_A.CLOSE_USER_ID         ,
       TAB_A.CLOSE_REVISION        ,
       TAB_A.ACCESS_AUTH           ,
       TAB_A.NOTE                  ,
       TAB_A.DISUSE_FLAG           ,
       TAB_A.LAST_UPDATE_TIMESTAMP ,
       TAB_A.LAST_UPDATE_USER 
FROM   F_FILE_MANAGEMENT TAB_A
LEFT JOIN G_FILE_MASTER TAB_B ON (TAB_A.FILE_ID = TAB_B.FILE_ID) 
WHERE  FILE_STATUS_ID 
IN     (SELECT FILE_STATUS_ID 
        FROM   F_MM_STATUS_MASTER 
        WHERE  DISUSE_FLAG = '0' 
        AND    DISP_FLAG_4 = 1 )   ;

CREATE OR REPLACE VIEW G_FILE_MANAGEMENT_5 AS 
SELECT TAB_A.FILE_M_ID             ,
       TAB_A.FILE_STATUS_ID        ,
       TAB_A.FILE_ID               ,
       TAB_B.FILE_NAME_FULLPATH    ,
       TAB_A.REQUIRE_DATE          ,
       TAB_A.REQUIRE_USER_ID       ,
       TAB_A.REQUIRE_TICKET        ,
       TAB_A.REQUIRE_ABSTRUCT      ,
       TAB_A.REQUIRE_SCHEDULEDATE  ,
       TAB_A.ASSIGN_DATE           ,
       TAB_A.ASSIGN_USER_ID        ,
       TAB_A.ASSIGN_FILE           ,
       TAB_A.ASSIGN_REVISION       ,
       TAB_A.RETURN_DATE           ,
       TAB_A.RETURN_USER_ID        ,
       TAB_A.RETURN_FILE           ,
       TAB_A.RETURN_DIFF           ,
       TAB_A.RETURN_TESTCASES      ,
       TAB_A.RETURN_EVIDENCES      ,
       TAB_A.CLOSE_DATE            ,
       TAB_A.CLOSE_USER_ID         ,
       TAB_A.CLOSE_REVISION        ,
       TAB_A.ACCESS_AUTH           ,
       TAB_A.NOTE                  ,
       TAB_A.DISUSE_FLAG           ,
       TAB_A.LAST_UPDATE_TIMESTAMP ,
       TAB_A.LAST_UPDATE_USER 
FROM   F_FILE_MANAGEMENT TAB_A
LEFT JOIN G_FILE_MASTER TAB_B ON (TAB_A.FILE_ID = TAB_B.FILE_ID) 
WHERE  FILE_STATUS_ID 
IN     (SELECT FILE_STATUS_ID 
        FROM   F_MM_STATUS_MASTER 
        WHERE  DISUSE_FLAG = '0' 
        AND    DISP_FLAG_5 = 1 )   ;

CREATE OR REPLACE VIEW G_FILE_MANAGEMENT_6 AS 
SELECT TAB_A.FILE_M_ID             ,
       TAB_A.FILE_STATUS_ID        ,
       TAB_A.FILE_ID               ,
       TAB_B.FILE_NAME_FULLPATH    ,
       TAB_A.REQUIRE_DATE          ,
       TAB_A.REQUIRE_USER_ID       ,
       TAB_A.REQUIRE_TICKET        ,
       TAB_A.REQUIRE_ABSTRUCT      ,
       TAB_A.REQUIRE_SCHEDULEDATE  ,
       TAB_A.ASSIGN_DATE           ,
       TAB_A.ASSIGN_USER_ID        ,
       TAB_A.ASSIGN_FILE           ,
       TAB_A.ASSIGN_REVISION       ,
       TAB_A.RETURN_DATE           ,
       TAB_A.RETURN_USER_ID        ,
       TAB_A.RETURN_FILE           ,
       TAB_A.RETURN_DIFF           ,
       TAB_A.RETURN_TESTCASES      ,
       TAB_A.RETURN_EVIDENCES      ,
       TAB_A.CLOSE_DATE            ,
       TAB_A.CLOSE_USER_ID         ,
       TAB_A.CLOSE_REVISION        ,
       TAB_A.ACCESS_AUTH           ,
       TAB_A.NOTE                  ,
       TAB_A.DISUSE_FLAG           ,
       TAB_A.LAST_UPDATE_TIMESTAMP ,
       TAB_A.LAST_UPDATE_USER 
FROM   F_FILE_MANAGEMENT TAB_A
LEFT JOIN G_FILE_MASTER TAB_B ON (TAB_A.FILE_ID = TAB_B.FILE_ID) 
WHERE  FILE_STATUS_ID 
IN     (SELECT FILE_STATUS_ID 
        FROM   F_MM_STATUS_MASTER 
        WHERE  DISUSE_FLAG = '0' 
        AND    DISP_FLAG_6 = 1 )   ;

CREATE OR REPLACE VIEW G_FILE_MANAGEMENT_JNL AS 
SELECT TAB_A.JOURNAL_SEQ_NO        ,
       TAB_A.JOURNAL_REG_DATETIME  ,
       TAB_A.JOURNAL_ACTION_CLASS  ,
       TAB_A.FILE_M_ID             ,
       TAB_A.FILE_STATUS_ID        ,
       TAB_A.FILE_ID               ,
       TAB_B.FILE_NAME_FULLPATH    ,
       TAB_A.REQUIRE_DATE          ,
       TAB_A.REQUIRE_USER_ID       ,
       TAB_A.REQUIRE_TICKET        ,
       TAB_A.REQUIRE_ABSTRUCT      ,
       TAB_A.REQUIRE_SCHEDULEDATE  ,
       TAB_A.ASSIGN_DATE           ,
       TAB_A.ASSIGN_USER_ID        ,
       TAB_A.ASSIGN_FILE           ,
       TAB_A.ASSIGN_REVISION       ,
       TAB_A.RETURN_DATE           ,
       TAB_A.RETURN_USER_ID        ,
       TAB_A.RETURN_FILE           ,
       TAB_A.RETURN_DIFF           ,
       TAB_A.RETURN_TESTCASES      ,
       TAB_A.RETURN_EVIDENCES      ,
       TAB_A.CLOSE_DATE            ,
       TAB_A.CLOSE_USER_ID         ,
       TAB_A.CLOSE_REVISION        ,
       TAB_A.ACCESS_AUTH           ,
       TAB_A.NOTE                  ,
       TAB_A.DISUSE_FLAG           ,
       TAB_A.LAST_UPDATE_TIMESTAMP ,
       TAB_A.LAST_UPDATE_USER 
FROM F_FILE_MANAGEMENT_JNL TAB_A
LEFT JOIN G_FILE_MASTER TAB_B ON (TAB_A.FILE_ID = TAB_B.FILE_ID) 
WHERE FILE_STATUS_ID 
IN    (SELECT FILE_STATUS_ID 
       FROM   F_MM_STATUS_MASTER 
       WHERE  DISUSE_FLAG = '0' 
       AND    DISP_FLAG_1 = 1 )    ;

CREATE OR REPLACE VIEW G_FILE_MANAGEMENT_UNION AS 
SELECT  TAB_A.FILE_M_ID             AS FILE_M_ID            ,
        TAB_A.FILE_STATUS_ID        AS FILE_STATUS_ID       ,
        TAB_A.FILE_ID               AS FILE_ID              ,
        TAB_A.RETURN_FILE           AS RETURN_FILE          ,
        TAB_A.CLOSE_DATE            AS CLOSE_DATE           ,
        TAB_A.RETURN_USER_ID        AS RETURN_USER_ID       ,
        TAB_A.CLOSE_REVISION        AS CLOSE_REVISION       ,
        TAB_A.ACCESS_AUTH           AS ACCESS_AUTH          ,
        TAB_A.NOTE                  AS NOTE                 ,
        TAB_A.DISUSE_FLAG           AS DISUSE_FLAG          ,
        TAB_A.LAST_UPDATE_TIMESTAMP AS LAST_UPDATE_TIMESTAMP,
        TAB_A.LAST_UPDATE_USER      AS LAST_UPDATE_USER
FROM F_FILE_MANAGEMENT TAB_A
WHERE  TAB_A.FILE_STATUS_ID IN (6)
UNION
SELECT -TAB_B.FILE_M_ID             AS FILE_M_ID            ,
        TAB_B.FILE_STATUS_ID        AS FILE_STATUS_ID       ,
        TAB_B.FILE_ID               AS FILE_ID              ,
        TAB_B.RETURN_FILE           AS RETURN_FILE          ,
        TAB_B.CLOSE_DATE            AS CLOSE_DATE           ,
        TAB_B.RETURN_USER_ID        AS RETURN_USER_ID       ,
        TAB_B.CLOSE_REVISION        AS CLOSE_REVISION       ,
        TAB_B.ACCESS_AUTH           AS ACCESS_AUTH          ,
        TAB_B.NOTE                  AS NOTE                 ,
        TAB_B.DISUSE_FLAG           AS DISUSE_FLAG          ,
        TAB_B.LAST_UPDATE_TIMESTAMP AS LAST_UPDATE_TIMESTAMP,
        TAB_B.LAST_UPDATE_USER      AS LAST_UPDATE_USER
FROM F_FILE_MANAGEMENT_INITIAL TAB_B
;

CREATE OR REPLACE VIEW G_FILE_MANAGEMENT_NEWEST AS 
SELECT TAB_A.FILE_M_ID             ,
       TAB_A.FILE_ID               ,
       TAB_A.RETURN_FILE           ,
       TAB_C.FILE_NAME_FULLPATH    ,
       TAB_A.CLOSE_DATE            ,
       TAB_A.RETURN_USER_ID        ,
       TAB_A.CLOSE_REVISION        ,
       TAB_A.ACCESS_AUTH           ,
       TAB_A.NOTE                  ,
       TAB_A.DISUSE_FLAG           ,
       TAB_A.LAST_UPDATE_TIMESTAMP ,
       TAB_A.LAST_UPDATE_USER      ,
       IF(TAB_A.CLOSE_DATE = (SELECT MAX(TAB_B.CLOSE_DATE) FROM G_FILE_MANAGEMENT_UNION TAB_B WHERE TAB_A.FILE_ID = TAB_B.FILE_ID AND TAB_B.DISUSE_FLAG='0'), "●", "") NEWEST_FLAG
FROM   G_FILE_MANAGEMENT_UNION TAB_A
LEFT JOIN G_FILE_MASTER TAB_C ON (TAB_A.FILE_ID = TAB_C.FILE_ID) 
WHERE TAB_C.DISUSE_FLAG='0'
;



UPDATE A_SEQUENCE SET MENU_ID=2100150005, DISP_SEQ=2100510001, NOTE=NULL, LAST_UPDATE_TIMESTAMP=STR_TO_DATE('2015/04/01 10:00:00.000000','%Y/%m/%d %H:%i:%s.%f') WHERE NAME='F_MM_STATUS_MASTER_RIC';
UPDATE A_SEQUENCE SET MENU_ID=2100150005, DISP_SEQ=2100510002, NOTE='for the history table.', LAST_UPDATE_TIMESTAMP=STR_TO_DATE('2015/04/01 10:00:00.000000','%Y/%m/%d %H:%i:%s.%f') WHERE NAME='F_MM_STATUS_MASTER_JSQ';
UPDATE A_SEQUENCE SET MENU_ID=2100150002, DISP_SEQ=2100510003, NOTE=NULL, LAST_UPDATE_TIMESTAMP=STR_TO_DATE('2015/04/01 10:00:00.000000','%Y/%m/%d %H:%i:%s.%f') WHERE NAME='F_DIR_MASTER_RIC';
UPDATE A_SEQUENCE SET MENU_ID=2100150002, DISP_SEQ=2100510004, NOTE='for the history table.', LAST_UPDATE_TIMESTAMP=STR_TO_DATE('2015/04/01 10:00:00.000000','%Y/%m/%d %H:%i:%s.%f') WHERE NAME='F_DIR_MASTER_JSQ';
UPDATE A_SEQUENCE SET MENU_ID=2100150003, DISP_SEQ=2100510005, NOTE=NULL, LAST_UPDATE_TIMESTAMP=STR_TO_DATE('2015/04/01 10:00:00.000000','%Y/%m/%d %H:%i:%s.%f') WHERE NAME='F_FILE_MASTER_RIC';
UPDATE A_SEQUENCE SET MENU_ID=2100150003, DISP_SEQ=2100510006, NOTE='for the history table.', LAST_UPDATE_TIMESTAMP=STR_TO_DATE('2015/04/01 10:00:00.000000','%Y/%m/%d %H:%i:%s.%f') WHERE NAME='F_FILE_MASTER_JSQ';
UPDATE A_SEQUENCE SET MENU_ID=2100150101, DISP_SEQ=2100510007, NOTE=NULL, LAST_UPDATE_TIMESTAMP=STR_TO_DATE('2015/04/01 10:00:00.000000','%Y/%m/%d %H:%i:%s.%f') WHERE NAME='F_FILE_MANAGEMENT_RIC';
UPDATE A_SEQUENCE SET MENU_ID=2100150101, DISP_SEQ=2100510008, NOTE='for the history table.', LAST_UPDATE_TIMESTAMP=STR_TO_DATE('2015/04/01 10:00:00.000000','%Y/%m/%d %H:%i:%s.%f') WHERE NAME='F_FILE_MANAGEMENT_JSQ';
UPDATE A_SEQUENCE SET MENU_ID=2100150001, DISP_SEQ=2100510009, NOTE=NULL, LAST_UPDATE_TIMESTAMP=STR_TO_DATE('2015/04/01 10:00:00.000000','%Y/%m/%d %H:%i:%s.%f') WHERE NAME='F_MATERIAL_IF_INFO_RIC';
UPDATE A_SEQUENCE SET MENU_ID=2100150001, DISP_SEQ=2100510010, NOTE='for the history table.', LAST_UPDATE_TIMESTAMP=STR_TO_DATE('2015/04/01 10:00:00.000000','%Y/%m/%d %H:%i:%s.%f') WHERE NAME='F_MATERIAL_IF_INFO_JSQ';
UPDATE A_SEQUENCE SET MENU_ID=NULL, DISP_SEQ=2100590001, NOTE=NULL, LAST_UPDATE_TIMESTAMP=STR_TO_DATE('2015/04/01 10:00:00.000000','%Y/%m/%d %H:%i:%s.%f') WHERE NAME='F_AUTO_RETURN_RIC';
UPDATE A_SEQUENCE SET MENU_ID=NULL, DISP_SEQ=2100590002, NOTE='for the history table.', LAST_UPDATE_TIMESTAMP=STR_TO_DATE('2015/04/01 10:00:00.000000','%Y/%m/%d %H:%i:%s.%f') WHERE NAME='F_AUTO_RETURN_JSQ';
UPDATE A_SEQUENCE SET MENU_ID=NULL, DISP_SEQ=2100590003, NOTE=NULL, LAST_UPDATE_TIMESTAMP=STR_TO_DATE('2015/04/01 10:00:00.000000','%Y/%m/%d %H:%i:%s.%f') WHERE NAME='F_FILE_MANAGEMENT_INITIAL_RIC';
UPDATE A_SEQUENCE SET MENU_ID=NULL, DISP_SEQ=2100590004, NOTE='for the history table.', LAST_UPDATE_TIMESTAMP=STR_TO_DATE('2015/04/01 10:00:00.000000','%Y/%m/%d %H:%i:%s.%f') WHERE NAME='F_FILE_MANAGEMENT_INITIAL_JSQ';
