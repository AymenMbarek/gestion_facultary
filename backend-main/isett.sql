-- This script is designed for MySQL.

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS Isett;

-- Switch to the newly created database
USE Isett;

-- Table: courses
-- Table: courses
CREATE TABLE IF NOT EXISTS courses (
    id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    department VARCHAR(50),
    classe VARCHAR(50),
    enseignant_id INT,
    PRIMARY KEY (id)
);


-- Table: department_notifications
CREATE TABLE IF NOT EXISTS department_notifications (
    id INT NOT NULL AUTO_INCREMENT,
    department_id INT,
    message TEXT,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

-- Table: departments
CREATE TABLE IF NOT EXISTS departments (
    id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50),
    PRIMARY KEY (id),
    UNIQUE KEY (nom)
);

-- Table: enrollments
CREATE TABLE IF NOT EXISTS enrollments (
    id INT NOT NULL AUTO_INCREMENT,
    etudiant_id INT,
    course_id INT,
    PRIMARY KEY (id)
);

-- Table: enseignant
CREATE TABLE IF NOT EXISTS enseignant (
    cin INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    prenom VARCHAR(255),
    email VARCHAR(255),
    department VARCHAR(50),
    password VARCHAR(255),
    PRIMARY KEY (cin),
    UNIQUE KEY (email)
);

-- Table: etudiant
CREATE TABLE IF NOT EXISTS etudiant (
    cin INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    prenom VARCHAR(255),
    numtel VARCHAR(255),
    email VARCHAR(255),
    department VARCHAR(50),
    classe VARCHAR(50),
    password VARCHAR(255),
    PRIMARY KEY (cin),
    UNIQUE KEY (email)
);

-- Table: events
CREATE TABLE IF NOT EXISTS events (
    id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    event_date DATE,
    description TEXT,
    PRIMARY KEY (id)
);

-- Table: exams
CREATE TABLE IF NOT EXISTS exams (
    id INT NOT NULL AUTO_INCREMENT,
    course_id INT,
    exam_date DATE,
    exam_type VARCHAR(50),
    PRIMARY KEY (id)
);

-- Table: notifications
CREATE TABLE IF NOT EXISTS notifications (
    id INT NOT NULL AUTO_INCREMENT,
    recipient_id INT,
    recipient_type VARCHAR(10),
    message TEXT,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

-- Adjustments for auto-increment and default values

-- For tables with SERIAL columns in PostgreSQL, MySQL uses AUTO_INCREMENT.
-- I've also removed the default value for the date_sent column in MySQL; 
-- it will automatically use the current timestamp when not provided.

-- If you have any issues or specific requirements, please let me know!
