use suchidb;
CREATE TABLE Student_Marks (
Reg_Number VARCHAR(20),
Subject_Code VARCHAR(10),
Semester INT(3) NOT NULL,
Marks INT(3) DEFAULT 0,
PRIMARY KEY (Reg_Number, Subject_Code, Semester),
FOREIGN KEY (Reg_Number) REFERENCES Student_Info_(Reg_Number),
FOREIGN KEY (Subject_Code) REFERENCES Subject_Master_(Subject_Code)
);