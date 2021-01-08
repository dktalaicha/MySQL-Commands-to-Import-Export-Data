//TO CONNECT MYSQL
mysql -u USERNAME -P

show databases;
use DATABASENAME;
show tables;


//TO CREATE NEW DATABASE
mysqladmin -u USERNAME -P create DATABASENAME

//TO DROP DATABASE
mysqladmin -u USERNAME -P drop DATABASENAME



//TO IMPORT
mysql -u USERNAME -p DATABASENAME <PATH_OF_DUMP_FILE

FOR EAMPLE
mysql -u admin -p admin123 dbtest <c:/test.mysql

//TO EXPORT
mysqldump -u USERNAME -p DATABASENAME >PATH

FOR EAMPLE
mysqldump -u admin -p admin123 dbtest >c:/test.mysql


//TO CREATE A NEW USER
CREATE USER ‘USERNAME’  IDENTIFIED BY ‘PASSWORD’;

//GRANT ALL PRIILEGES TO USER
grant all privileges to 'USERNAME'@'localhost';


//GRANT ALL PRIILEGES TO USER TO PARTICULAR DATABASE
grant all privileges on DATABASENAME.* to 'USERNAME'@'localhost';


//GRANT ONLY SELECT PRIILEGES TO USER TO PARTICULAR DATABASE
grant select on DATABASENAME.* to 'USERNAME'@'localhost';