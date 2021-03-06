
-- -------------------------------------------------------
--　収集機能パースタイプマスタ
-- -------------------------------------------------------
CREATE TABLE B_PARSE_TYPE_MASTER
(
PARSE_TYPE_ID                     %INT%                             ,
PARSE_TYPE_NAME                   %VARCHR%(64)                      ,
DISP_SEQ                          %INT%                             , -- 表示順序
ACCESS_AUTH                       TEXT                              ,
NOTE                              %VARCHR%(4000)                    , -- 備考
DISUSE_FLAG                       %VARCHR%(1)                       , -- 廃止フラグ
LAST_UPDATE_TIMESTAMP             %DATETIME6%                       , -- 最終更新日時
LAST_UPDATE_USER                  %INT%                             , -- 最終更新ユーザ
PRIMARY KEY (PARSE_TYPE_ID)
)%%TABLE_CREATE_OUT_TAIL%%;

CREATE TABLE B_PARSE_TYPE_MASTER_JNL
(
JOURNAL_SEQ_NO                    %INT%                             , -- 履歴用シーケンス
JOURNAL_REG_DATETIME              %DATETIME6%                       , -- 履歴用変更日時
JOURNAL_ACTION_CLASS              %VARCHR%(8)                       , -- 履歴用変更種別

PARSE_TYPE_ID                     %INT%                             ,
PARSE_TYPE_NAME                   %VARCHR%(64)                      ,
DISP_SEQ                          %INT%                             , -- 表示順序
ACCESS_AUTH                       TEXT                              ,
NOTE                              %VARCHR%(4000)                    , -- 備考
DISUSE_FLAG                       %VARCHR%(1)                       , -- 廃止フラグ
LAST_UPDATE_TIMESTAMP             %DATETIME6%                       , -- 最終更新日時
LAST_UPDATE_USER                  %INT%                             , -- 最終更新ユーザ
PRIMARY KEY (JOURNAL_SEQ_NO)
)%%TABLE_CREATE_OUT_TAIL%%;


-- -------------------------------------------------------
-- 収集機能ステータスマスタ
-- -------------------------------------------------------
CREATE TABLE B_COLLECT_STATUS
(
COLLECT_STATUS_ID                 %INT%                             ,
COLLECT_STATUS_NAME               %VARCHR%(64)                      ,
DISP_SEQ                          %INT%                             , -- 表示順序
ACCESS_AUTH                       TEXT                              ,
NOTE                              %VARCHR%(4000)                    , -- 備考
DISUSE_FLAG                       %VARCHR%(1)                       , -- 廃止フラグ
LAST_UPDATE_TIMESTAMP             %DATETIME6%                       , -- 最終更新日時
LAST_UPDATE_USER                  %INT%                             , -- 最終更新ユーザ
PRIMARY KEY (COLLECT_STATUS_ID)
)%%TABLE_CREATE_OUT_TAIL%%;

CREATE TABLE B_COLLECT_STATUS_JNL
(
JOURNAL_SEQ_NO                    %INT%                             , -- 履歴用シーケンス
JOURNAL_REG_DATETIME              %DATETIME6%                       , -- 履歴用変更日時
JOURNAL_ACTION_CLASS              %VARCHR%(8)                       , -- 履歴用変更種別

COLLECT_STATUS_ID                 %INT%                             ,
COLLECT_STATUS_NAME               %VARCHR%(64)                      ,
DISP_SEQ                          %INT%                             , -- 表示順序
ACCESS_AUTH                       TEXT                              ,
NOTE                              %VARCHR%(4000)                    , -- 備考
DISUSE_FLAG                       %VARCHR%(1)                       , -- 廃止フラグ
LAST_UPDATE_TIMESTAMP             %DATETIME6%                       , -- 最終更新日時
LAST_UPDATE_USER                  %INT%                             , -- 最終更新ユーザ
PRIMARY KEY (JOURNAL_SEQ_NO)
)%%TABLE_CREATE_OUT_TAIL%%;


-- -------------------------------------------------------
-- Ansible共通　収集インターフェース
-- -------------------------------------------------------

CREATE TABLE C_COLLECT_IF_INFO
(
COLLECT_IF_INFO_ID                %INT%                             ,
HOSTNAME                          %VARCHR%(128)                     ,
IP_ADDRESS                        %VARCHR%(15)                      ,
HOST_DESIGNATE_TYPE_ID            %INT%                             ,
PROTOCOL                          %VARCHR%(8)                       ,
PORT                              %INT%                             ,
LOGIN_USER                        %VARCHR%(30)                      ,
LOGIN_PW                          %VARCHR%(60)                      ,
LOGIN_PW_ANSIBLE_VAULT            %VARCHR%(512)                     ,

DISP_SEQ                          %INT%                             , -- 表示順序
ACCESS_AUTH                       TEXT                              ,
NOTE                              %VARCHR%(4000)                    , -- 備考
DISUSE_FLAG                       %VARCHR%(1)                       , -- 廃止フラグ
LAST_UPDATE_TIMESTAMP             %DATETIME6%                       , -- 最終更新日時
LAST_UPDATE_USER                  %INT%                             , -- 最終更新ユーザ
PRIMARY KEY (COLLECT_IF_INFO_ID)
)%%TABLE_CREATE_OUT_TAIL%%;

