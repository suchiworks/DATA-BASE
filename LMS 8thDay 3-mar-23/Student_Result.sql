use suchidb;
CREATE TABLE Student_Result (
Reg_Number VARCHAR(20),
Semester INT(3) NOT NULL,
GPA DECIMAL(5,3) NOT NULL,
Is_Eligible_Scholarship CHAR(3) DEFAULT 'Yes',
PRIMARY KEY (Reg_Number, Semester),
FOREIGN KEY (Reg_Number) REFERENCES Student_Info(Reg_Number)
);