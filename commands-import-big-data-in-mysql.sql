Follow below steps to import big data in mysql:

1. Create the table with matching data types of csv file, usually with INT and TEXT datatypes only.

2. Open terminal or command prompt and login to mysql with below command.

$ mysql -u root -p

Note that root is my username for mysql, change it with your actual username.

if you are not able to login to mysql with correct username and password through command prompt,
then you need to set the path of mysql. Search on google for your operating system how to set the paths.

3. If you are successfully logged to mysql, then set the global variables by using below command so that data can be imported from local folder.

$ mysql> SET GLOBAL local_infile=1;
Query OK, 0 rows affected (0.00 sec)

4. Quit current server:

$ mysql> quit
Bye

5. Connect to the server with local-infile system variable.

$ mysql --local-infile=1 -u root -p

6. Use your Database and load the file into the table:

mysql> USE case_8_swiggy;

Note that "case_8_swiggy" is my Database name, please your database name.

mysql> LOAD DATA LOCAL INFILE '/home/dinesh/Data-Science/MySQL/Case8-SwiggyCase/PostDiwaliSwiggyCaseDatasetDiwaliSales.csv'
INTO TABLE post_diwali_swiggy
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

Note that "post_diwali_swiggy" is my table name, use your table name.

7. Now check if data has been imported or not.

SELECT * FROM post_diwali_swiggy LIMIT 20;

8. If data has been imported successfully with 100% accuracy without error, then alter the table to update the datatypes etc.
