
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.06 sec)

mysql> create database Cinemas;
Query OK, 1 row affected (0.12 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| cinemas            |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> use Cinemas
Database changed



mysql> create table Movies(
Name VARCHAR(30),
Actor VARCHAR(30),
Actress VARCHAR(30),
Director VARCHAR(30),
Year_of_release INT NOT NULL,
PRIMARY KEY(Name)
);

mysql> INSERT INTO Movies VALUES(
'Detachment',
'Adrien Brody',
'Marcia Gay Harden',
'Tony Kaye',
2011
);

mysql> INSERT INTO Movies VALUES(
'October Sky',
'Jake Gyllenhaal',
'Laura Dern',
'Joe Johnston',
1999
);

mysql> INSERT INTO Movies VALUES(
'INTERSTELLAR',
'Matthew McConaughey',
'Anne Hathaway',
'Christopher Nolan',
2014
);

mysql> INSERT INTO Movies VALUES(
'The Faults in Our Stars',
'Ansel Elgort',
'Shailene Woodley',
'Josh Boone',
2014
);

mysql> INSERT INTO Movies VALUES(
'Serenity',
'Matthew McConaughey',
'Anne Hathaway',
'Steven Knight',
2019
);

mysql> INSERT INTO Movies VALUES(
'Spider-Man',
'Tobey Maguire',
'Kirsten Dunst',
'Sam Raimi',
2002
);

mysql> INSERT INTO Movies VALUES(
'The Wedding Planner',
'Matthew McConaughey',
'Jennifer Lopez',
'Adam Shankman',
2001
);

mysql> INSERT INTO Movies VALUES(
'The Jacket',
'Adrien Brody',
'Keira Knightley',
'John Maybury',
2005
);


mysql> SELECT * FROM Movies;
+-------------------------+---------------------+-------------------+-------------------+-----------------+
| Name                    | Actor               | Actress           | Director          | Year_of_release |
+-------------------------+---------------------+-------------------+-------------------+-----------------+
| Detachment              | Adrien Brody        | Marcia Gay Harden | Tony Kaye         |            2011 |
| INTERSTELLAR            | Matthew McConaughey | Anne Hathaway     | Christopher Nolan |            2014 |
| October Sky             | Jake Gyllenhaal     | Laura Dern        | Joe Johnston      |            1999 |
| Serenity                | Matthew McConaughey | Anne Hathaway     | Steven Knight     |            2019 |
| Spider-Man              | Tobey Maguire       | Kirsten Dunst     | Sam Raimi         |            2002 |
| The Faults in Our Stars | Ansel Elgort        | Shailene Woodley  | Josh Boone        |            2014 |
| The Jacket              | Adrien Brody        | Keira Knightley   | John Maybury      |            2005 |
| The Wedding Planner     | Matthew McConaughey | Jennifer Lopez    | Adam Shankman     |            2001 |
+-------------------------+---------------------+-------------------+-------------------+-----------------+
8 rows in set (0.00 sec)

mysql> SELECT Name,Actor FROM Movies ORDER BY Actor;
+-------------------------+---------------------+
| Name                    | Actor               |
+-------------------------+---------------------+
| Detachment              | Adrien Brody        |
| The Jacket              | Adrien Brody        |
| The Faults in Our Stars | Ansel Elgort        |
| October Sky             | Jake Gyllenhaal     |
| INTERSTELLAR            | Matthew McConaughey |
| Serenity                | Matthew McConaughey |
| The Wedding Planner     | Matthew McConaughey |
| Spider-Man              | Tobey Maguire       |
+-------------------------+---------------------+
8 rows in set (0.00 sec)