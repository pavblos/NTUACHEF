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

CREATE VIEW `CookView` AS
SELECT 
  `Cook_ID`,
  `First_Name`,
  `Last_Name`,
  `Phone_Number`,
  `Date_of_Birth`,
  TIMESTAMPDIFF(YEAR, `Date_of_Birth`, CURDATE()) AS `Age`,
  `Years_of_Experience`,
  `Cook_Level`,
  `Image_ID`
FROM `Cook`;

CREATE VIEW CookLevelMapping AS
SELECT 
    Cook_ID,
    First_Name,
    Last_Name,
    Phone_Number,
    Date_of_Birth,
    Years_of_Experience,
    CASE Cook_Level
        WHEN 'C Cook' THEN 1
        WHEN 'B Cook' THEN 2
        WHEN 'A Cook' THEN 3
        WHEN 'Chef Assistant' THEN 4
        WHEN 'Chef' THEN 5
    END AS Level_Number,
    Image_ID
FROM 
    Cook;


DELIMITER //

CREATE TRIGGER before_episode_insert
BEFORE INSERT ON Episode
FOR EACH ROW
BEGIN
    DECLARE max_episode_no INT;
  -- Check if the season already has 10 episodes
    SELECT COUNT(*)
    INTO max_episode_no
    FROM Episode
    WHERE Season_ID = NEW.Season_ID;

    IF max_episode_no >= 10 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A season cannot have more than 10 episodes.';
    END IF;
    
    -- Check if the new episode number is sequential
    SELECT IFNULL(MAX(Episode_No), 0) + 1 INTO max_episode_no
    FROM Episode
    WHERE Season_ID = NEW.Season_ID;

    IF NEW.Episode_No != max_episode_no THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Episode numbers must be sequential within a season.';
    END IF;

    
END;
//
DELIMITER ;

DELIMITER //

CREATE TRIGGER before_episode_judge_insert
BEFORE INSERT ON EpisodeJudge
FOR EACH ROW
BEGIN
    DECLARE judge_count INT;
    DECLARE episodes_in_a_row INT;
    DECLARE current_episode_no INT;
    DECLARE current_season_id INT;
    -- Count the number of judges for the episode
    SELECT COUNT(*)
    INTO judge_count
    FROM EpisodeJudge
    WHERE Episode_ID = NEW.Episode_ID;

    -- If the episode already has 3 judges, raise an error
    IF judge_count >= 3 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'An episode cannot have more than 3 judges.';
    END IF;


    

    -- Get the episode number and season ID of the new entry
    SELECT Episode_No, Season_ID
    INTO current_episode_no, current_season_id
    FROM Episode
    WHERE Episode_ID = NEW.Episode_ID;

    -- Check how many consecutive episodes the judge has been in
    SELECT COUNT(*)
    INTO episodes_in_a_row
    FROM (
        SELECT EJ.Episode_ID
        FROM EpisodeJudge EJ
        INNER JOIN Episode E ON EJ.Episode_ID = E.Episode_ID
        WHERE EJ.Cook_ID = NEW.Cook_ID
        AND E.Season_ID = current_season_id
        AND E.Episode_No BETWEEN (current_episode_no - 3) AND (current_episode_no - 1)
    ) AS cons_ep;

    IF episodes_in_a_row >= 3 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A judge cannot be a judge for more than 3 episodes in a row in a given season.';
    END IF;
END;
//

DELIMITER ;
DELIMITER //

DELIMITER //

DELIMITER //

