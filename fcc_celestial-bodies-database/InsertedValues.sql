SELECT * FROM galaxy;

INSERT INTO galaxy(age,distance_from_earth,description,name,has_life,is_spherical) VALUES(6000,400000.54,'starry','milky way',true,true);
INSERT INTO galaxy(age,distance_from_earth,description,name,has_life,is_spherical) VALUES(6000,500000.54,'dense','alpha-centauri',true,true);
INSERT INTO galaxy(age,distance_from_earth,description,name,has_life,is_spherical) VALUES(6000,600000.54,'sparse','milky path',true,true);
INSERT INTO galaxy(age,distance_from_earth,description,name,has_life,is_spherical) VALUES(6000,400000.54,'starry','milky way2',true,true);
INSERT INTO galaxy(age,distance_from_earth,description,name,has_life,is_spherical) VALUES(6000,500000.54,'dense','alpha-centauri2',true,true);
INSERT INTO galaxy(age,distance_from_earth,description,name,has_life,is_spherical) VALUES(6000,600000.54,'sparse','milky path2',true,true);


INSERT INTO star(age,distance_from_earth,description,name,has_life,is_spherical,galaxy_id) VALUES(7000,860000.64,'yellow giant','sun',true,true,1);
INSERT INTO star(age,distance_from_earth,description,name,has_life,is_spherical,galaxy_id) VALUES(6000,840000.64,'yellow dwarf','star2',false,true,2);
INSERT INTO star(age,distance_from_earth,description,name,has_life,is_spherical,galaxy_id) VALUES(9000,560000.64,'white giant','sunstar3',true,false,3);
INSERT INTO star(age,distance_from_earth,description,name,has_life,is_spherical,galaxy_id) VALUES(7000,860000.64,'blue giant','sun2',true,true,4);
INSERT INTO star(age,distance_from_earth,description,name,has_life,is_spherical,galaxy_id) VALUES(6000,840000.64,'red dwarf','star3',true,false,5);
INSERT INTO star(age,distance_from_earth,description,name,has_life,is_spherical,galaxy_id) VALUES(9000,560000.64,'white supernova','sunstar4',true,true,6);



INSERT INTO planet(age,distance_from_earth,description,name,has_life,is_spherical,star_id) VALUES(3000,0,'green and blue','earth',true,true,1);
INSERT INTO planet(age,distance_from_earth,description,name,has_life,is_spherical,star_id) VALUES(4000,0,'green and red','venus',false,true,2);
INSERT INTO planet(age,distance_from_earth,description,name,has_life,is_spherical,star_id) VALUES(7000,0,'green and yellow','neptune',true,true,3);
INSERT INTO planet(age,distance_from_earth,description,name,has_life,is_spherical,star_id) VALUES(3000,0,'green and blue','earth2',true,true,4);
INSERT INTO planet(age,distance_from_earth,description,name,has_life,is_spherical,star_id) VALUES(4000,0,'green and red','venus2',false,true,5);
INSERT INTO planet(age,distance_from_earth,description,name,has_life,is_spherical,star_id) VALUES(7000,0,'green and yellow','neptune2',true,true,6);
INSERT INTO planet(age,distance_from_earth,description,name,has_life,is_spherical,star_id) VALUES(3000,0,'green and blue','earth3',true,true,1);
INSERT INTO planet(age,distance_from_earth,description,name,has_life,is_spherical,star_id) VALUES(4000,0,'green and red','venus3',false,true,2);
INSERT INTO planet(age,distance_from_earth,description,name,has_life,is_spherical,star_id) VALUES(7000,0,'green and yellow','neptune3',true,true,3);
INSERT INTO planet(age,distance_from_earth,description,name,has_life,is_spherical,star_id) VALUES(3000,0,'green and blue','earth4',true,true,4);
INSERT INTO planet(age,distance_from_earth,description,name,has_life,is_spherical,star_id) VALUES(4000,0,'green and red','venus4',false,true,5);
INSERT INTO planet(age,distance_from_earth,description,name,has_life,is_spherical,star_id) VALUES(7000,0,'green and yellow','neptune4',true,true,6);

INSERT INTO satellite(name,planet_id) VALUES('Skulken-45', 2);
INSERT INTO satellite(name,planet_id) VALUES('Skulken-48', 3);
INSERT INTO satellite(name,planet_id) VALUES('Skulken-49', 4);




-- JOIN TABLE
SELECT * FROM galaxy g JOIN star s ON g.galaxy_id=s.galaxy_id;

-- Creating table with primary key
CREATE TABLE satellite (satellite_id SERIAL PRIMARY KEY, name TEXT, planet_id INT);

--  adding constraint
ALTER TABLE satellite ADD CONSTRAINT unique_name UNIQUE (name);

-- alter datatype
ALTER TABLE satellite ALTER COLUMN name TYPE VARCHAR(60);

-- setting NOT NULL on a column
ALTER TABLE satellite ALTER COLUMN name SET NOT NULL;