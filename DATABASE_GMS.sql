create table shift(
shift_id int primary key,
shift_name varchar(20));

create table package(
package_id int primary key,
amount decimal(9,2),
duration varchar(30));

Create table Trainer(
trainer_id int primary key,
trainer_name varchar(20),
t_gender varchar(10),
shift_id int,

constraint  fk_t foreign key (shift_id)
references shift (shift_id));

create table payment(
pay_id int primary key,
user_id int,
pay_date date,
package_id int,
paid_amount double(9,2),

constraint fk_u foreign key (user_id)
references  user (user_id),

constraint fk_p foreign key (package_id)
references package (package_id));


create table user (
user_id int primary key,
u_name varchar(30),
reg_date date,
age int,
weight double(5,2),
height decimal(5,2),
u_gender varchar(10),
package_id int,
trainer_id int,
shift_id int,

constraint fk_pck foreign key (package_id)
references package (package_id),

constraint fk_tr foreign key (trainer_id)
references trainer (trainer_id),

constraint fk_sh foreign key (shift_id)
references shift (shift_id));


insert into user values(1001,'Monika','2019-10-23',
27,45,163,'F',11,114,2),

(1002,'Dinesh','2020-01-02',
25,50,155,'M',12,111,1),

(1003,'Shrutika','2020-06-10',
20,70,198,'F',13,114,2),

(1004,'Uddesh','2020-06-21',
30,90,175,'M',13,112,2),

(1005,'Rutik','2020-07-07',
35,83,183,'M',12,113,3),

(1006,'Anisha','2020-07-27',
29,75,189,'F',11,111,1),

(1007,'Ramesh','2020-12-10',
22,60,167,'M',11,112,2),

(1008,'Rupashri','2021-04-07',
24,65,159,'F',12,111,1),

(1009,'Sumit','2021-06-12',
37,73,170,'M',13,115,1),

(1010,'Veer','2021-08-05',
39,79,156,'M',13,113,3),

(1011,'Pratik','2022-09-09',
21,84,194,'M',12,111,1),

(1012,'Akash','2022-09-11',
28,76,173,'M',12,111,1),

(1013,'Sonali','2022-10-23',
33,608,169,'F',11,115,1),

(1014,'Ramjesh','2022-12-15',
26,55,154,'M',12,114,2);


insert into trainer values
(111,'Sachin','M',1),
(112,'Rahul','M',2),
(113,'Abhi','M',3),
(114,'Vaishali','F',2),
(115,'Manisha','F',1);

insert into package values
(11,1700,'1 month'),
(12,3500,'3 month'),
(13,5500,'6 month');

insert into payment values
('MO1001',1001,'2019-10-23',
11,1700),
('DI1002',1002,'2020-01-02',
12,3500),
('SH1003',1003,'2020-06-10',
13,5500),
('UD1004',1004,'2020-06-21',
13,5500),
('RU1005',1005,'2020-07-07',
12,3500),
('AN1006',1006,'2020-07-27',
11,1700),
('RA1007',1007,'2020-12-10',
11,1700),
('RU1008',1008,'2021-04-07',
12,3500),
('SU1009',1009,'2021-06-12',
13,5500),
('VE1010',1010,'2021-08-05',
13,5500),
('PR1011',1011,'2022-09-09',
12,3500),
('AK1012',1012,'2022-09-11',
12,3500),
('SO1013',1013,'2022-10-23',
11,1700),
('RA1014',1014,'2022-12-15',
12,3500);

insert into shift values(1,'Morning'),
(2,'Evening'),
(3,'Night');



