CREATE USER 'ITA_USER' IDENTIFIED BY 'ITA_PASSWD';
CREATE USER 'ITA_USER'@'localhost' IDENTIFIED BY 'ITA_PASSWD';
CREATE DATABASE ITA_DB CHARACTER SET utf8;
GRANT ALL ON ITA_DB.* TO 'ITA_USER'@'%' WITH GRANT OPTION;
GRANT ALL ON ITA_DB.* TO 'ITA_USER'@'localhost' WITH GRANT OPTION;

