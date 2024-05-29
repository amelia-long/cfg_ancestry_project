-- Ancestry Project Queries

USE ancestry_project;

-- SIMPLE VIEW (core requirement
    -- gives me a quick summary showing how complete my records are for each person and the cities they lived in
    -- event types 1 = birth, 2 = baptism, 3 = marriage, 4 = residence, 5 = death

CREATE OR REPLACE VIEW person_summary AS
SELECT
	CONCAT(p.lastname,", ",p.firstname) AS name,
    p.b_year AS birth_year,
    COUNT(pp.person_id) AS num_records,
    GROUP_CONCAT(DISTINCT pp.event_type_id) AS event_types,
    GROUP_CONCAT(DISTINCT c.city ORDER BY c.city) AS cities_lived_in
FROM person_place pp
JOIN person p ON p.person_id = pp.person_id
JOIN place pl ON pl.place_id = pp.place_id
JOIN city c ON c.city_id = pl.city_id
GROUP BY name, birth_year
ORDER BY num_records DESC;

SELECT * FROM person_summary;
    


-- VIEW locations_list

CREATE OR REPLACE VIEW locations_list AS
SELECT 
	person.person_id,
    person.sex,
    pp.year AS event_year,
    event_type.event_type,
    person.firstname, 
    person.lastname,
    age_calc(pp.year,person.b_year) AS age,
    place.address,
    city.city,
    county.county,
    country.country,
    place.w3w_code,
    source_record.source_record,
    occupation.occupation,
    pp.note AS event_note,
    place.notes AS place_note
FROM person_place pp
INNER JOIN place 			ON place.place_id = pp.place_id
INNER JOIN person 			ON person.person_id = pp.person_id
INNER JOIN event_type 		ON event_type.event_type_id = pp.event_type_id
INNER JOIN city 			ON city.city_id = place.city_id
INNER JOIN county 			ON county.county_id = place.county_id
INNER JOIN country 			ON country.country_id = place.country_id
INNER JOIN  source_record 	ON source_record.source_id = pp.source_id
LEFT JOIN occupation 		ON occupation.occupation_id = pp.occupation_id
WHERE person.living IS NULL
ORDER BY 
	pp.year, 
    place.address;

SELECT * FROM locations_list WHERE person_id = 45;



-- VIEW vw_missing_death_years
	-- based on 2 tables with SUBQUERY
	-- show all people with missing death year
	-- exclude people flagged as living
	-- check no death event for person exists in person_place table with subquery (shouldn't have anomalies because of triggers)
	-- show estimated death year as range for death age 70 - 85

CREATE OR REPLACE VIEW vw_missing_death_years AS
SELECT 
	person_id,
    lastname,
    firstname,
    b_year,
    d_year,
    CONCAT(b_year + 70," - ",b_year + 85) AS est_death
FROM person 
WHERE d_year IS NULL
AND living IS NULL
AND person_id NOT IN (SELECT person_id FROM person_place WHERE event_type_id = 5)
ORDER BY b_year ASC;

SELECT * FROM vw_missing_death_years;



-- GROUP BY AND HAVING QUERY
-- count number of events in each place and use HAVING to filter by place data containing search string.
-- suggested searchstrings to test query Islington, Bermondsey, Southwark, Dublin, Middlesex

SET @searchstring := "%Islington%";
SELECT 
	address, 
    city,
    county,
    country,
    event_type,
	COUNT(address) AS events_here
FROM locations_list 
GROUP BY 
	address, 
    city,
    county,
    country,
    event_type
HAVING address LIKE @searchstring
OR city LIKE @searchstring
OR county LIKE @searchstring
OR country LIKE @searchstring
ORDER BY events_here DESC;

-- GROUP BY QUERY
-- output average death age by sex 

SELECT 
	ROUND(AVG(age)) AS avg_death_age, 
    sex
FROM locations_list 
WHERE event_type = "Death" 
GROUP BY sex;

-- SELF JOINS QUERY
-- output shows person, mother, father, and age of parents when person was born

SELECT
	pe.person_id,
    CONCAT(pe.firstname,' ',pe.lastname,' b.',pe.b_year) AS person,
    CONCAT(mum.firstname,' ',mum.lastname,' b.',mum.b_year) AS mother,
    CONCAT(dad.firstname,' ',dad.lastname,' b.',dad.b_year) AS father,
    pe.b_year - dad.b_year AS father_age,
    pe.b_year - mum.b_year AS mother_age
FROM person pe, person mum, person dad
WHERE 
	pe.living IS NULL
AND pe.mother = mum.person_id 
AND pe.father = dad.person_id
ORDER BY pe.mother,pe.b_year;

-- QUERY WITH SELF JOINS, GROUP BY AND HAVING
-- output list of parents and number of children they had where number of children is greater than 3

SELECT 
	dad.firstname AS father_firstname,
    dad.lastname AS father_lastname,
    mum.firstname AS mother_firstname,
    mum.lastname AS mother_lastname,
    COUNT(pe.mother) AS num_of_children
FROM person pe, person dad, person mum
WHERE pe.father = dad.person_id
AND pe.mother = mum.person_id
AND pe.living IS NULL
GROUP BY pe.father, dad.firstname, dad.lastname, mum.firstname, mum.lastname
HAVING num_of_children > 3
ORDER BY num_of_children DESC;