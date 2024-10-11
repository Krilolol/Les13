

SELECT Drivers.name, Teams.teamname
FROM Drivers INNER JOIN (Driver_team INNER JOIN Teams ON Driver_team.team_id = Teams.id) ON Drivers.id = Driver_team.driver_id;



SELECT Drivers.name, Teams.powerunit
FROM Drivers INNER JOIN (Driver_team INNER JOIN Teams ON Driver_team.team_id = Teams.id) ON Drivers.id = Driver_team.driver_id where `powerunit` like 'Mercedes-AMG F1 M15';

SELECT Drivers.name, Teams.powerunit
FROM Drivers INNER JOIN (Driver_team INNER JOIN Teams ON Driver_team.team_id = Teams.id) ON Drivers.id = Driver_team.driver_id where `powerunit` like 'Mercedes%';
SELECT Drivers.name, Teams.powerunit
FROM Drivers INNER JOIN (Driver_team INNER JOIN Teams ON Driver_team.team_id = Teams.id) ON Drivers.id = Driver_team.driver_id where `powerunit` like 'Ferrari%';

SELECT Drivers.*, Teams.* FROM Drivers INNER JOIN (Driver_team INNER JOIN Teams ON Driver_team.team_id = Teams.id) ON Drivers.id = Driver_team.driver_id where `country` like '%Brit%';
