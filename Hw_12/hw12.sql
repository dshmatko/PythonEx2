postgres=# \l
                                  List of databases
    Name    |  Owner   | Encoding |   Collate   |    Ctype    |   Access privileges   
------------+----------+----------+-------------+-------------+-----------------------
 journal_db | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | 
 postgres   | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | 
 template0  | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
            |          |          |             |             | postgres=CTc/postgres
 template1  | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
            |          |          |             |             | postgres=CTc/postgres
 test1112   | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | 
(5 rows)

postgres=# \l
                                  List of databases
    Name    |  Owner   | Encoding |   Collate   |    Ctype    |   Access privileges   
------------+----------+----------+-------------+-------------+-----------------------
 journal_db | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | 
 postgres   | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | 
 template0  | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
            |          |          |             |             | postgres=CTc/postgres
 template1  | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
            |          |          |             |             | postgres=CTc/postgres
 test1112   | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | 
(5 rows)

postgres=# \c journal_db 
You are now connected to database "journal_db" as user "postgres".
journal_db=# \d
               List of relations
 Schema |      Name       |   Type   |  Owner   
--------+-----------------+----------+----------
 public | classes         | table    | postgres
 public | classes_id_seq  | sequence | postgres
 public | students        | table    | postgres
 public | students_id_seq | sequence | postgres
 public | teachers        | table    | postgres
 public | teachers_id_seq | sequence | postgres
(6 rows)

journal_db=# \dt
          List of relations
 Schema |   Name   | Type  |  Owner   
--------+----------+-------+----------
 public | classes  | table | postgres
 public | students | table | postgres
 public | teachers | table | postgres
(3 rows)

journal_db=# SELECT FROM * studen

journal_db=# SELECT FROM * studen

journal_db=# SELECT FROM * students ;
ERROR:  syntax error at or near "*"
LINE 1: SELECT FROM * students ;
                    ^
journal_db=# SELECT * FROM students;
 id | first_name | last_name | class_id 
----+------------+-----------+----------
  1 | Anatoliy   | Laktionov |        3
  2 | Ivan       | Novikov   |        3
  3 | Nikolay    | Petrov    |        4
(3 rows)

journal_db=# SELECT * FROM teachers
journal_db-# ;
 id | first_name | last_name 
----+------------+-----------
  1 | Ivan       | Petrov
  2 | Petr       | Ivanov
  3 | Alexandr   | Sidorov
(3 rows)

journal_db=# SELECT * FROM classes;
 id | class_name | classroom_teacher 
----+------------+-------------------
(0 rows)

journal_db=# insert INTO students (first_name , last_name, class_id) VALUES ('Anatoliy', 'Laktionov', '3') , ('Ivan', 'Novikov','3') , ('Nikolay','Petrov','4') ;
INSERT 0 3
journal_db=# insert INTO students (first_name , last_name, class_id) VALUES ('Anatoliy', 'Laktionov', '3') , ('Ivan', 'Novikov','3') , ('Nikolay','Petrov','4') ;
INSERT 0 3
journal_db=# SELECT *

journal_db=# SELECT * FROM students;
 id | first_name | last_name | class_id 
----+------------+-----------+----------
  1 | Anatoliy   | Laktionov |        3
  2 | Ivan       | Novikov   |        3
  3 | Nikolay    | Petrov    |        4
  4 | Anatoliy   | Laktionov |        3
  5 | Ivan       | Novikov   |        3
  6 | Nikolay    | Petrov    |        4
  7 | Anatoliy   | Laktionov |        3
  8 | Ivan       | Novikov   |        3
  9 | Nikolay    | Petrov    |        4
(9 rows)

journal_db=# SELECT last_name FROM students WHERE id > 5;            
 last_name 
-----------
 Petrov
 Laktionov
 Novikov
 Petrov
(4 rows)




journal_db=# insert INTO classes (class_name , classroom_teacher) VALUES ('3', 'Dmitriy Potashkin') , ('4', 'Alexandr Goreev')  ;                                          
INSERT 0 2
journal_db=# SELECT * FROM classes;
 id | class_name | classroom_teacher 
----+------------+-------------------
  1 | 3          | Dmitriy Potashkin
  2 | 4          | Alexandr Goreev
(2 rows)


journal_db=# insert INTO classes (class_name , classroom_teacher) VALUES ('3', 'Roma Zerkalov') , ('4', 'Anatoliy Pupkin')  ;                                 
INSERT 0 2



journal_db=# SELECT students.first_name, students.last_name, students.class_id, classes.id, classes.class_name, classes.classroom_teacher FROM students INNER JOIN classes ON students.class_id = classes.id; 
 first_name | last_name | class_id | id | class_name | classroom_teacher 
------------+-----------+----------+----+------------+-------------------
 Ivan       | Novikov   |        3 |  3 | 3          | Roma Zerkalov
 Anatoliy   | Laktionov |        3 |  3 | 3          | Roma Zerkalov
 Ivan       | Novikov   |        3 |  3 | 3          | Roma Zerkalov
 Anatoliy   | Laktionov |        3 |  3 | 3          | Roma Zerkalov
 Ivan       | Novikov   |        3 |  3 | 3          | Roma Zerkalov
 Anatoliy   | Laktionov |        3 |  3 | 3          | Roma Zerkalov
 Nikolay    | Petrov    |        4 |  4 | 4          | Anatoliy Pupkin
 Nikolay    | Petrov    |        4 |  4 | 4          | Anatoliy Pupkin
 Nikolay    | Petrov    |        4 |  4 | 4          | Anatoliy Pupkin
(9 rows)



