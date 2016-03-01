REM   Script:   tadeo_tours.SQL
REM   Purpose:  Install Tadeo Tours System 
REM   Created:  By Felix Orduz <felix.orduz@gmail.com>, on 28-FEB-2016 
REM		for the course Programacion de base datos

REM   This script accepts 4 parameter - password for the accounts,
REM   name of default tablespace, name of temporary tablespace.


SET VERIFY OFF

ALTER SESSION SET NLS_LANGUAGE=AMERICAN;

UNDEFINE database
UNDEFINE username
UNDEFINE password
UNDEFINE default_tablespace
UNDEFINE temporal_tablespace


DEFINE database=&database
DEFINE username=&username
DEFINE password=&password
DEFINE default_tablespace=&default_tablespace
DEFINE temporal_tablespace=&temporal_tablespace

SPOOL create_tadeotours_schema

DROP USER &&username CASCADE;
CREATE USER &&username IDENTIFIED BY &&password;
ALTER USER &&username DEFAULT TABLESPACE &&default_tablespace
      QUOTA UNLIMITED ON &&default_tablespace;
ALTER USER &&username TEMPORARY TABLESPACE &&temporal_tablespace;

GRANT CREATE SESSION, CREATE TABLE, CREATE PROCEDURE
    , CREATE SEQUENCE, CREATE TRIGGER, CREATE VIEW
    , CREATE SYNONYM, ALTER SESSION, CREATE ANY INDEX, CREATE PUBLIC SYNONYM
TO  &&username;

GRANT EXECUTE ON SYS.DBMS_STATS TO &&username;

REM  connect to user account and invoke the scripts that create schema objects.

CONNECT &&username/&&password@&&database
@tadeo_tours_ddl
@tadeo_tours_sample_data

SPOOL OFF
