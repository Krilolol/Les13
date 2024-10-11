# Les13
Homework for lesson13

CREATE DATABASE f1db;
CREATE USER 'vagrant'@'localhost' IDENTIFIED BY 'vagrant';
CREATE USER 'admin'@'192.168.%' IDENTIFIED BY 'admin';
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON * . * TO 'vagrant'@'localhost';

CREATE TABLE `Drivers` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT, 
  `num` int(11) NOT NULL, 
  `country` text NOT NULL, 
  `name` text NOT NULL.
    FOREIGN KEY (id) REFERENCES Driver_team(driver_id)
  );

CREATE TABLE `Teams` (     
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `teamname` text NOT NULL,    
  `teamfullname` text NOT NULL,    
  `teamcountry` text NOT NULL,           
  `constructor` text NOT NULL,    
  `chassis` text NOT NULL,
  `powerunit` text NOT NULL.
    FOREIGN KEY (id) REFERENCES Driver_team(team_id)
);

CREATE TABLE `Driver_team` (     
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `driver_id` int(11) NOT NULL, 
  `team_id` int(11) NOT NULL
);



mysql> SELECT Drivers.*, Teams.* FROM Drivers INNER JOIN (Driver_team INNER JOIN Teams ON Driver_team.team_id = Teams.id) ON Drivers.id = Driver_team.driver_id where `country` like 'Great Britain';
+----+-----+---------------+----------------+----+----------+--------------------------------+----------------+-------------------+---------+---------------------+
| id | num | country       | name           | id | teamname | teamfullname                   | teamcountry    | constructor       | chassis | powerunit           |
+----+-----+---------------+----------------+----+----------+--------------------------------+----------------+-------------------+---------+---------------------+
| 11 |   4 | Great Britain | Lando Norris   |  6 | McLaren  | McLaren Formula 1 Team         | United Kingdom | McLaren-Mercedes  | MCL38   | Mercedes-AMG F1 M15 |
| 13 |  44 | Great Britain | Lewis Hamilton |  7 | Mercedes | Mercedes-AMG Petronas F1 Team  | Germany        | Mercedes          | F1 W15  | Mercedes-AMG F1 M15 |
| 14 |  63 | Great Britain | George Russell |  7 | Mercedes | Mercedes-AMG Petronas F1 Team  | Germany        | Mercedes          | F1 W15  | Mercedes-AMG F1 M15 |
| 21 |  50 | Great Britain | Oliver Bearman |  3 | Ferrari  | Scuderia Ferrari               | Italy          | Ferrari           | SF-24   | Ferrari 066/12      |
+----+-----+---------------+----------------+----+----------+--------------------------------+----------------+-------------------+---------+---------------------+
4 rows in set (0.00 sec)
