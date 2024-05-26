-- CREATE ADMIN
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, ALTER, INDEX, EXECUTE, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `lala`.* TO 'admin'@'localhost';
GRANT RELOAD, LOCK TABLES, REPLICATION CLIENT ON *.* TO 'admin'@'localhost';

FLUSH PRIVILEGES;

-- CREATE USER 
CREATE USER 'cook_17'@'localhost' IDENTIFIED BY 'secure_password';

GRANT SELECT, INSERT ON BASH3.Recipe TO 'cook_17'@'localhost';

CREATE OR REPLACE VIEW `view_cook_17_recipes` AS
SELECT r.*
FROM BASH3.Recipe r
JOIN BASH3.EpisodeCookCuisineRecipe eccr ON r.Recipe_ID = eccr.Recipe_ID
WHERE eccr.Cook_ID = 17;
GRANT SELECT, UPDATE ON BASH3.view_cook_17_recipes TO 'cook_17'@'localhost';

GRANT SELECT ON BASH3.Cook TO 'cook_17'@'localhost';

DELIMITER $$
CREATE PROCEDURE `UpdateCookDetails` (IN p_cook_id INT, IN p_first_name VARCHAR(20), IN p_last_name VARCHAR(20), IN p_phone_number BIGINT)
BEGIN
    DECLARE v_cook_id INT DEFAULT 0;
    SELECT Cook_ID INTO v_cook_id FROM BASH3.Cook WHERE Cook_ID = p_cook_id;
    IF p_cook_id = v_cook_id THEN
        UPDATE BASH3.Cook
        SET First_Name = p_first_name, Last_Name = p_last_name, Phone_Number = p_phone_number
        WHERE Cook_ID = p_cook_id;
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'You can only update your own details.';
    END IF;
END$$
DELIMITER ;

GRANT EXECUTE ON PROCEDURE BASH3.UpdateCookDetails TO 'cook_17'@'localhost';






UPDATE COOK SET Last_Name = COOKIDIDOPOULOU WHERE COOK_ID = 8;

INSERT INTO `Recipe` 
(`Name`, `Difficulty`, `Description`, `Prep_time`, `Cooking_time`, `Base_Ingredient_ID`, `Cuisine_ID`, `Variety`)
VALUES
('ananopita', 1, 'me anana.', 20, 13, 5, 12, 'Culinary');