-- =====================================================
-- Demo DAO JDBC
-- Script de criação do banco de dados utilizado pelo projeto.
-- Execute este arquivo antes de iniciar a aplicação.
-- =====================================================

CREATE DATABASE IF NOT EXISTS coursejdbc;

USE coursejdbc;

CREATE TABLE department (
    Id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(60) NOT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE seller (
    Id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(70) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    BirthDate DATE NOT NULL,
    BaseSalary DOUBLE NOT NULL,
    DepartmentId INT NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (DepartmentId) REFERENCES department(Id)
);

INSERT INTO department (Name) VALUES
('Computers'),
('Electronics'),
('Fashion'),
('Books');

INSERT INTO seller (Name, Email, BirthDate, BaseSalary, DepartmentId) VALUES
('Bob Brown', 'bob@gmail.com', '1998-04-21', 1000.0, 1),
('Maria Green', 'maria@gmail.com', '1979-12-31', 3500.0, 2),
('Alex Grey', 'alex@gmail.com', '1988-01-15', 2200.0, 1),
('Martha Red', 'martha@gmail.com', '1993-11-30', 3000.0, 4),
('Robert Black', 'robert@gmail.com', '1998-07-23', 4000.0, 3);