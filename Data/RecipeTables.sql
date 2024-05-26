CREATE TABLE IF NOT EXISTS `Images` (
  `Image_ID` int AUTO_INCREMENT,
  `Image_URL` varchar(300) DEFAULT 'http://ikonomoug.com/ntuachef.png',
  `Description` varchar(100),
  PRIMARY KEY(`Image_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO Images (Image_URL, Description) VALUES 
('http://ikonomoug.com/ntuachef.png', 'pipis 1234 pipiiis (default pipis)');

CREATE TABLE IF NOT EXISTS `Food_Type` (
    `Food_Type_ID` int AUTO_INCREMENT,
    `Name` varchar(40) NOT NULL UNIQUE,
    `Description` varchar(250) NOT NULL,
    `Image_ID` int DEFAULT 1,
    PRIMARY KEY(`Food_Type_ID`),
    FOREIGN KEY (`Image_ID`) REFERENCES `Images`(`Image_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS `Equipment` (
  `Equipment_ID` int AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL UNIQUE,
  `Instructions` varchar(150),
  `Image_ID` int DEFAULT 1,
  PRIMARY KEY(`Equipment_ID`),
  FOREIGN KEY (`Image_ID`) REFERENCES `Images`(`Image_ID`) ON DELETE SET NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `Label` (
  `Label_ID` int NOT NULL AUTO_INCREMENT,
  `Label_Name` varchar(20) NOT NULL UNIQUE,
  PRIMARY KEY (`Label_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `Meal` (
  `Meal_ID` int AUTO_INCREMENT,
  `Type` varchar(50) NOT NULL UNIQUE,
  `Image_ID` int DEFAULT 1,
  PRIMARY KEY(`Meal_ID`),
  FOREIGN KEY (`Image_ID`) REFERENCES `Images`(`Image_ID`) ON DELETE SET NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `Cuisine` (
  `Cuisine_ID` int AUTO_INCREMENT,
  `Cuisine_Name` varchar(50) NOT NULL UNIQUE,
  `Image_ID` int DEFAULT 1,
  PRIMARY KEY (`Cuisine_ID`),
  FOREIGN KEY (`Image_ID`) REFERENCES `Images`(`Image_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `Theme` (
  `Theme_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL UNIQUE,
  `Description` varchar(150),
  PRIMARY KEY (`Theme_ID`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `Tips` (
  `Tip_ID` int(50) NOT NULL AUTO_INCREMENT,
  `Description` varchar(150) NOT NULL,
  PRIMARY KEY (`Tip_ID`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS `Step` (
    `Step_id` int(50) NOT NULL AUTO_INCREMENT,
    `Action` varchar(150) NOT NULL UNIQUE,
    PRIMARY KEY (`Step_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;





CREATE TABLE IF NOT EXISTS `Ingredient` (
  `Ingredient_ID` int AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL UNIQUE,
  `Fats_per_100g` int NOT NULL,
  `Carbs_per_100g` int NOT NULL,
  `Protein_per_100g` int NOT NULL,
  `Calories_per_100g` int NOT NULL,
  `Food_Type_ID` int NOT NULL,
  `Image_ID` int DEFAULT 1,
  PRIMARY KEY (`Ingredient_ID`), 
  FOREIGN KEY (`Food_Type_ID`) REFERENCES `Food_Type`(`Food_Type_ID`) ON DELETE CASCADE,
  FOREIGN KEY (`Image_ID`) REFERENCES `Images`(`Image_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS `Recipe` (
  `Recipe_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL UNIQUE,
  `Difficulty` tinyint NOT NULL CHECK (`Difficulty` >= 1 AND `Difficulty` <= 5),
  `Description` varchar(150) NOT NULL,
  `Variety` enum('Pastry', 'Culinary') NOT NULL,
  `Diet` varchar(30),

  `Prep_time` int NOT NULL,
  `Cooking_time` int NOT NULL, 
  `Total_time` int GENERATED ALWAYS AS (Prep_time + Cooking_time) STORED, 

  `Base_Ingredient_ID` int NOT NULL,
  `Cuisine_ID` int NOT NULL,
  `Image_ID` int DEFAULT 1,

  PRIMARY KEY (`Recipe_ID`),
  FOREIGN KEY (`Base_Ingredient_ID`) REFERENCES `Ingredient`(`Ingredient_ID`),
  FOREIGN KEY (`Cuisine_ID`) REFERENCES `Cuisine`(`Cuisine_ID`),
  FOREIGN KEY (`Image_ID`) REFERENCES `Images`(`Image_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS `Recipe_Label` (
  `Recipe_ID` int,
  `Label_ID` int,
  PRIMARY KEY (`Recipe_ID`, `Label_ID`),
  FOREIGN KEY (`Recipe_ID`) REFERENCES `Recipe`(`Recipe_ID`),
  FOREIGN KEY (`Label_ID`) REFERENCES `Label`(`Label_ID`)    
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `RecipeMeal` (
  `Recipe_ID` int,
  `Meal_ID` int,
  PRIMARY KEY (`Recipe_ID`, `Meal_ID`),
  FOREIGN KEY (`Recipe_ID`) REFERENCES `Recipe`(`Recipe_ID`),
  FOREIGN KEY (`Meal_ID`) REFERENCES `Meal`(`Meal_ID`)    
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE IF NOT EXISTS `RecipeIngredient` (
  `Recipe_ID` int NOT NULL,
  `Ingredient_ID` int NOT NULL,
  `Quantity_Grams` int,
  `Quantity` varchar(20),
  PRIMARY KEY (`Recipe_ID`, `Ingredient_ID`),
  FOREIGN KEY (`Recipe_ID`) REFERENCES `Recipe`(`Recipe_ID`),
  FOREIGN KEY (`Ingredient_ID`) REFERENCES `Ingredient`(`Ingredient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `RecipeRequiresEquipment` (
  `Recipe_ID` int NOT NULL,
  `Equipment_ID` int NOT NULL,
  PRIMARY KEY (`Recipe_ID`, `Equipment_ID`),
  FOREIGN KEY (`Recipe_ID`) REFERENCES `Recipe`(`Recipe_ID`),
  FOREIGN KEY (`Equipment_ID`) REFERENCES `Equipment`(`Equipment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `RecipeTips` (
  `Recipe_ID` int NOT NULL,
  `Tip_ID` int NOT NULL,
  PRIMARY KEY (`Recipe_ID`, `Tip_ID`),
  FOREIGN KEY (`Recipe_ID`) REFERENCES `Recipe`(`Recipe_ID`) ON DELETE CASCADE,
  FOREIGN KEY (`Tip_ID`) REFERENCES `Tips`(`Tip_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE IF NOT EXISTS `RecipeIsThemed` (
  `Recipe_ID` int,
  `Theme_ID` int,
  PRIMARY KEY (`Recipe_ID`, `Theme_ID`),
  FOREIGN KEY (`Recipe_ID`) REFERENCES `Recipe`(`Recipe_ID`) ON DELETE CASCADE,
  FOREIGN KEY (`Theme_ID`) REFERENCES `Theme`(`Theme_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `RecipeStep` (
  `Recipe_ID` int,
  `Step_ID` int,
  `Step_Number` int NOT NULL,
  PRIMARY KEY (`Recipe_ID`, `Step_ID`),
  UNIQUE (`Recipe_ID`, `Step_Number`),
  FOREIGN KEY (`Recipe_ID`) REFERENCES `Recipe`(`Recipe_ID`) ON DELETE CASCADE,
  FOREIGN KEY (`Step_ID`) REFERENCES `Step`(`Step_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE VIEW RecipeNutritionalInfo AS
SELECT 
    r.Recipe_ID,
    r.Name,
    r.Difficulty,
    r.Description,
    r.Diet,
    r.Prep_time,
    r.Cooking_time,
    r.Total_time,
    r.Base_Ingredient_ID,
    r.Cuisine_ID,
    r.Image_ID,
    SUM(CASE WHEN ri.Quantity_Grams IS NOT NULL THEN ri.Quantity_Grams * i.Fats_per_100g / 100 ELSE 0 END) AS Fats_per_Portion,
    SUM(CASE WHEN ri.Quantity_Grams IS NOT NULL THEN ri.Quantity_Grams * i.Carbs_per_100g / 100 ELSE 0 END) AS Carbs_per_Portion,
    SUM(CASE WHEN ri.Quantity_Grams IS NOT NULL THEN ri.Quantity_Grams * i.Protein_per_100g / 100 ELSE 0 END) AS Protein_per_Portion,
    SUM(CASE WHEN ri.Quantity_Grams IS NOT NULL THEN ri.Quantity_Grams * i.Calories_per_100g / 100 ELSE 0 END) AS Calories_per_Portion
FROM 
    Recipe r
JOIN 
    RecipeIngredient ri ON r.Recipe_ID = ri.Recipe_ID
JOIN 
    Ingredient i ON ri.Ingredient_ID = i.Ingredient_ID
GROUP BY 
    r.Recipe_ID,
    r.Name,
    r.Difficulty,
    r.Description,
    r.Diet,
    r.Prep_time,
    r.Cooking_time,
    r.Total_time,
    r.Base_Ingredient_ID,
    r.Cuisine_ID,
    r.Image_ID;

DELIMITER $$

CREATE TRIGGER `AutoIncrementStepNumber`  -- Ensure that Step Number is sequential (and unique)
BEFORE INSERT ON `RecipeStep`
FOR EACH ROW
BEGIN
    DECLARE max_step_number INT;
    SELECT IFNULL(MAX(`Step_Number`), 0) INTO max_step_number FROM `RecipeStep` WHERE `Recipe_ID` = NEW.`Recipe_ID`;
    SET NEW.`Step_Number` = max_step_number + 1;
END$$

DELIMITER $$
CREATE TRIGGER `CheckTipsBeforeInsert`
BEFORE INSERT ON `RecipeTips`
FOR EACH ROW
BEGIN
    DECLARE tip_count INT DEFAULT 0;
    SELECT COUNT(*) INTO tip_count FROM `RecipeTips` WHERE `Recipe_ID` = NEW.`Recipe_ID`;
    IF tip_count >= 3 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot add more than 3 tips per recipe';
    END IF;
END$$



DELIMITER ;


DELIMITER $$

CREATE TRIGGER SetDietBeforeInsertOrUpdate
BEFORE INSERT ON `Recipe`
FOR EACH ROW
BEGIN
  SET NEW.`Diet` = (
    SELECT CASE ft.`Food_Type_ID`
      WHEN 1 THEN 'Herbal'
      WHEN 2 THEN 'Caffeinated'
      WHEN 3 THEN 'Preserved'
      WHEN 4 THEN 'Sweetened'
      WHEN 5 THEN 'Fatty'
      WHEN 6 THEN 'Dairy'
      WHEN 7 THEN 'Meaty'
      WHEN 8 THEN 'Seafood'
      WHEN 9 THEN 'Grain'
      WHEN 10 THEN 'Plant-based'
      WHEN 11 THEN 'Sweetened'
      WHEN 12 THEN 'Beverages'
    END
    FROM `Ingredient` i
    JOIN `Food_Type` ft ON i.`Food_Type_ID` = ft.`Food_Type_ID`
    WHERE i.`Ingredient_ID` = NEW.`Base_Ingredient_ID`
  );
END$$

CREATE TRIGGER SetDietBeforeUpdate
BEFORE UPDATE ON `Recipe`
FOR EACH ROW
BEGIN
  SET NEW.`Diet` = (
    SELECT CASE ft.`Food_Type_ID`
      WHEN 1 THEN 'Herbal'
      WHEN 2 THEN 'Caffeinated'
      WHEN 3 THEN 'Preserved'
      WHEN 4 THEN 'Sweetened'
      WHEN 5 THEN 'Fatty'
      WHEN 6 THEN 'Dairy'
      WHEN 7 THEN 'Meaty'
      WHEN 8 THEN 'Seafood'
      WHEN 9 THEN 'Grain'
      WHEN 10 THEN 'Plant-based'
      WHEN 11 THEN 'Sweetened'
      WHEN 12 THEN 'Beverages'
    END
    FROM `Ingredient` i
    JOIN `Food_Type` ft ON i.`Food_Type_ID` = ft.`Food_Type_ID`
    WHERE i.`Ingredient_ID` = NEW.`Base_Ingredient_ID`
  );
END$$

DELIMITER ;