CREATE DATABASE f1db;
CREATE USER 'vagrant'@'localhost' IDENTIFIED BY 'vagrant';
CREATE USER 'admin'@'192.168.%' IDENTIFIED BY 'admin';
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON * . * TO 'vagrant'@'localhost';

CREATE TABLE `Drivers` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT, 
  `num` int(11) NOT NULL, 
  `country` text NOT NULL, 
  `name` text NOT NULL
  FOREIGN KEY (id) REFERENCES Driver_team(driver_id)
  );

CREATE TABLE `Teams` (     
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `teamname` text NOT NULL,    
  `teamfullname` text NOT NULL,    
  `teamcountry` text NOT NULL,           
  `constructor` text NOT NULL,    
  `chassis` text NOT NULL,
  `powerunit` text NOT NULL
  FOREIGN KEY (id) REFERENCES Driver_team(team_id)
);

CREATE TABLE `Driver_team` (     
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `driver_id` int(11) NOT NULL, 
  `team_id` int(11) NOT NULL
);

INSERT INTO Drivers(`num`, `country`, `name`) VALUES('10',	'France',	 'Pierre Gasly');  
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('31',	'France',	'Esteban Ocon');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('14','Spain', 'Fernando Alonso');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('18','Canada','Lance Stroll');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('16','Monaco','Charles Leclerc');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('55','Spain','Carlos Sainz Jr.');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('20','Denmark','Kevin Magnussen');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('27','Germany','Nico Hülkenberg');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('24','China','Zhou Guanyu');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('77','Finland','Valtteri Bottas');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('4','Great Britain','Lando Norris');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('81','Finland','Oscar Piastri');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('44','Great Britain','Lewis Hamilton');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('63','Great Britain','George Russell');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('3','Australia','Daniel Ricciardo');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('22','Japan','Yuki Tsunoda');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('1','Netherlands','Max Verstappen');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('11','Mexico','Sergio Pérez');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('2','United States','Logan Sargeant');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES('23','Thailand','Alexander Albon');


INSERT INTO Teams(`teamname`, `teamfullname`, `teamcountry`, `constructor`, `chassis`, `powerunit`) VALUES(
 'Alpine',  'BWT Alpine F1 Team',  'France',  'Alpine-Renault ',  'A524',  'Renault E-Tech RE24' );
INSERT INTO Teams(`teamname`, `teamfullname`, `teamcountry`, `constructor`, `chassis`, `powerunit`) VALUES(
 'Aston Martin', 'Aston Martin Aramco F1 Team', 'United Kingdom', 'Aston Martin Aramco-Mercedes', 'AMR24', 'Mercedes-AMG F1 M15');
INSERT INTO Teams(`teamname`, `teamfullname`, `teamcountry`, `constructor`, `chassis`, `powerunit`) VALUES(
 'Ferrari', 'Scuderia Ferrari ', 'Italy', 'Ferrari ', 'SF-24', 'Ferrari 066/12');
INSERT INTO Teams(`teamname`, `teamfullname`, `teamcountry`, `constructor`, `chassis`, `powerunit`) VALUES(
 'Haas', 'MoneyGram Haas F1 Team ', 'United States', 'Haas-Ferrari ', 'VF-24', 'Ferrari 066/10');
INSERT INTO Teams(`teamname`, `teamfullname`, `teamcountry`, `constructor`, `chassis`, `powerunit`) VALUES(
 'Sauber', 'Stake F1 Team Kick Sauber', 'Switzerland', 'Kick Sauber-Ferrari ', 'C44', 'Ferrari 066/12');
INSERT INTO Teams(`teamname`, `teamfullname`, `teamcountry`, `constructor`, `chassis`, `powerunit`) VALUES(
 'McLaren', 'McLaren Formula 1 Team ', 'United Kingdom', 'McLaren-Mercedes ', 'MCL38', 'Mercedes-AMG F1 M15');
INSERT INTO Teams(`teamname`, `teamfullname`, `teamcountry`, `constructor`, `chassis`, `powerunit`) VALUES(
 'Mercedes', 'Mercedes-AMG Petronas F1 Team ', 'Germany', 'Mercedes ', 'F1 W15', 'Mercedes-AMG F1 M15');
INSERT INTO Teams(`teamname`, `teamfullname`, `teamcountry`, `constructor`, `chassis`, `powerunit`) VALUES(
 'RB', 'Visa Cash App RB F1 Team', 'Italy', 'RB-Honda RBPT ', 'VCARB 01 ', 'Honda RBPTH002');
INSERT INTO Teams(`teamname`, `teamfullname`, `teamcountry`, `constructor`, `chassis`, `powerunit`) VALUES(
 'Red Bull', 'Oracle Red Bull Racing ', 'Austria', 'Red Bull Racing-Honda RBPT ', 'RB20', 'Honda RBPTH002');
INSERT INTO Teams(`teamname`, `teamfullname`, `teamcountry`, `constructor`, `chassis`, `powerunit`) VALUES(
 'Williams', 'Williams Racing ', 'United Kingdom', 'Williams-Mercedes ', 'FW46', 'Mercedes-AMG F1 M15');

INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(1, 1);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(2, 1);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(3, 2);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(4, 2);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(5, 3);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(6, 3);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(7, 4);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(8, 4);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(9, 5);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(10, 5);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(11, 6);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(12, 6);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(13, 7);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(14, 7);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(15, 8);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(16, 8);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(17, 9);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(18, 9);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(19, 10);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(20, 10);

INSERT INTO Drivers(`num`, `country`, `name`) VALUES(
'50','Great Britain','Oliver Bearman');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES(
'30','New Zealand','Liam Lawson');
INSERT INTO Drivers(`num`, `country`, `name`) VALUES(
'43','Argentina','Franco Colapinto');


INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(21, 3);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(22, 8);
INSERT INTO Driver_team(`driver_id`, `team_id`) VALUES(23, 10);


SELECT Drivers.name, Teams.teamname
FROM Drivers INNER JOIN (Driver_team INNER JOIN Teams ON Driver_team.team_id = Teams.id) ON Drivers.id = Driver_team.driver_id;



SELECT Drivers.name, Teams.powerunit
FROM Drivers INNER JOIN (Driver_team INNER JOIN Teams ON Driver_team.team_id = Teams.id) ON Drivers.id = Driver_team.driver_id where `powerunit` like 'Mercedes-AMG F1 M15';

SELECT Drivers.name, Teams.powerunit
FROM Drivers INNER JOIN (Driver_team INNER JOIN Teams ON Driver_team.team_id = Teams.id) ON Drivers.id = Driver_team.driver_id where `powerunit` like 'Mercedes%';
SELECT Drivers.name, Teams.powerunit
FROM Drivers INNER JOIN (Driver_team INNER JOIN Teams ON Driver_team.team_id = Teams.id) ON Drivers.id = Driver_team.driver_id where `powerunit` like 'Ferrari%';

SELECT Drivers.*, Teams.* FROM Drivers INNER JOIN (Driver_team INNER JOIN Teams ON Driver_team.team_id = Teams.id) ON Drivers.id = Driver_team.driver_id where `country` like '%Brit%';
