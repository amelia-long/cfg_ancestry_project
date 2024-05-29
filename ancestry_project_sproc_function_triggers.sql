
-- Ancestry Project STORED FUNCTION
-- calculate someone's age based on input parameters event year and birth year

-- Project Requirements
    -- Core: 		stored function

-- IF logic used to test if birth_year is NULL and return NULL instead of ZERO to avoid confusion (zero is legitimate age if event is birth)
-- IF also tests to see if birth_year is greater than event_year - if true returns NULL (error handling)

DELIMITER //
CREATE FUNCTION age_calc(event_year INT, birth_year INT) 
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE event_age INT;
    IF birth_year IS NULL THEN
		SET event_age = NULL;
	ELSEIF birth_year > event_year THEN
		SET event_age = NULL;
	ELSE
		SET event_age = event_year - birth_year;
    END IF;
    RETURN event_age;
END//
DELIMITER ;

SELECT age_calc(2024,1981);

-- ___________________________________________________________________________________________________

-- Ancestry Project STORED PROCEDURE 
-- suggests a list of missing source records for person (input param person_id)

-- Project Requirements
    -- Core: 		subqueries	
    -- Advanced: 	create a stored procedure

-- If no records found for person_id in person_place then message displayed
-- Else run query:
	-- check living flag is null
    -- select only source records that fall within selected person's lifetime
    -- exclude sources that already exist for selected person in person_place table (SUBQUERY)
    -- only include sources from countries relevant to selected person (SUBQUERY)
	
    
DELIMITER //
CREATE PROCEDURE sp_missing_records
(
IN param_person_id INT
)
BEGIN
	IF 
		(SELECT COUNT(pp_id) FROM person_place WHERE person_id = param_person_id) = 0
    THEN
		SELECT CONCAT("No source records found for person id ",param_person_id) AS ' ';
    ELSE
		SELECT 
			CONCAT(p.firstname,' ',p.lastname) AS person,
			s.source_record AS missing_records
		FROM source_record s, person p
		WHERE 
			p.person_id = param_person_id
		AND p.living IS NULL
		AND s.max_date BETWEEN p.b_year AND IFNULL(p.d_year,p.b_year + 80)
		AND s.source_id NOT IN 
			(
			SELECT DISTINCT source_id FROM person_place
			WHERE person_id = param_person_id
			)
		AND s.country_id IN
			(
			SELECT DISTINCT p.country_id FROM place p 
			JOIN person_place pp
			ON p.place_id = pp.place_id
			WHERE pp.person_id = param_person_id
			)
		ORDER BY s.country_id, s.event_type_id, s.max_date ASC;
	END IF;
END//

DELIMITER ;

CALL sp_missing_records(32);

-- ___________________________________________________________________________________________________

-- Ancestry Project Triggers

-- Project Requirements
    -- Advanced: 	triggers

-- Trigger name: year_matcher_i/year_matcher_u
-- Trigger purpose: 
	-- data integrity - updates PERSON table to ensure birth and death years match birth/death years in PERSON_PLACE table
    -- records update reason and details in ACTIVITY_LOG table
-- Challenges:
    -- capturing value in field to be updated (used a variable: @old_b_year)
    -- dealing with unexpected results from NULL values (used IFNULL() function)
    


DELIMITER //
CREATE TRIGGER year_matcher_i
AFTER INSERT
ON person_place
FOR EACH ROW
BEGIN
	IF
		new.event_type_id = 1
	THEN
		-- capture birth year to be updated from person table in variable
        SET @old_b_year = (SELECT b_year FROM person WHERE person_id = new.person_id);
		
        -- update birth year in person table
        UPDATE person p
        SET p.b_year = new.year
        WHERE p.person_id = new.person_id;
        
        -- insert record into activity log
        INSERT INTO activity_log (activity, activity_date, user)
        VALUES
        (
        CONCAT("[pp.pp_id ",new.pp_id," after insert trigger on p.person_id ",new.person_id,"] p.b_year updated from ",@old_b_year," to ",new.year),
        NOW(),
        SESSION_USER()
        );
	ELSEIF
		new.event_type_id = 5
    THEN
		SET @old_d_year = IFNULL((SELECT d_year FROM person WHERE person_id = new.person_id),0);
        
        UPDATE person p
        SET 
			p.d_year = new.year,
			living = NULL
        WHERE p.person_id = new.person_id;
        
        INSERT INTO activity_log (activity, activity_date, user)
        VALUES
        (
        CONCAT("[pp.pp_id ",new.pp_id," after insert trigger on p.person_id ",new.person_id,"] p.d_year updated from ",@old_d_year," to ",new.year),
        NOW(),
        SESSION_USER()
        );
	END IF;
END//
DELIMITER ;


-- UPDATE TRIGGER YEAR_MATCHER_U

DELIMITER //
CREATE TRIGGER year_matcher_u
AFTER UPDATE
ON person_place
FOR EACH ROW
BEGIN
	IF
		new.event_type_id = 1
	THEN
		-- capture birth year to be updated from person table in variable
        SET @old_b_year = (SELECT b_year FROM person WHERE person_id = new.person_id);
		
        -- update birth year in person table
        UPDATE person p
        SET p.b_year = new.year
        WHERE p.person_id = new.person_id;
        
        -- insert record into activity log
        INSERT INTO activity_log (activity, activity_date, user)
        VALUES
        (
        CONCAT("[pp.pp_id ",new.pp_id," after update trigger on p.person_id ",new.person_id,"] p.b_year updated from ",@old_b_year," to ",new.year),
        NOW(),
        SESSION_USER()
        );
	ELSEIF
		new.event_type_id = 5
    THEN
		SET @old_d_year = IFNULL((SELECT d_year FROM person WHERE person_id = new.person_id),0);
        
        UPDATE person p
        SET 
			p.d_year = new.year,
			living = NULL
        WHERE p.person_id = new.person_id;
        
        INSERT INTO activity_log (activity, activity_date, user)
        VALUES
        (
        CONCAT("[pp.pp_id ",new.pp_id," after update trigger on p.person_id ",new.person_id,"] p.d_year updated from ",@old_d_year," to ",new.year),
        NOW(),
        SESSION_USER()
        );
	END IF;
END//
DELIMITER ;

-- Trigger test

-- YEAR_MATCHER_I

INSERT INTO person_place (person_id,place_id,year,event_type_id,source_id,occupation_id,note)
	VALUES 
        (1,14,1970,1,39,NULL,"Trigger Test"),
        (1,14,2024,5,39,NULL,"Trigger Test");

-- check results of trigger
SELECT * FROM person WHERE person_id = 1;
SELECT * FROM person_place WHERE person_id = 1;
SELECT * FROM activity_log;

-- YEAR_MATCHER_U

-- update birth year in person_place to fire trigger year_matcher_u (*depends on insert into above*)
UPDATE person_place
SET year = 1968
WHERE person_id = 1 AND event_type_id = 1;

-- update death year in person_place to fire trigger year_matcher_u (*depends on insert into above*)
UPDATE person_place
SET year = 2024
WHERE person_id = 1 AND event_type_id = 5;

-- check results of trigger
SELECT * FROM person WHERE person_id = 1;
SELECT * FROM person_place WHERE person_id = 1;
SELECT * FROM activity_log;

-- Undo tests

DELETE FROM person_place
WHERE note = "Trigger Test";

UPDATE person
SET b_year = 1968, d_year = NULL, living = 1
WHERE person_id = 1;

DELETE FROM activity_log;
