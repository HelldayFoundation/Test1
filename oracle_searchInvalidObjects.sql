-- informations about invalid objects
select USERNAME,STATUS, count(*) from v$session where username is not null group by USERNAME,STATUS order by count(*) desc;
select OWNER,OBJECT_TYPE, count(*) from dba_objects where status='INVALID' group by OWNER,OBJECT_TYPE order by count(*);