-- Payment Table:-
-- mysql> select * from payment;
+--------+---------+------------+------------+-------------+
| pay_id | user_id | pay_date   | package_id | paid_amount |
+--------+---------+------------+------------+-------------+
| AK1012 |    1012 | 2022-09-11 |         12 |     3500.00 |
| AN1006 |    1006 | 2020-07-27 |         11 |     1700.00 |
| DI1002 |    1002 | 2020-01-02 |         12 |     3500.00 |
| MO1001 |    1001 | 2019-10-23 |         11 |     1700.00 |
| PR1011 |    1011 | 2022-09-09 |         12 |     3500.00 |
| RA1007 |    1007 | 2020-12-10 |         11 |     1700.00 |
| RA1014 |    1014 | 2022-12-15 |         12 |     3500.00 |
| RU1005 |    1005 | 2020-07-07 |         12 |     3500.00 |
| RU1008 |    1008 | 2021-04-07 |         12 |     3500.00 |
| SH1003 |    1003 | 2020-06-10 |         13 |     5500.00 |
| SO1013 |    1013 | 2022-10-23 |         11 |     1700.00 |
| SU1009 |    1009 | 2021-06-12 |         13 |     5500.00 |
| UD1004 |    1004 | 2020-06-21 |         13 |     5500.00 |
| VE1010 |    1010 | 2021-08-05 |         13 |     5500.00 |
+--------+---------+------------+------------+-------------+
14 rows in set (0.00 sec)

mysql> select * from user;
+---------+----------+------------+------+--------+--------+----------+------------+------------+----------+
| user_id | u_name   | reg_date   | age  | weight | height | u_gender | package_id | trainer_id | shift_id |
+---------+----------+------------+------+--------+--------+----------+------------+------------+----------+
|    1001 | Monika   | 2019-10-23 |   27 |  45.00 | 163.00 | F        |         11 |        114 |        2 |
|    1002 | Dinesh   | 2020-01-02 |   25 |  50.00 | 155.00 | M        |         12 |        111 |        1 |
|    1003 | Shrutika | 2020-06-10 |   20 |  70.00 | 198.00 | F        |         13 |        114 |        2 |
|    1004 | Uddesh   | 2020-06-21 |   30 |  90.00 | 175.00 | M        |         13 |        112 |        2 |
|    1005 | Rutik    | 2020-07-07 |   35 |  83.00 | 183.00 | M        |         12 |        113 |        3 |
|    1006 | Anisha   | 2020-07-27 |   29 |  75.00 | 189.00 | F        |         11 |        111 |        1 |
|    1007 | Ramesh   | 2020-12-10 |   22 |  60.00 | 167.00 | M        |         11 |        112 |        2 |
|    1008 | Rupashri | 2021-04-07 |   24 |  65.00 | 159.00 | F        |         12 |        111 |        1 |
|    1009 | Sumit    | 2021-06-12 |   37 |  73.00 | 170.00 | M        |         13 |        115 |        1 |
|    1010 | Veer     | 2021-08-05 |   39 |  79.00 | 156.00 | M        |         13 |        113 |        3 |
|    1011 | Pratik   | 2022-09-09 |   21 |  84.00 | 194.00 | M        |         12 |        111 |        1 |
|    1012 | Akash    | 2022-09-11 |   28 |  76.00 | 173.00 | M        |         12 |        111 |        1 |
|    1013 | Sonali   | 2022-10-23 |   33 | 608.00 | 169.00 | F        |         11 |        115 |        1 |
|    1014 | Ramjesh  | 2022-12-15 |   26 |  55.00 | 154.00 | M        |         12 |        114 |        2 |
+---------+----------+------------+------+--------+--------+----------+------------+------------+----------+
14 rows in set (0.00 sec)

mysql> select * from trainer;
+------------+--------------+----------+----------+
| trainer_id | trainer_name | t_gender | shift_id |
+------------+--------------+----------+----------+
|        111 | Sachin       | M        |        1 |
|        112 | Rahul        | M        |        2 |
|        113 | Abhi         | M        |        3 |
|        114 | Vaishali     | F        |        2 |
|        115 | Manisha      | F        |        1 |
+------------+--------------+----------+----------+
5 rows in set (0.00 sec)

mysql> select * from shift;
+----------+------------+
| shift_id | shift_name |
+----------+------------+
|        1 | Morning    |
|        2 | Evening    |
|        3 | Night      |
+----------+------------+
3 rows in set (0.00 sec)

mysql> desc package;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| package_id | int          | NO   | PRI | NULL    |       |
| amount     | decimal(9,2) | YES  |     | NULL    |       |
| duration   | varchar(30)  | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)