CREATE TABLE C_COLLECT_IF_INFO_JNL
(
JOURNAL_SEQ_NO                    %INT%                             , -- 履歴用シーケンス
JOURNAL_REG_DATETIME              %DATETIME6%                       , -- 履歴用変更日時
JOURNAL_ACTION_CLASS              %VARCHR%(8)                       , -- 履歴用変更種別

COLLECT_IF_INFO_ID                %INT%                             ,
HOSTNAME                          %VARCHR%(128)                     ,
IP_ADDRESS                        %VARCHR%(15)                      ,
HOST_DESIGNATE_TYPE_ID            %INT%                             ,
PROTOCOL                          %VARCHR%(8)                       ,
PORT                              %INT%                             ,
LOGIN_USER                        %VARCHR%(30)                      ,
LOGIN_PW                          %VARCHR%(60)                      ,
LOGIN_PW_ANSIBLE_VAULT            %VARCHR%(512)                     ,

DISP_SEQ                          %INT%                             , -- 表示順序
ACCESS_AUTH                       TEXT                              ,
NOTE                              %VARCHR%(4000)                    , -- 備考
DISUSE_FLAG                       %VARCHR%(1)                       , -- 廃止フラグ
LAST_UPDATE_TIMESTAMP             %DATETIME6%                       , -- 最終更新日時
LAST_UPDATE_USER                  %INT%                             , -- 最終更新ユーザ
PRIMARY KEY (JOURNAL_SEQ_NO)
)%%TABLE_CREATE_OUT_TAIL%%;

-- -------------------------------------------------------
-- Ansible共通　収集項目値管理
-- -------------------------------------------------------
CREATE TABLE B_ANS_CMDB_LINK
(
COLUMN_ID                         %INT%                             ,
MENU_ID                           %INT%                             ,
COLUMN_LIST_ID                    %INT%                             ,
FILE_PREFIX                       %VARCHR%(256)                     ,
VARS_NAME                         %VARCHR%(256)                     ,
VRAS_MEMBER_NAME                  %VARCHR%(256)                     ,
PARSE_TYPE_ID                     %INT%                             ,

DISP_SEQ                          %INT%                             , -- 表示順序
ACCESS_AUTH                       TEXT                              ,
NOTE                              %VARCHR%(4000)                    , -- 備考
DISUSE_FLAG                       %VARCHR%(1)                       , -- 廃止フラグ
LAST_UPDATE_TIMESTAMP             %DATETIME6%                       , -- 最終更新日時
LAST_UPDATE_USER                  %INT%                             , -- 最終更新ユーザ
PRIMARY KEY (COLUMN_ID)
)%%TABLE_CREATE_OUT_TAIL%%;

CREATE TABLE B_ANS_CMDB_LINK_JNL
(
JOURNAL_SEQ_NO                    %INT%                             , -- 履歴用シーケンス
JOURNAL_REG_DATETIME              %DATETIME6%                       , -- 履歴用変更日時
JOURNAL_ACTION_CLASS              %VARCHR%(8)                       , -- 履歴用変更種別

COLUMN_ID                         %INT%                             ,
MENU_ID                           %INT%                             ,
COLUMN_LIST_ID                    %INT%                             ,
FILE_PREFIX                       %VARCHR%(256)                     ,
VARS_NAME                         %VARCHR%(256)                     ,
VRAS_MEMBER_NAME                  %VARCHR%(256)                     ,
PARSE_TYPE_ID                     %INT%                             ,

DISP_SEQ                          %INT%                             , -- 表示順序
ACCESS_AUTH                       TEXT                              ,
NOTE                              %VARCHR%(4000)                    , -- 備考
DISUSE_FLAG                       %VARCHR%(1)                       , -- 廃止フラグ
LAST_UPDATE_TIMESTAMP             %DATETIME6%                       , -- 最終更新日時
LAST_UPDATE_USER                  %INT%                             , -- 最終更新ユーザ
PRIMARY KEY (JOURNAL_SEQ_NO)
)%%TABLE_CREATE_OUT_TAIL%%;

-- *****************************************************************************
-- *** Ansible共通　収集項目値管理VIEW                                         ***
-- *****************************************************************************