journal_db=# SELECT students.first_name, students.last_name, classes.class_name, classes.classroom_teacher FROM students INNER JOIN classes ON students.class_id = classes.id;                                
 first_name | last_name | class_name | classroom_teacher 
------------+-----------+------------+-------------------
 Ivan       | Novikov   | 3          | Roma Zerkalov
 Anatoliy   | Laktionov | 3          | Roma Zerkalov
 Ivan       | Novikov   | 3          | Roma Zerkalov
 Anatoliy   | Laktionov | 3          | Roma Zerkalov
 Ivan       | Novikov   | 3          | Roma Zerkalov
 Anatoliy   | Laktionov | 3          | Roma Zerkalov
 Nikolay    | Petrov    | 4          | Anatoliy Pupkin
 Nikolay    | Petrov    | 4          | Anatoliy Pupkin
 Nikolay    | Petrov    | 4          | Anatoliy Pupkin
(9 rows)




journal_db=# SELECT students.id ,students.first_name, students.last_name, classes.class_name, classes.classroom_teacher FROM students INNER JOIN classes ON students.class_id = classes.id ORDER BY classes.class_name ; 
 id | first_name | last_name | class_name | classroom_teacher 
----+------------+-----------+------------+-------------------
  8 | Ivan       | Novikov   | 3          | Roma Zerkalov
  7 | Anatoliy   | Laktionov | 3          | Roma Zerkalov
  5 | Ivan       | Novikov   | 3          | Roma Zerkalov
  4 | Anatoliy   | Laktionov | 3          | Roma Zerkalov
  2 | Ivan       | Novikov   | 3          | Roma Zerkalov
  1 | Anatoliy   | Laktionov | 3          | Roma Zerkalov
  9 | Nikolay    | Petrov    | 4          | Anatoliy Pupkin
  6 | Nikolay    | Petrov    | 4          | Anatoliy Pupkin
  3 | Nikolay    | Petrov    | 4          | Anatoliy Pupkin
(9 rows)

journal_db=# SELECT students.id ,students.first_name, students.last_name, classes.class_name, classes.classroom_teacher FROM students INNER JOIN classes ON students.class_id = classes.id WHERE students.id > 3; 
 id | first_name | last_name | class_name | classroom_teacher 
----+------------+-----------+------------+-------------------
  8 | Ivan       | Novikov   | 3          | Roma Zerkalov
  7 | Anatoliy   | Laktionov | 3          | Roma Zerkalov
  5 | Ivan       | Novikov   | 3          | Roma Zerkalov
  4 | Anatoliy   | Laktionov | 3          | Roma Zerkalov
  9 | Nikolay    | Petrov    | 4          | Anatoliy Pupkin
  6 | Nikolay    | Petrov    | 4          | Anatoliy Pupkin
(6 rows)



journal_db=# SELECT students.id ,students.first_name, students.last_name, classes.class_name, classes.classroom_teacher FROM students INNER JOIN classes ON students.class_id = classes.id WHERE classes.class_name = '3'; 
 id | first_name | last_name | class_name | classroom_teacher 
----+------------+-----------+------------+-------------------
  1 | Anatoliy   | Laktionov | 3          | Roma Zerkalov
  2 | Ivan       | Novikov   | 3          | Roma Zerkalov
  4 | Anatoliy   | Laktionov | 3          | Roma Zerkalov
  5 | Ivan       | Novikov   | 3          | Roma Zerkalov
  7 | Anatoliy   | Laktionov | 3          | Roma Zerkalov
  8 | Ivan       | Novikov   | 3          | Roma Zerkalov
(6 rows)



journal_db=# SELECT students.id ,students.first_name, students.last_name, classes.class_name, classes.classroom_teacher FROM students INNER JOIN classes ON students.class_id = classes.id WHERE classes.classroom_teacher = 'Anatoliy Pupkin'; 
 id | first_name | last_name | class_name | classroom_teacher 
----+------------+-----------+------------+-------------------
  3 | Nikolay    | Petrov    | 4          | Anatoliy Pupkin
  6 | Nikolay    | Petrov    | 4          | Anatoliy Pupkin
  9 | Nikolay    | Petrov    | 4          | Anatoliy Pupkin
(3 rows)



journal_db=# SELECT students.id ,students.first_name, students.last_name, classes.class_name, classes.classroom_teacher FROM students INNER JOIN classes ON students.class_id = classes.id WHERE classes.class_name = '3' ORDER BY students.id DESC; 
 id | first_name | last_name | class_name | classroom_teacher 
----+------------+-----------+------------+-------------------
  8 | Ivan       | Novikov   | 3          | Roma Zerkalov
  7 | Anatoliy   | Laktionov | 3          | Roma Zerkalov
  5 | Ivan       | Novikov   | 3          | Roma Zerkalov
  4 | Anatoliy   | Laktionov | 3          | Roma Zerkalov
  2 | Ivan       | Novikov   | 3          | Roma Zerkalov
  1 | Anatoliy   | Laktionov | 3          | Roma Zerkalov
(6 rows)



journal_db=# SELECT students.id ,students.first_name, students.last_name, classes.class_name, classes.classroom_teacher FROM students INNER JOIN classes ON students.class_id = classes.id WHERE classes.class_name = '3' ORDER BY students.id DESC LIMIT 3 ; 
 id | first_name | last_name | class_name | classroom_teacher 
----+------------+-----------+------------+-------------------
  8 | Ivan       | Novikov   | 3          | Roma Zerkalov
  7 | Anatoliy   | Laktionov | 3          | Roma Zerkalov
  5 | Ivan       | Novikov   | 3          | Roma Zerkalov
(3 rows)











