CREATE DATABASE IF NOT EXISTS pcscf;
create user 'pcscf'@'%' identified by 'heslo';
GRANT SELECT, INSERT, UPDATE, DELETE ON 'pcscf'.* TO 'pcscf'@'%';