CREATE VIEW D_ANS_CMDB_LINK AS 
SELECT DISTINCT
  TAB_A.* ,
  TAB_B.MENU_GROUP_ID,
  TAB_B.MENU_GROUP_ID AS MENU_GROUP_ID_CLONE, 
  TAB_C.MENU_GROUP_NAME ,
  TAB_A.MENU_ID AS MENU_ID_CLONE,
  TAB_A.MENU_ID AS MENU_ID_CLONE_02,
  TAB_B.MENU_NAME,
  TAB_A.COLUMN_LIST_ID AS REST_COLUMN_LIST_ID,
  TAB_D.COL_NAME,
  TAB_D.COL_TITLE,
  TAB_D.COL_CLASS,
  TAB_E.TABLE_NAME
FROM (
        (
          B_ANS_CMDB_LINK TAB_A 
          LEFT JOIN A_MENU_LIST TAB_B ON(TAB_A.MENU_ID = TAB_B.MENU_ID)
        ) 
        LEFT JOIN A_MENU_GROUP_LIST TAB_C ON(TAB_B.MENU_GROUP_ID = TAB_C.MENU_GROUP_ID)
        LEFT JOIN B_CMDB_MENU_COLUMN TAB_D ON(TAB_A.COLUMN_LIST_ID = TAB_D.COLUMN_LIST_ID)
        LEFT JOIN F_MENU_TABLE_LINK TAB_E ON(TAB_A.MENU_ID = TAB_E.MENU_ID)
    )
;

CREATE VIEW D_ANS_CMDB_LINK_JNL AS 
SELECT DISTINCT
  TAB_A.* ,
  TAB_B.MENU_GROUP_ID,
  TAB_B.MENU_GROUP_ID AS MENU_GROUP_ID_CLONE, 
  TAB_C.MENU_GROUP_NAME ,
  TAB_A.MENU_ID AS MENU_ID_CLONE,
  TAB_A.MENU_ID AS MENU_ID_CLONE_02,
  TAB_B.MENU_NAME,
  TAB_A.COLUMN_LIST_ID AS REST_COLUMN_LIST_ID,
  TAB_D.COL_NAME,
  TAB_D.COL_TITLE,
  TAB_D.COL_CLASS,
  TAB_E.TABLE_NAME
FROM (
        (
          B_ANS_CMDB_LINK_JNL TAB_A 
          LEFT JOIN A_MENU_LIST TAB_B ON(TAB_A.MENU_ID = TAB_B.MENU_ID)
        ) 
        LEFT JOIN A_MENU_GROUP_LIST TAB_C ON(TAB_B.MENU_GROUP_ID = TAB_C.MENU_GROUP_ID)
        LEFT JOIN B_CMDB_MENU_COLUMN TAB_D ON(TAB_A.COLUMN_LIST_ID = TAB_D.COLUMN_LIST_ID)
        LEFT JOIN F_MENU_TABLE_LINK TAB_E ON(TAB_A.MENU_ID = TAB_E.MENU_ID)
    )
;

-- -------------------------------------------------------
-- ***  Ansible共通　収集項目値管理の「メニューグループ:メニュー:項目」SHEET_TYPE=4用
-- -------------------------------------------------------
CREATE VIEW D_CMDB_MENU_COLUMN_SHEET_TYPE_4 AS
SELECT
  TAB_B.*,
  TAB_A.ACCESS_AUTH AS ACCESS_AUTH_01   ,
  TAB_A.ACCESS_AUTH_01 AS ACCESS_AUTH_02,
  TAB_A.ACCESS_AUTH_02 AS ACCESS_AUTH_03
FROM
  D_CMDB_MENU_LIST_SHEET_TYPE_1         TAB_A
  LEFT JOIN B_CMDB_MENU_COLUMN TAB_B ON (TAB_A.MENU_ID = TAB_B.MENU_ID)
WHERE
  TAB_B.DISUSE_FLAG = '0'
;

CREATE VIEW D_CMDB_MENU_COLUMN_SHEET_TYPE_4_JNL AS
SELECT
  TAB_B.*,
  TAB_A.ACCESS_AUTH AS ACCESS_AUTH_01   ,
  TAB_A.ACCESS_AUTH_01 AS ACCESS_AUTH_02,
  TAB_A.ACCESS_AUTH_02 AS ACCESS_AUTH_03
FROM
  D_CMDB_MENU_LIST_SHEET_TYPE_1_JNL         TAB_A
  LEFT JOIN B_CMDB_MENU_COLUMN_JNL TAB_B ON (TAB_A.MENU_ID = TAB_B.MENU_ID)
WHERE
  TAB_B.DISUSE_FLAG = '0'
;

