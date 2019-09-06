-- customized prompt
SET LINES 152 pages 999 TIME ON timing ON
ALTER SESSION SET nls_date_format='DD-MON-YYYY HH24:MI:SS';
col HOST_NAME format a22
col SHUTDOWN_PENDING format a17
SELECT INSTANCE_NAME,HOST_NAME,VERSION,STATUS,SHUTDOWN_PENDING,DATABASE_STATUS,INSTANCE_ROLE FROM v$instance;
SELECT DBID,NAME,DB_UNIQUE_NAME ,CREATED,LOG_MODE,OPEN_MODE, DATABASE_ROLE,FORCE_LOGGING FROM v$database;
