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
journal_db=# \dt
          List of relations
 Schema |   Name   | Type  |  Owner   
--------+----------+-------+----------
 public | classes  | table | postgres
 public | students | table | postgres
 public | teachers | table | postgres
(3 rows)

journal_db=# SELECT * FROM teachers;
 id | first_name | last_name 
----+------------+-----------
  1 | Ivan       | Petrov
  2 | Petr       | Ivanov
  3 | Alexandr   | Sidorov
(3 rows)

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

journal_db=# SELECT * FROM classes;
 id | class_name | classroom_teacher 
----+------------+-------------------
  1 | 3          | Dmitriy Potashkin
  2 | 4          | Alexandr Goreev
  3 | 3          | Roma Zerkalov
  4 | 4          | Anatoliy Pupkin
(4 rows)

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

journal_db=# SELECT students.id ,students.first_name, students.last_name, classes.class_name, classes.classroom_teacher FROM students INNER JOIN classes ON students.class_id = classes.id WHERE classes.class_name = '3' ORDER BY students.id DESC LIMIT 3 ;
 id | first_name | last_name | class_name | classroom_teacher 
----+------------+-----------+------------+-------------------
  8 | Ivan       | Novikov   | 3          | Roma Zerkalov
  7 | Anatoliy   | Laktionov | 3          | Roma Zerkalov
  5 | Ivan       | Novikov   | 3          | Roma Zerkalov
(3 rows)


journal_db=# SELECT * FROM classes
journal_db-# ;
 id | class_name | classroom_teacher 
----+------------+-------------------
  8 | 3          |                 1
  9 | 4          |                 2
 10 | 5          |                 3
 11 | 4          |                 5
 12 | 5          |                 7
(5 rows)

journal_db=# SELECT * FROM teachers;
 id | first_name | last_name 
----+------------+-----------
  1 | Ivan       | Petrov
  2 | Petr       | Ivanov
  3 | Alexandr   | Sidorov
(3 rows)



journal_db=# SELECT first_name, last_name FROM teachers RIGHT JOIN classes ON  (classes.classroom_teacher = teachers.id) ;
 first_name | last_name 
------------+-----------
 Ivan       | Petrov
 Petr       | Ivanov
 Alexandr   | Sidorov
            | 
            | 


journal_db=# SELECT first_name, last_name FROM teachers LEFT JOIN classes ON  (classes.classroom_teacher = teachers.id) ; 
 first_name | last_name 
------------+-----------
 Ivan       | Petrov
 Petr       | Ivanov
 Alexandr   | Sidorov
(3 rows)



journal_db=# SELECT first_name, last_name FROM teachers FULL JOIN classes ON  (classes.classroom_teacher = teachers.id) LIMIT 1;
 first_name | last_name 
------------+-----------
 Ivan       | Petrov
(1 row)

journal_db=# SELECT first_name, last_name FROM teachers FULL JOIN classes ON  (classes.classroom_teacher = teachers.id) WHERE teachers.id = 3;
 first_name | last_name 
------------+-----------
 Alexandr   | Sidorov
(1 row)



journal_db=# insert INTO classes (class_name , classroom_teacher) VALUES (4,null);
INSERT 0 1
journal_db=# insert INTO classes (class_name , classroom_teacher) VALUES (5,null);
INSERT 0 1
journal_db=# insert INTO classes (class_name , classroom_teacher) VALUES (6,null);
INSERT 0 1
journal_db=# SELECT * FROM classes;
 id | class_name | classroom_teacher 
----+------------+-------------------
  8 | 3          |                 1
  9 | 4          |                 2
 10 | 5          |                 3
 14 | 4          |                 5
 15 | 4          |                  
 16 | 5          |                  
 17 | 6          |                  
(7 rows)


journal_db=# SELECT class_name FROM classes LEFT JOIN teachers ON  (classes.classroom_teacher = teachers.id) WHERE classes.classroom_teacher  is NULL;
 class_name 
------------
 6
 5
 4
(3 rows)


