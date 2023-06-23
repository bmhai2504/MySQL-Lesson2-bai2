create database lesson2_bai2;

use lesson2_bai2;

create table student (
	studentID varchar(20) primary key,
    studentName varchar(50),
    studentBirth datetime,
    class varchar(20),
    gt varchar(20)
);

create table subject (
	subjectID varchar(20) primary key,
    subjectName varchar(50)
);

create table mark (
	studentID varchar(20),
    subjectID varchar(50),
    mark double,
    dateTest datetime,
    primary key (studentID, subjectID),
    foreign key (studentID) references student (studentID),
    foreign key (subjectID) references subject (subjectID)
);

create table teacher(
	teacherID varchar (20) primary key,
    teacherName varchar(30),
    teacherPhone varchar(10)
);

-- use lesson2_bai2;


alter table subject
	add teacherID varchar(20);
    
alter table subject 
	add constraint FK_teacherID foreign key (teacherID) references teacher(teacherID);
    




