postgres=# CREATE DATABASE journal_db ;
CREATE DATABASE
postgres=# \c journal_db 
journal_db=# CREATE TABLE teachers (id serial, first_name text not null, last_name text not null) ; 
CREATE TABLE
journal_db=# CREATE TABLE students (id serial, first_name text not null, last_name text not null, class_id integer) ;                                                                              
CREATE TABLE
journal_db=# CREATE TABLE classes (id serial, class_name text not null, classroom_teacher text not null) ;
CREATE TABLE
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

journal_db=# \d classes
                                  Table "public.classes"
      Column       |  Type   | Collation | Nullable |               Default               
-------------------+---------+-----------+----------+-------------------------------------
 id                | integer |           | not null | nextval('classes_id_seq'::regclass)
 class_name        | text    |           | not null | 
 classroom_teacher | text    |           | not null | 

journal_db=# \d students
                              Table "public.students"
   Column   |  Type   | Collation | Nullable |               Default                
------------+---------+-----------+----------+--------------------------------------
 id         | integer |           | not null | nextval('students_id_seq'::regclass)
 first_name | text    |           | not null | 
 last_name  | text    |           | not null | 
 class_id   | integer |           |          | 


journal_db=# insert INTO students (first_name , last_name, class_id) VALUES ('Anatoliy', 'Laktionov', '3') , ('Ivan', 'Novikov','3') , ('Nikolay','Petrov','4') ;
INSERT 0 3
journal_db=# insert INTO teachers (first_name , last_name) VALUES ('Ivan', 'Petrov') , ('Petr', 'Ivanov') , ('Alexandr','Sidorov') ;
INSERT 0 3

journal_db=# select * from students
journal_db-# ;
 id | first_name | last_name | class_id 
----+------------+-----------+----------
  1 | Anatoliy   | Laktionov |        3
  2 | Ivan       | Novikov   |        3
  3 | Nikolay    | Petrov    |        4
(3 rows)

journal_db=# select * from teachers
;
 id | first_name | last_name 
----+------------+-----------
  1 | Ivan       | Petrov
  2 | Petr       | Ivanov
  3 | Alexandr   | Sidorov
(3 rows)

journal_db-# \q

