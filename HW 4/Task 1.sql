DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

create table petPet (
  petname varchar(20),
  owner varchar(45),
  species varchar(45),
  gender enum('M','F'),
  birth date,
  death date,
  PRIMARY KEY (petname)
);

create table petEvent (
  petname varchar(20),
  eventdate date,
  eventtype varchar(15),
  remark varchar(255),
  PRIMARY KEY (eventdate, petname),
  FOREIGN KEY (petname) REFERENCES petPet(petname)
);
