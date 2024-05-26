-- ######################### RecipeTables ############################

-- RECIPE 
CREATE INDEX idx_recipe_base_ingredient ON Recipe(Base_Ingredient_ID);
CREATE INDEX idx_recipe_cuisine ON Recipe(Cuisine_ID);
CREATE INDEX idx_recipe_image ON Recipe(Image_ID);

-- INGREDIENT
CREATE INDEX idx_ingredient_food_type ON Ingredient(Food_Type_ID);

-- RECIPEINGREDIENT
CREATE INDEX idx_recipe_ingredient ON RecipeIngredient(Recipe_ID, Ingredient_ID); -- Composite Index

-- EPISODECOOKCUISINERECIPE
CREATE INDEX idx_eccr_episode ON EpisodeCookCuisineRecipe(Episode_ID);
CREATE INDEX idx_eccr_cook ON EpisodeCookCuisineRecipe(Cook_ID);
CREATE INDEX idx_eccr_cuisine ON EpisodeCookCuisineRecipe(Cuisine_ID);
CREATE INDEX idx_eccr_recipe ON EpisodeCookCuisineRecipe(Recipe_ID);

-- EPISODEJUDGE
CREATE INDEX idx_episode_judge ON EpisodeJudge(Episode_ID, Cook_ID);

-- FOR IMAGE RETRIEVAL
CREATE INDEX idx_equipment_image ON Equipment(Image_ID);
CREATE INDEX idx_food_type_image ON Food_Type(Image_ID);





-- ######################### CookTables ############################

CREATE INDEX idx_episodecookcuisinerecipe_episodeid ON EpisodeCookCuisineRecipe(Episode_ID);
CREATE INDEX idx_episodecookcuisinerecipe_cookid ON EpisodeCookCuisineRecipe(Cook_ID);
CREATE INDEX idx_episodecookcuisinerecipe_cuisineid ON EpisodeCookCuisineRecipe(Cuisine_ID);
CREATE INDEX idx_episodecookcuisinerecipe_recipeid ON EpisodeCookCuisineRecipe(Recipe_ID);

CREATE INDEX idx_episodejudge_episodeid ON EpisodeJudge(Episode_ID);
CREATE INDEX idx_episodejudge_cookid ON EpisodeJudge(Cook_ID);

CREATE INDEX idx_cookspecializesincuisine_cookid_cuisineid ON CookSpecializesInCuisine(Cook_ID, Cuisine_ID);

CREATE INDEX idx_cook_yearsofexperience ON Cook(Years_of_Experience);
CREATE INDEX idx_cook_cooklevel ON Cook(Cook_Level);

CREATE INDEX idx_recipe_baseingredientid ON Recipe(Base_Ingredient_ID);
CREATE INDEX idx_recipe_cuisineid ON Recipe(Cuisine_ID);

CREATE INDEX idx_recipeingredient_recipeid ON RecipeIngredient(Recipe_ID);
CREATE INDEX idx_recipeingredient_ingredientid ON RecipeIngredient(Ingredient_ID);

CREATE INDEX idx_reciperequiresequipment_recipeid ON RecipeRequiresEquipment(Recipe_ID);
CREATE INDEX idx_reciperequiresequipment_equipmentid ON RecipeRequiresEquipment(Equipment_ID);


