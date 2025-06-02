CREATE DATABASE IF NOT EXISTS scscf;
create user 'scscf'@'%' identified by 'heslo';
GRANT SELECT, INSERT, UPDATE, DELETE ON `scscf`.* TO 'scscf'@'%';


