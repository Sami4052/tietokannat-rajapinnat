Tehtävä 6: pet ja owner, yhdestä moneen -yhteys

Omistajan nimi toistui pet-taulussa jokaisella lemmikillä. Omistajat siirrettiin
omaan owner-tauluunsa ja pet-tauluun lisättiin vierasavain idOwner.

- owner (1) ----< pet (monta)
- Vierasavain on "monta"-puolen taulussa (pet), kuten materiaalin Opiskelija–Arviointi-esimerkissä
- Yhteys on ei-tunnisteinen: petillä on oma pääavain idPet, idOwner ei ole osa sitä
- idOwner on NOT NULL, eli jokaisella lemmikillä on oltava omistaja


SHOW TABLES;
+------------------+
| Tables_in_test_1 |
+------------------+
| owner            |
| pet              |
| pet_backup       |
+------------------+


DESC owner;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| idOwner | int         | NO   | PRI | NULL    | auto_increment |
| Name    | varchar(45) | NO   |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+

SELECT * FROM pet;
+-------+----------+--------+---------+------+------------+------------+---------+
| idPet | name     | owner  | species | sex  | birth      | death      | idOwner |
+-------+----------+--------+---------+------+------------+------------+---------+
|     1 | Fluffy   | Harold | cat     | f    | 1993-02-04 | NULL       |       1 |
|     2 | Claws    | Gwen   | cat     | m    | 1994-03-17 | NULL       |       2 |
|     3 | Fang     | Benny  | dog     | m    | 1990-08-27 | NULL       |       3 |
|     4 | Chirpy   | Gwen   | bird    | f    | 1998-09-11 | NULL       |       2 |
|     5 | Whistler | Gwen   | bird    | NULL | 1997-12-09 | NULL       |       2 |
|     6 | Slim     | Benny  | snake   | m    | 1996-04-29 | NULL       |       3 |
|     7 | Buffy    | Harold | dog     | f    | 1989-05-13 | NULL       |       1 |
|     8 | Bowser   | Diane  | dog     | m    | 1979-08-31 | 1995-07-29 |       4 |
+-------+----------+--------+---------+------+------------+------------+---------+


DESC owner;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| idOwner | int         | NO   | PRI | NULL    | auto_increment |
| Name    | varchar(45) | NO   |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+

DESC pet;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| idPet   | int         | NO   | PRI | NULL    | auto_increment |
| name    | varchar(20) | YES  |     | NULL    |                |
| species | varchar(20) | YES  |     | NULL    |                |
| sex     | char(1)     | YES  |     | NULL    |                |
| birth   | date        | YES  |     | NULL    |                |
| death   | date        | YES  |     | NULL    |                |
| idOwner | int         | NO   | MUL | NULL    |                |
+---------+-------------+------+-----+---------+----------------+