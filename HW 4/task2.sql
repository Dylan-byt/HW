Use pet_database;

INSERT INTO pet_database.petpet VALUES
	("Hammy", "Diane", "Hamster", "M", "2010-10-30", NULL);
INSERT INTO pet_database.petevent VALUES
    ("Fluffy", "2020-10-15","vet","antibiotics"),
    ("Hammy", "2020-10-15","vet","antibiotic");
    
UPDATE pet_database.petevent 
SET remark = "5 kittens, 3 females, 2 males."  
WHERE petname = "Fluffy" and eventdate = "1995-05-15";


UPDATE pet_database.petevent 
SET petname = "Claws"  
WHERE petname = "Slim" and eventdate = "1997-08-03";

UPDATE pet_database.petpet
SET death = "2020-09-01" 
WHERE petname = "Puffball";

DELETE from petpet 
where petname = "Harold"