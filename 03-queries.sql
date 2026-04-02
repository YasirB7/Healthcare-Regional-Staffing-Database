USE HealthcareDB;

SELECT * FROM Regions;
SELECT * FROM Directors;
SELECT * FROM Teams;
SELECT * FROM RNs;
SELECT * FROM Contacts;

SELECT r.region_name, COUNT(rn.rn_id) AS total_nurses
FROM Regions r
JOIN Directors d ON r.region_id = d.region_id
JOIN Teams t ON d.director_id = t.director_id
JOIN RNs rn ON t.team_id = rn.team_id
GROUP BY r.region_name;

SELECT d.director_name, COUNT(rn.rn_id) AS total_nurses
FROM Directors d
JOIN Teams t ON d.director_id = t.director_id
JOIN RNs rn ON t.team_id = rn.team_id
GROUP BY d.director_name;

SELECT t.team_name, COUNT(rn.rn_id) AS total_nurses
FROM Teams t
JOIN RNs rn ON t.team_id = rn.team_id
GROUP BY t.team_name
ORDER BY total_nurses DESC;

SELECT 
    r.region_name,
    d.director_name,
    t.team_name,
    rn.rn_name,
    c.email
FROM Regions r
JOIN Directors d ON r.region_id = d.region_id
JOIN Teams t ON d.director_id = t.director_id
JOIN RNs rn ON t.team_id = rn.team_id
JOIN Contacts c ON rn.rn_id = c.rn_id;

SELECT 
    t.team_name,
    COUNT(rn.rn_id) AS total_nurses,
    RANK() OVER (ORDER BY COUNT(rn.rn_id) DESC) AS team_rank
FROM Teams t
JOIN RNs rn ON t.team_id = rn.team_id
GROUP BY t.team_name;
