CREATE TABLE IF NOT EXISTS `Images` (
  `Image_ID` int AUTO_INCREMENT,
  `Image_URL` varchar(300) DEFAULT 'http://ikonomoug.com/ntuachef.png',
  `Description` varchar(100),
  PRIMARY KEY(`Image_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


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


CREATE TABLE IF NOT EXISTS `Cook` (
  `Cook_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Phone_Number` bigint NOT NULL,  
  `Date_of_Birth` date NOT NULL,
  `Years_of_Experience` int NOT NULL,
  `Cook_Level` enum('C Cook', 'B Cook', 'A Cook', 'Chef Assistant', 'Chef') NOT NULL,
  `Image_ID` int DEFAULT 1,
  PRIMARY KEY (`Cook_ID`),
  FOREIGN KEY (`Image_ID`) REFERENCES `Images`(`Image_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `Recipe_Cooks` (
  `Recipe_ID` int,
  `Cook_ID` int,
  PRIMARY KEY (`Recipe_ID`, `Cook_ID`),
  FOREIGN KEY (`Recipe_ID`) REFERENCES `Recipe`(`Recipe_ID`) ON DELETE CASCADE,
  FOREIGN KEY (`Cook_ID`) REFERENCES `Cook`(`Cook_ID`) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `CookSpecializesInCuisine` (
  `Cook_ID` int,
  `Cuisine_ID` int,
  PRIMARY KEY (`Cook_ID`, `Cuisine_ID`),
  FOREIGN KEY (`Cook_ID`) REFERENCES `Cook`(`Cook_ID`) ON DELETE CASCADE,
  FOREIGN KEY (`Cuisine_ID`) REFERENCES `Cuisine`(`Cuisine_ID`) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `Season` (
  `Season_ID` int AUTO_INCREMENT,
  `Year` int,
  PRIMARY KEY (`Season_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `Episode` (
  `Episode_ID` int AUTO_INCREMENT,
  `Episode_No` tinyint NOT NULL CHECK (`Episode_No` >= 1 AND `Episode_No` <= 10),
  `Season_ID` int,
  PRIMARY KEY (`Episode_ID`),
  FOREIGN KEY (`Season_ID`) REFERENCES `Season`(`Season_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `EpisodeJudge` (
  `Episode_ID` int,
  `Cook_ID` int,
  PRIMARY KEY (`Episode_ID`, `Cook_ID`),
  FOREIGN KEY (`Episode_ID`) REFERENCES `Episode`(`Episode_ID`) ON DELETE CASCADE,
  FOREIGN KEY (`Cook_ID`) REFERENCES `Cook`(`Cook_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `EpisodeCookCuisineRecipe` (
  `Episode_ID` int,
  `Cook_ID` int,
  `Cuisine_ID` int,
  `Recipe_ID` int,
  PRIMARY KEY (`Episode_ID`, `Cook_ID`),
  FOREIGN KEY (`Episode_ID`) REFERENCES `Episode`(`Episode_ID`) ON DELETE CASCADE,
  FOREIGN KEY (`Cook_ID`) REFERENCES `Cook`(`Cook_ID`) ON DELETE CASCADE,
  FOREIGN KEY (`Cuisine_ID`) REFERENCES `Cuisine`(`Cuisine_ID`) ON DELETE CASCADE,
  FOREIGN KEY (`Recipe_ID`) REFERENCES `Recipe`(`Recipe_ID`) ON DELETE CASCADE,
  UNIQUE (`Episode_ID`, `Recipe_ID`),
  UNIQUE (`Episode_ID`, `Cuisine_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `CookRatings` (
  `Episode_ID` int,
  `Judge_Cook_ID` int,
  `Episode_Cook_ID` int,
  `Rating` tinyint NOT NULL CHECK (`Rating` BETWEEN 1 AND 5),
  PRIMARY KEY (`Episode_ID`, `Judge_Cook_ID`, `Episode_Cook_ID`),
  FOREIGN KEY (`Episode_ID`) REFERENCES `Episode`(`Episode_ID`),
  FOREIGN KEY (`Judge_Cook_ID`) REFERENCES `Cook`(`Cook_ID`),
  FOREIGN KEY (`Episode_Cook_ID`) REFERENCES `Cook`(`Cook_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS `Cook` (
  `Cook_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Phone_Number` bigint NOT NULL,  
  `Date_of_Birth` date NOT NULL,
  `Years_of_Experience` int NOT NULL,
  `Cook_Level` enum('C Cook', 'B Cook', 'A Cook', 'Chef Assistant', 'Chef') NOT NULL,
  `Image_ID` int DEFAULT 1,
  PRIMARY KEY (`Cook_ID`),
  FOREIGN KEY (`Image_ID`) REFERENCES `Images`(`Image_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS `Recipe_Cooks` (
  `Recipe_ID` int,
  `Cook_ID` int,
  PRIMARY KEY (`Recipe_ID`, `Cook_ID`),
  FOREIGN KEY (`Recipe_ID`) REFERENCES `Recipe`(`Recipe_ID`) ON DELETE CASCADE,
  FOREIGN KEY (`Cook_ID`) REFERENCES `Cook`(`Cook_ID`) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `CookSpecializesInCuisine` (
  `Cook_ID` int,
  `Cuisine_ID` int,
  PRIMARY KEY (`Cook_ID`, `Cuisine_ID`),
  FOREIGN KEY (`Cook_ID`) REFERENCES `Cook`(`Cook_ID`) ON DELETE CASCADE,
  FOREIGN KEY (`Cuisine_ID`) REFERENCES `Cuisine`(`Cuisine_ID`) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS `Season` (
  `Season_ID` int AUTO_INCREMENT,
  `Year` int,
  PRIMARY KEY (`Season_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `Episode` (
  `Episode_ID` int AUTO_INCREMENT,
  `Episode_No` tinyint NOT NULL CHECK (`Episode_No` >= 1 AND `Episode_No` <= 10),
  `Season_ID` int,
  PRIMARY KEY (`Episode_ID`),
  FOREIGN KEY (`Season_ID`) REFERENCES `Season`(`Season_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `EpisodeJudge` (
  `Episode_ID` int,
  `Cook_ID` int,
  PRIMARY KEY (`Episode_ID`, `Cook_ID`),
  FOREIGN KEY (`Episode_ID`) REFERENCES `Episode`(`Episode_ID`) ON DELETE CASCADE,
  FOREIGN KEY (`Cook_ID`) REFERENCES `Cook`(`Cook_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `EpisodeCookCuisineRecipe` (
  `Episode_ID` int,
  `Cook_ID` int,
  `Cuisine_ID` int,
  `Recipe_ID` int,
  PRIMARY KEY (`Episode_ID`, `Cook_ID`),
  FOREIGN KEY (`Episode_ID`) REFERENCES `Episode`(`Episode_ID`) ON DELETE CASCADE,
  FOREIGN KEY (`Cook_ID`) REFERENCES `Cook`(`Cook_ID`) ON DELETE CASCADE,
  FOREIGN KEY (`Cuisine_ID`) REFERENCES `Cuisine`(`Cuisine_ID`) ON DELETE CASCADE,
  FOREIGN KEY (`Recipe_ID`) REFERENCES `Recipe`(`Recipe_ID`) ON DELETE CASCADE,
  UNIQUE (`Episode_ID`, `Recipe_ID`),
  UNIQUE (`Episode_ID`, `Cuisine_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `CookRatings` (
  `Episode_ID` int,
  `Judge_Cook_ID` int,
  `Episode_Cook_ID` int,
  `Rating` tinyint NOT NULL CHECK (`Rating` BETWEEN 1 AND 5),
  PRIMARY KEY (`Episode_ID`, `Judge_Cook_ID`, `Episode_Cook_ID`),
  FOREIGN KEY (`Episode_ID`) REFERENCES `Episode`(`Episode_ID`),
  FOREIGN KEY (`Judge_Cook_ID`) REFERENCES `Cook`(`Cook_ID`),
  FOREIGN KEY (`Episode_Cook_ID`) REFERENCES `Cook`(`Cook_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
