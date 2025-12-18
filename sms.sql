use ai2025b;

CREATE TABLE department (
departmentid INT PRIMARY KEY AUTO_INCREMENT,
departmentname VARCHAR(60) NOT NULL UNIQUE,
hod varchar(50) NULL,
officeroom VARCHAR(20)
);

CREATE TABLE program (
programid INT PRIMARY KEY AUTO_INCREMENT,
programname VARCHAR(60) NOT NULL UNIQUE,
departmentid INT NOT NULL,
CONSTRAINT fk_program FOREIGN KEY (departmentid) 
REFERENCES department(departmentid)
);
SELECT * FROM department;
SELECT * FROM program;

INSERT INTO department(departmentname, hod, officeroom )VALUES('AI','Rohit Raj Pandey',1005);
SELECT * FROM department;
INSERT INTO program(programname, departmentid)VALUES('AI',1);
SELECT * FROM program;


INSERT INTO department(departmentname, hod, officeroom )
VALUES
('CS','Saroj Sharma',1006),
('AI','Rohit Raj Pandey',1005);