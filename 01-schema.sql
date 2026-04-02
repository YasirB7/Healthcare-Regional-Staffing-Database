USE master;
GO

IF DB_ID('HealthcareDB') IS NOT NULL
BEGIN
    ALTER DATABASE HealthcareDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE HealthcareDB;
END;
GO

CREATE DATABASE HealthcareDB;
GO

USE HealthcareDB;
GO

CREATE TABLE Regions (
    region_id INT PRIMARY KEY,
    region_name VARCHAR(50) NOT NULL
);

CREATE TABLE Directors (
    director_id INT PRIMARY KEY,
    director_name VARCHAR(100) NOT NULL,
    region_id INT NOT NULL,
    FOREIGN KEY (region_id) REFERENCES Regions(region_id)
);

CREATE TABLE Teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    director_id INT NOT NULL,
    FOREIGN KEY (director_id) REFERENCES Directors(director_id)
);

CREATE TABLE RNs (
    rn_id INT PRIMARY KEY,
    rn_name VARCHAR(100) NOT NULL,
    team_id INT NOT NULL,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);

CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
    rn_id INT NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    FOREIGN KEY (rn_id) REFERENCES RNs(rn_id)
);
