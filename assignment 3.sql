----first task (task 3 route) -- mahmoud abuelyazid

CREATE TABLE Departments (
id int primary key,
Name varchar(max) ,
Hiring_Date Date ,
ins_id int 

)

CREATE TABLE students (
id int primary key,
FName varchar(max) ,
LName varchar(max) ,
Age int  ,
Address varchar(max) ,
Dep_id INT,
FOREIGN KEY (Dep_id) References Departments(id)
)




CREATE TABLE Instructors (
id int primary key,
Name varchar(max) ,
Address  varchar(max) ,
Bouns int ,
Salary int,
Hour_Rate int ,
Dep_id int ,
FOREIGN KEY (Dep_id) References Departments(id)
)

/*  to solve cycler dependancies */
ALTER TABLE Departments ADD CONSTRAINT FK_Departments_Instructors FOREIGN KEY (ins_id) References Instructors(id)


CREATE TABLE Topics (
id int primary key,
Name varchar(max) ,

)
CREATE TABLE Courses (
id int primary key,
Name varchar(max) ,
Duration  Float ,
Description varchar(max) ,
top_id int ,
FOREIGN KEY (top_id) References Topics(id)
)




CREATE TABLE Stud_Course (
Stud_id int ,
Course_id int ,
FOREIGN KEY (Stud_id) References students(id) ,
FOREIGN KEY (Course_id) References Courses(id) ,
Grade int,
PRIMARY KEY (Stud_id,Course_id)
)

CREATE TABLE Course_instructor (
inst_id int ,
Course_id int ,
FOREIGN KEY (inst_id) References Instructors(id) ,
FOREIGN KEY (Course_id) References Courses(id) ,
Evaluation int,
PRIMARY KEY (inst_id,Course_id)

)



----second task  (task 3 route)  -- mahmoud abuelyazid

CREATE TABLE Musician (
id int primary key,
Name varchar(max) ,
Ph_Number int ,
City int ,
Street varchar(max) ,

)

Create Table instrument (
Name varchar(100) primary key,
Key_ int
)


CREATE TABLE Album (
id int primary key,
title varchar(max) ,
Date_ Date ,
Mus_id  INT ,
FOREIGN KEY  (Mus_id ) References Musician(id),

)
Create Table Song(
Title varchar(100) primary key ,
author varchar(max)
)

Create Table Album_song(
Album_id int ,
song_title varchar(100) primary key ,
FOREIGN KEY  (Album_id ) References Album(id),
FOREIGN KEY  (song_title ) References Song(Title),
)

Create Table mus_song(
mus_id int ,
song_title varchar(100) ,
FOREIGN KEY  (mus_id ) References Musician(id),
FOREIGN KEY  (song_title ) References Song(Title),

primary key (mus_id,song_title )
)


Create Table mus_instrument(
mus_id int ,
inst_Name varchar(100) ,
FOREIGN KEY  (mus_id ) References Musician(id),
FOREIGN KEY  (inst_Name ) References instrument(Name),

primary key (mus_id,inst_Name )
)