CREATE TRIGGER before_insert_episodecookcuisinerecipe
BEFORE INSERT ON EpisodeCookCuisineRecipe
FOR EACH ROW
BEGIN
    DECLARE cook_is_judge INT;
    DECLARE new_recipe_cuisine_id INT;
    DECLARE cook_recipe_count_in_episode INT;
    DECLARE specialization_count INT;

    DECLARE current_episode_no INT;
    DECLARE current_season_id INT;

    DECLARE consecutive_chef_count INT;
    DECLARE consecutive_cuisine_count INT;
    DECLARE consecutive_recipe_count INT;

    -- Check if the cook is not a judge in the episode
    SELECT COUNT(*)
    INTO cook_is_judge
    FROM EpisodeJudge
    WHERE Episode_ID = NEW.Episode_ID
    AND Cook_ID = NEW.Cook_ID;

    IF cook_is_judge > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The cook cannot be a judge in the same episode.';
    END IF;

    -- Check if the recipe belongs to the given cuisine
    SELECT Cuisine_ID INTO new_recipe_cuisine_id FROM Recipe WHERE Recipe_ID = NEW.Recipe_ID;

    IF new_recipe_cuisine_id <> NEW.Cuisine_ID THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The recipe must belong to the given cuisine.';
    END IF;
    -- Check if cook specializes in given cuisine
    SELECT COUNT(*)
    INTO specialization_count
    FROM CookSpecializesInCuisine
    WHERE Cook_ID = NEW.Cook_ID AND Cuisine_ID = NEW.Cuisine_ID;

    IF specialization_count = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'The cook does not specialize in the given cuisine.';
    END IF;

    -- Check if there are at most 10 EpisodeCookCuisineRecipe records for the given episode
    SELECT COUNT(*)
    INTO cook_recipe_count_in_episode
    FROM EpisodeCookCuisineRecipe
    WHERE Episode_ID = NEW.Episode_ID;

    IF cook_recipe_count_in_episode >= 10 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'There can be at most 10 EpisodeCookCuisineRecipe records for a given episode.';
    END IF;


    SELECT Episode_No, Season_ID
    INTO current_episode_no, current_season_id
    FROM Episode
    WHERE Episode_ID = NEW.Episode_ID;

    -- check for 3 concecutive chefs
    SELECT COUNT(*)
    INTO consecutive_chef_count
    FROM (SELECT ECCR.Episode_ID
         FROM Episode E JOIN EpisodeCookCuisineRecipe ECCR 
         ON E.Episode_ID = ECCR.Episode_ID
         WHERE current_season_id = E.Season_ID
         AND ECCR.Cook_ID = NEW.Cook_ID  
         AND E.Episode_No BETWEEN (current_episode_no - 3) AND (current_episode_no - 1)
    ) AS cons_chef;

    IF consecutive_chef_count >= 3 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A Chef cannot be a participant for more than 3 episodes in a row in a given season.';
    END IF;

    SELECT COUNT(*)
    INTO consecutive_cuisine_count
    FROM (SELECT ECCR.Episode_ID FROM Episode E JOIN EpisodeCookCuisineRecipe ECCR 
    ON E.Episode_ID = ECCR.Episode_ID
    WHERE NEW.Cuisine_ID = ECCR.Cuisine_ID
    AND E.Season_ID = current_season_id
    AND E.Episode_No BETWEEN (current_episode_no - 3) AND (current_episode_no - 1)
    ) AS cons_cuis;

    IF consecutive_cuisine_count >= 3 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A cuisine cannot appear for more than 3 episodes in a row in a given season.';
    END IF;

    SELECT COUNT(*)
    INTO consecutive_recipe_count
    FROM (SELECT ECCR.Episode_ID FROM Episode E JOIN EpisodeCookCuisineRecipe ECCR 
    ON E.Episode_ID = ECCR.Episode_ID
    WHERE E.Season_ID = current_season_id
    AND NEW.Recipe_ID = ECCR.Recipe_ID
    AND E.Episode_No BETWEEN (current_episode_no - 3) AND (current_episode_no - 1)
    ) AS cons_rec;

    IF consecutive_recipe_count >= 3 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A recipe cannot appear for more than 3 episodes in a row in a given season.';
    END IF;

END;
//
DELIMITER ;


DELIMITER //

CREATE TRIGGER before_insert_cookratings
BEFORE INSERT ON CookRatings
FOR EACH ROW
BEGIN
    DECLARE judge_is_valid INT;
    DECLARE cook_is_valid INT;

    -- Check if the judge cook is a judge in the given episode
    SELECT COUNT(*)
    INTO judge_is_valid
    FROM EpisodeJudge
    WHERE Episode_ID = NEW.Episode_ID
    AND Cook_ID = NEW.Judge_Cook_ID;

    IF judge_is_valid = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'The judge cook must be a judge in the given episode.';
    END IF;

    -- Check if the episode cook is a cook in the given episode
    SELECT COUNT(*)
    INTO cook_is_valid
    FROM EpisodeCookCuisineRecipe
    WHERE Episode_ID = NEW.Episode_ID
    AND Cook_ID = NEW.Episode_Cook_ID;

    IF cook_is_valid = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'The episode cook must be a cook in the given episode.';
    END IF;
END;
//

DELIMITER ;

DELIMITER //

CREATE TRIGGER `before_judge_delete`
BEFORE DELETE ON `EpisodeJudge`
FOR EACH ROW
BEGIN
    DECLARE judge_count INT;
    SELECT COUNT(*) INTO judge_count FROM `EpisodeJudge` WHERE `Episode_ID` = OLD.`Episode_ID`;
    IF judge_count <= 3 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot remove a judge as each episode must have exactly 3 judges';
    END IF;
END;
//

DELIMITER ;
