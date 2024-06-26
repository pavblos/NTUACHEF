-- Images 13
INSERT INTO Images (Image_URL, Description) VALUES 
('https://www.gannett-cdn.com/-mm-/fa914244af5254218ff03a5d6773eeb3b7df7f39/c=0-100-1920-1180/local/-/media/2017/01/17/PalmSprings/B9325785594Z.1_20170117184248_000_GOOH3U9JO.1-0.jpg?width=2560', 'Generic description'),
('https://imageio.forbes.com/specials-images/imageserve/6393aebacd1e996dc7b13be0/Herbal-tea-and-espresso-coffee/0x0.jpg?format=jpg&crop=1325,993,x81,y0,safe&width=1440', 'Generic description'),
('https://idsb.tmgrup.com.tr/ly/uploads/images/2022/09/04/228797.jpg', 'Generic description'),
('https://www.uhhospitals.org/-/media/Images/Blog/Variety-Sweeteners-1150297854-Blog-MainArticleImage.jpg?h=450&w=720&la=en&hash=0B0C7F5BB8CB198D2004B16F2CB16D202B6A6864', 'Generic description'),
('https://embracingnutrition.co.uk/wp-content/uploads/2020/12/healthy-fats-and-oils-2-scaled.jpg', 'Generic description'),
('https://samsungfood.com/wp-content/uploads/2023/02/shutterstock_1679020255.jpg', 'Generic description'),
('https://healthinfo.healthengine.com.au/assets/Various-fresh-meats.jpg', 'Generic description'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkQjxBnV7MpWtFj686BQwCnFjYXoYskwJXiBUYcUfOwg&s', 'Generic description'),
('https://aarnagroup.com/wp-content/uploads/2017/01/cereals-and-oilseeds.jpg', 'Generic description'),
('https://www.unlockfood.ca/getattachment/3405ed4c-970c-4ce8-a3dd-071097f9586e/bigstock-Low-cholesterol-vegan-plant-ba-429847295.jpg.aspx', 'Generic description'),
('https://www.foodnavigator.com/var/wrbm_gb_food_pharma/storage/images/_aliases/wrbm_large/publications/food-beverage-nutrition/foodnavigator.com/news/market-trends/do-consumers-prefer-sugar-or-non-nutritive-sweeteners/16996350-1-eng-GB/Do-consumers-prefer-sugar-or-non-nutritive-sweeteners.jpg', 'Generic description'),
('https://media.licdn.com/dms/image/D4D12AQF49K8TKNCPIQ/article-cover_image-shrink_600_2000/0/1704306561568?e=2147483647&v=beta&t=HT8A270FKov1HKGPsa_bd0Vx4SLXZKMVvIwzBbEuBNA', 'Generic description');




-- Food_Type 12
INSERT INTO `Food_Type` (`Name`, `Description`, `Image_ID`) VALUES
('Aromatic Herbs and Essential Oils', 'Aromatic herbs and essential oils used for flavoring and aroma in cooking and aromatherapy.', 2),
('Coffee, Tea, and Their Products', 'Includes coffee beans, tea leaves, and products made from them such as coffee grounds, tea bags, and instant coffee or tea mixes.', 3),
('Preserved Foods', 'Foods that have been processed to extend their shelf life, such as canned fruits and vegetables, pickles, and preserved meats.', 4),
('Sweeteners', 'Substances used to sweeten food and beverages, such as sugar, honey, maple syrup, and artificial sweeteners.', 5),
('Fats and Oils', 'Includes both animal fats (such as butter and lard) and plant-based oils (such as olive oil and coconut oil) used in cooking and baking.', 6),
('Milk, Eggs, and Their Products', 'Includes dairy products like milk, cheese, yogurt, and eggs, which are common ingredients in many recipes.', 7),
('Meat and Meat Products', 'Includes various types of meat (beef, pork, poultry, etc.) as well as processed meat products like sausages, bacon, and deli meats.', 8),
('Fish and Fish Products', 'Includes fresh and frozen fish, seafood, and products made from fish, such as fish fillets, canned tuna, and fish sticks.', 9),
('Cereals and Their Products', 'Includes grains like wheat, rice, oats, and corn, as well as products made from them like bread, pasta, and breakfast cereals.', 10),
('Various Plant-Based Foods', 'Various foods derived from plants, including fruits, vegetables, legumes, nuts, seeds, and plant-based meat substitutes.', 11),
('Products with Sweeteners', 'Products that contain added sweeteners, including candies, chocolates, desserts, and sweet snacks.', 12),
('Various Beverages', 'Includes a wide range of beverages such as water, soft drinks, juices, energy drinks, alcoholic beverages, and hot beverages like tea and coffee.', 13);

-- Equipment 10
INSERT INTO `Equipment` (`Name`, `Instructions`)
VALUES ('Pot', 'Use for boiling, stewing, and cooking soups.'),
       ('Pan', 'Use for frying, sautéing, and searing.'),
       ('Spatula', 'Use for flipping and stirring ingredients in a pan.'),
       ('Mixing Bowl', 'Use for mixing ingredients together.'),
       ('Knife', 'Use for cutting and chopping ingredients.'),
       ('Cutting Board', 'Use as a surface for cutting ingredients.'),
       ('Oven', 'Use for baking and roasting food.'),
       ('Microwave', 'Use for heating and cooking food quickly.'),
       ('Blender', 'Use for blending ingredients into smoothies or sauces.'),
       ('Grill', 'Use for grilling meat, vegetables, and seafood.');

-- Label 10
INSERT INTO `Label` (`Label_Name`)
VALUES ('Brunch'),
       ('Quick Lunch'),
       ('Cold Dish'),
       ('Dessert'),
       ('Vegetarian'),
       ('Gluten-Free'),
       ('Low-Carb'),
       ('Spicy'),
       ('Family-Friendly'),
       ('Vegan');


-- Meal 5
INSERT INTO `Meal` (`Type`)
VALUES ('Breakfast'),
       ('Brunch'),
       ('Lunch'),
       ('Dinner'),
       ('Supper');

-- Cuisine 20

INSERT INTO `Cuisine` (`Cuisine_Name`) VALUES
('Brazilian'),
('Chinese'),
('Cuban'),
('Ethiopian'),
('French'),
('Greek'),
('Indian'),
('Italian'),
('Japanese'),
('Korean'),
('Lebanese'),
('Mexican'),
('Moroccan'),
('Peruvian'),
('Russian'),
('South African'),
('Spanish'),
('Thai'),
('Turkish'),
('Vietnamese');


-- Theme 20
INSERT INTO `Theme` (`Name`, `Description`)
VALUES
('Easter', 'Recipes perfect for celebrating Easter, featuring eggs, lamb, and pastries.'),
('Summer Grilling', 'Outdoor barbecue and grilling recipes for summer cookouts.'),
('Winter Warmers', 'Hearty and warming dishes ideal for cold winter days.'),
('Vegan Delights', 'Delicious plant-based recipes suitable for vegans.'),
('Gluten-Free', 'Tasty options for those avoiding gluten.'),
('Kids Party', 'Fun and colorful recipes that are perfect for childrens parties.'),
('Halloween', 'Spooky and fun recipes for Halloween treats and meals.'),
('Valentines Day', 'Romantic recipes to share with your loved one on Valentines day.'),
('Comfort Food', 'Easy and comforting recipes for a feel-good meal.'),
('Quick Meals', 'Recipes that can be made in under 30 minutes for quick dining.'),
('Low Carb', 'Recipes designed for low carbohydrate diets.'),
('Festive Baking', 'Baking recipes for festive treats and homemade gifts.'),
('Seafood Fest', 'A celebration of seafood from shellfish to filets.'),
('Italian Night', 'All about Italian cuisine from pastas to tiramisu.'),
('Sushi Special', 'Explore the art of making sushi at home.'),
('Farm to Table', 'Emphasizing fresh and local ingredients straight from the farm.'),
('Moroccan Magic', 'Rich spices and vibrant flavors from Moroccan kitchens.'),
('French Pastry', 'Delicate and buttery pastries from the French cuisine.'),
('Tex-Mex Fiesta', 'A blend of Texan and Mexican cuisines for a spicy kick.'),
('Mediterranean Diet', 'Healthy and flavorful dishes from the Mediterranean region.');

-- Tips 10
INSERT INTO `Tips` (`Description`)
VALUES 
('Always read the recipe completely before starting to cook.'),
('Prep all your ingredients before you start cooking.'),
('Keep your knives sharp for safer and easier cutting.'),
('Clean as you go to keep your workspace organized and manageable.'),
('Taste your food as you cook to adjust seasoning.'),
('Use a timer to keep track of cooking durations.'),
('Store spices in a cool, dark place to extend their shelf life.'),
('Let meat rest before cutting to keep it juicy.'),
('Use fresh herbs at the end of cooking to maximize flavor.'),
('Invest in good quality cookware for consistent heat distribution.');

-- Step 70
INSERT INTO `Step` (`Action`)
VALUES 
('Gather all ingredients'),
('Measure 1 cup of flour'),
('Preheat oven to 350°F'),
('Grease the baking pan'),
('Chop the onions finely'),
('Mince two cloves of garlic'),
('Wash and dry fresh produce'),
('Boil 3 cups of water'),
('Simmer the broth on low heat'),
('Marinate the chicken for 2 hours'),
('Grate 100g of cheddar cheese'),
('Whisk three eggs in a bowl'),
('Mix dry and wet ingredients'),
('Knead the dough for 10 minutes'),
('Let the dough rise for 1 hour'),
('Punch down the dough to deflate'),
('Shape the dough into a loaf'),
('Bake in the oven for 30 minutes'),
('Test for doneness with a toothpick'),
('Cool on a wire rack for 15 minutes'),
('Melt butter in a saucepan'),
('Add spices to the hot oil'),
('Fry the spices for 2 minutes'),
('Pour in the tomato sauce'),
('Add salt and pepper to taste'),
('Stir in a cup of cream'),
('Bring to a boil then reduce to simmer'),
('Cook pasta until al dente'),
('Drain pasta and set aside'),
('Slice the beef into thin strips'),
('Heat the pan over medium-high heat'),
('Sauté vegetables for 5 minutes'),
('Add meat to the pan and cook'),
('Mix vegetables and meat together'),
('Sprinkle with fresh herbs before serving'),
('Whip cream until stiff peaks form'),
('Fold cream into the mixture gently'),
('Chill in the refrigerator'),
('Serve chilled with garnish'),
('Prepare ingredients for sauce'),
('Cook sauce over low heat'),
('Adjust the seasoning'),
('Prepare plates for serving'),
('Garnish with lemon slices'),
('Clean the kitchen counters'),
('Store leftovers in airtight containers'),
('Write down the recipe adjustments'),
('Share photos on social media'),
('Plan the menu for next meal'),
('Enjoy your meal!'),
('Zest one lemon for added flavor'),
('Juice the lemon and set aside for dressing'),
('Toast the nuts in a dry pan until fragrant'),
('Crush the garlic cloves with the flat side of a knife'),
('Sear the steak over high heat for a crusty finish'),
('Rest the steak for 10 minutes before slicing'),
('Infuse olive oil with rosemary and garlic for 30 minutes'),
('Layer the lasagna sheets with sauce and cheese'),
('Brew coffee for the dessert ingredient'),
('Caramelize onions over low heat for 20 minutes'),
('Blend the soup until smooth with a hand blender'),
('Chill the dessert in the freezer for faster setting'),
('Dress the salad just before serving to keep it crisp'),
('Toast bread slices lightly before making sandwiches'),
('Grind fresh spices for more impactful flavors'),
('Soak beans overnight in water before cooking'),
('Devein shrimp to prepare for cooking'),
('Marinate tofu for at least one hour in the fridge'),
('Slice baguette diagonally for better presentation'),
('Whisk vinaigrette ingredients until emulsified');

-- Ingredient 100
INSERT INTO `Ingredient` 
  (`Name`, `Fats_per_100g`, `Carbs_per_100g`, `Protein_per_100g`, `Calories_per_100g`, `Food_Type_ID`) 
VALUES
  ('Black Pepper', 3, 38, 11, 255, 1),
  ('Clove Oil', 0, 0, 0, 9, 1),
  ('Instant Coffee', 0, 4, 12, 2, 2),
  ('Matcha', 1, 34, 30, 3, 2),
  ('Smoked Salmon', 8, 0, 18, 117, 3),
  ('Pickled Onions', 0, 5, 1, 20, 3),
  ('Honey', 0, 82, 0, 304, 4),
  ('Agave Syrup', 0, 76, 0, 290, 4),
  ('Margarine', 81, 0, 0, 717, 5),
  ('Flaxseed Oil', 99, 0, 0, 900, 5),
  ('Yogurt', 3, 6, 4, 59, 6),
  ('Powdered Eggs', 48, 2, 45, 600, 6),
  ('Beef Jerky', 25, 3, 33, 410, 7),
  ('Chicken Nuggets', 12, 18, 14, 286, 7),
  ('Anchovies', 5, 0, 29, 210, 8),
  ('Mackerel', 25, 0, 19, 305, 8),
  ('Oats', 7, 66, 17, 389, 9),
  ('Cornmeal', 2, 72, 8, 362, 9),
  ('Spinach', 0, 4, 3, 23, 10),
  ('Broccoli', 0, 7, 3, 34, 10),
  ('Aspartame', 0, 0, 0, 4, 11),
  ('Saccharin', 0, 0, 0, 0, 11),
  ('Apple Juice', 0, 24, 0, 95, 12),
  ('Sports Drink', 0, 6, 0, 24, 12),
  ('Cinnamon Sticks', 1, 81, 4, 247, 1),
  ('Eucalyptus Oil', 0, 0, 0, 9, 1),
  ('Herbal Tea', 0, 0, 0, 1, 2),
  ('White Tea', 0, 0, 0, 1, 2),
  ('Canned Tuna', 1, 0, 12, 116, 3),
  ('Olives', 15, 6, 1, 145, 3),
('Rosemary', 6, 21, 3, 131, 1),
('Basil', 0, 2, 3, 22, 1),
('Coffee Arabica', 0, 4, 1, 40, 2),
('Green Tea', 0, 1, 1, 2, 2),
('Pickled Cucumber', 0, 3, 1, 11, 3),
('Maple Syrup', 0, 67, 0, 260, 4),
('Olive Oil', 100, 0, 0, 884, 5),
('Whole Egg', 11, 1, 13, 155, 6),
('Chicken Breast', 3, 0, 31, 165, 7),
('Salmon Fillet', 13, 0, 25, 208, 8),
('Wheat Flour', 1, 22, 4, 124, 9),
('Almond', 49, 22, 21, 575, 10),
('Diet Coke', 0, 0, 0, 1, 12),
('Sparkling Water', 0, 0, 0, 0, 12),
('Ginger Root', 0, 18, 2, 80, 10),
  ('Mint Leaves', 0, 8, 3, 44, 1),
  ('Vanilla Bean', 0, 4, 0, 12, 1),
  ('Roasted Coffee', 0, 4, 12, 1, 2),
  ('Iced Tea', 0, 7, 0, 28, 2),
  ('Soy Sauce', 0, 5, 8, 53, 3),
  ('Canned Peas', 1, 14, 5, 81, 3),
  ('Fructose', 0, 100, 0, 400, 4),
  ('Molasses', 0, 75, 0, 290, 4),
  ('Peanut Oil', 100, 0, 0, 884, 5),
  ('Canola Oil', 100, 0, 0, 884, 5),
  ('Cream', 30, 4, 2, 292, 6),
  ('Condensed Milk', 9, 10, 8, 135, 6),
  ('Venison', 2, 0, 25, 158, 7),
  ('Duck', 28, 0, 27, 337, 7),
  ('Lobster', 1, 0, 19, 89, 8),
  ('Crab Meat', 1, 0, 18, 82, 8),
  ('Rye', 1, 69, 15, 335, 9),
  ('Buckwheat', 2, 72, 13, 343, 9),
  ('Pumpkin Seeds', 19, 54, 30, 446, 10),
  ('Sunflower Seeds', 51, 20, 21, 584, 10),
  ('Stevia Extract', 0, 0, 0, 0, 11),
  ('Maltitol', 0, 90, 0, 270, 11),
  ('Energy Drink', 0, 27, 0, 110, 12),
  ('Mineral Water', 0, 0, 0, 0, 12),
  ('Tarragon', 7, 50, 23, 295, 1),
  ('Lemon Grass', 0, 25, 2, 99, 1),
  ('Decaf Coffee', 0, 0, 0, 2, 2),
  ('Peppermint Tea', 0, 0, 0, 1, 2),
  ('Jelly', 0, 70, 0, 280, 3),
  ('Canned Corn', 1, 25, 3, 108, 3),
  ('Tagatose', 0, 0, 0, 12, 4),
  ('Polydextrose', 0, 0, 0, 0, 4),
  ('Ghee', 99, 0, 0, 897, 5),
  ('Sunflower Oil', 100, 0, 0, 884, 5),
  ('Goat Milk', 4, 4, 3, 69, 6),
  ('Quail Eggs', 11, 1, 13, 158, 6),
  ('Mutton', 21, 0, 25, 294, 7),
  ('Lamb', 23, 0, 25, 294, 7),
  ('Instant popi', 0, 4, 12, 2, 2),
  ('katsarida', 1, 34, 30, 3, 2),
  ('skouliki', 8, 0, 18, 117, 3),
  ('mpala', 0, 5, 1, 20, 3),
  ('sinefo', 0, 82, 0, 304, 4),
  ('meraki', 0, 76, 0, 290, 4),
  ('agapi', 81, 0, 0, 717, 5),
  ('zoi', 99, 0, 0, 900, 5),
  ('tsitsi', 3, 6, 4, 59, 6),
  ('pipis', 48, 2, 45, 600, 6),
  ('pil', 25, 3, 33, 410, 7),
  ('concerta', 12, 18, 14, 286, 7),
  ('nai', 5, 0, 29, 210, 8),
  ('oxi', 25, 0, 19, 305, 8),
  ('fidi', 7, 66, 17, 389, 9),
  ('oxia', 2, 72, 8, 362, 9),
  ('kalispera', 0, 4, 3, 23, 10);


-- Recipe 50


INSERT INTO `Recipe` 
(`Name`, `Difficulty`, `Description`, `Prep_time`, `Cooking_time`, `Base_Ingredient_ID`, `Cuisine_ID`, `Variety`)
VALUES
('Classic Pancakes', 1, 'Easy fluffy pancakes perfect for breakfast.', 5, 15, 1, 10, 'Culinary'),
('Hearty Lentil Soup', 2, 'A nutritious lentil soup ideal for cold weather.', 10, 40, 2, 2, 'Culinary'),
('Quick Garlic Shrimp', 2, 'Garlic shrimp made quick and easy.', 10, 10, 3, 3, 'Culinary' ),
('Vegetarian Lasagna', 3, 'Layered lasagna with vegetables and cheese.', 20, 60, 4, 4, 'Culinary' ),
('Spicy Beef Chili', 3, 'Rich and spicy beef chili.', 15, 95, 5, 5, 'Culinary'),
('Mushroom Risotto', 4, 'Creamy risotto with earthy mushrooms.', 10, 45, 6, 6, 'Culinary'),
('Thai Green Curry', 3, 'Fragrant and spicy Thai green curry with chicken.', 15, 20, 7, 5, 'Culinary'),
('Baked Cod with Lemon', 2, 'Simple baked cod with a lemon butter sauce.', 5, 25, 8, 8, 'Culinary' ),
('Moroccan Tagine', 4, 'Slow-cooked lamb tagine with dried apricots.', 20, 120, 9, 9, 'Culinary' ),
('Maple Glazed Salmon', 2, 'Salmon with a sweet maple syrup glaze.', 5, 20, 10, 10, 'Culinary' ),
('Pork Carnitas Tacos', 3, 'Mexican slow-cooked pulled pork tacos.', 25, 180, 11, 11, 'Culinary' ),
('Indian Butter Chicken', 3, 'Creamy and rich butter chicken.', 15, 30, 12, 12, 'Culinary' ),
('Korean Bibimbap', 4, 'Rice bowl with assorted vegetables and beef.', 30, 20, 13, 13, 'Culinary' ),
('French Onion Soup', 2, 'Classic soup with caramelized onions and cheese.', 10, 70, 14, 14, 'Culinary' ),
('Italian Meatballs', 2, 'Juicy meatballs in a rich tomato sauce.', 20, 30, 15, 15, 'Culinary' ),
('Chocolate Mousse', 4, 'Light and airy chocolate mousse.', 20, 0, 16, 16, 'Culinary' ),
('Greek Moussaka', 4, 'Baked casserole with eggplant and béchamel sauce.', 30, 90, 17, 17, 'Culinary' ),
('Caesar Salad', 1, 'Crisp lettuce with creamy Caesar dressing.', 10, 0, 18, 18, 'Culinary' ),
('Spanish Paella', 4, 'Authentic seafood paella.', 15, 40, 19, 19, 'Culinary' ),
('Banana Bread', 1, 'Moist bread with ripe bananas and nuts.', 15, 55, 20, 20, 'Culinary' ),
('Caramel Cheesecake', 3, 'A smooth cheesecake with a thick caramel topping.', 25, 50, 1, 1, 'Culinary' ),
('Beef Bourguignon', 4, 'French stew made with beef braised in red wine.', 30, 180, 2, 2, 'Pastry'),
('Chicken Parmesan', 2, 'Breaded chicken breasts topped with cheese and marinara.', 15, 30, 3, 3, 'Culinary' ),
('Vegetable Stir Fry', 1, 'Quick and colorful vegetable stir fry.', 10, 10, 4, 4, 'Culinary' ),
('Clam Chowder', 3, 'Creamy New England style clam chowder.', 20, 45, 5, 5, 'Pastry'),
('Lemon Meringue Pie', 4, 'Tart lemon filling with a fluffy meringue topping.', 30, 25, 6, 6, 'Pastry'),
('Chicken Tikka Masala', 3, 'Chunks of grilled chicken in a creamy spiced tomato sauce.', 15, 25, 7, 7, 'Pastry'),
('Fettuccine Alfredo', 2, 'Pasta tossed with cheese and butter.', 5, 15, 8, 8, 'Pastry'),
('Jambalaya', 3, 'Louisiana dish with rice, meat, and vegetables.', 25, 60, 9, 9, 'Pastry'),
('Gazpacho', 1, 'Chilled Spanish tomato soup.', 15, 0, 10, 10, 'Pastry'),
('Bangers and Mash', 2, 'Sausages served over mashed potatoes with onion gravy.', 20, 35, 11, 11, 'Pastry'),
('Caprese Salad', 1, 'Simple Italian salad with tomatoes, mozzarella, and basil.', 10, 0, 12, 12, 'Pastry'),
('Pad See Ew', 2, 'Thai stir fried noodles with soy sauce and broccoli.', 10, 15, 13, 13, 'Pastry'),
('Fish and Chips', 2, 'Battered and fried fish served with fries.', 15, 25, 14, 14, 'Pastry'),
('Ratatouille', 3, 'Stewed vegetables dish from southern France.', 20, 40, 15, 15, 'Pastry'),
('Potato Soup', 2, 'Creamy potato soup with bacon and chives.', 10, 30, 16, 16, 'Pastry'),
('Mushroom Stroganoff', 3, 'Creamy Russian mushroom and pasta dish.', 10, 20, 17, 17, 'Pastry'),
('Eggplant Parmesan', 4, 'Baked dish with eggplant, marinara, and cheeses.', 25, 60, 18, 18, 'Pastry'),
('Teriyaki Chicken', 2, 'Chicken coated in a sweet and savory teriyaki sauce.', 10, 20, 19, 19, 'Pastry'),
('Pulled Pork Sandwich', 2, 'Slow-cooked pork shoulder with BBQ sauce on a bun.', 30, 240, 20, 20, 'Pastry'),
('Miso Soup', 1, 'Traditional Japanese soup with tofu and seaweed.', 5, 15, 21, 1, 'Pastry'),
('Baklava', 4, 'Sweet dessert pastry made of layers of filo and chopped nuts.', 30, 50, 22, 2, 'Pastry'),
('Spinach Quiche', 3, 'Egg pie with spinach and cheese in a pastry crust.', 20, 45, 23, 3, 'Pastry'),
('Roast Turkey', 4, 'Herb buttered turkey roasted to perfection.', 30, 180, 24, 4, 'Pastry'),
('Walnut Banana Bread', 2, 'Moist banana bread with crunchy walnuts, perfect for a sweet breakfast.', 15, 60, 51, 5, 'Pastry'),
('Zucchini Noodles', 1, 'Fresh zucchini spirals sautéed with garlic and olive oil.', 10, 10, 52, 3, 'Pastry'),
('Pumpkin Soup', 2, 'Creamy pumpkin soup with a hint of nutmeg and cream.', 20, 30, 53, 4, 'Pastry'),
('Mavroudis', 1, 'Warm apple cider with cinnamon, nutmeg, and clove spices.', 5, 15, 54, 12, 'Pastry'),
('Matia Maura', 2, 'A twist on the classic Caesar with crispy kale, parmesan, and croutons.', 10, 0, 55, 1,'Pastry'),
('Pontiki Fournou', 3, 'Sweet pontiki served over sticky pontiki, drizzled with pontiki milk.', 10, 30, 56, 2,'Pastry');

-- RecipeLabel 121
INSERT INTO `Recipe_Label` (`Recipe_ID`, `Label_ID`)
VALUES
(1, 3), (1, 2), (1, 4), (2, 5), (3, 6), (4, 1), (7, 3), (8, 3), (8, 7), (9, 7), (11, 3), (11, 1), (11, 4), (12, 4), (12, 7), (12, 6), (13, 4), (13, 2), (13, 5), (13, 7), (14, 3), (14, 5), (14, 2), (14, 7), (15, 2), (15, 5), (15, 3), (15, 1), (15, 4), (16, 6), (16, 4), (16, 3), (16, 7), (17, 5), (18, 7), (18, 3), (18, 5), (18, 2), (19, 4), (19, 2), (19, 5), (20, 7), (20, 6), (20, 4), (20, 2), (21, 7), (21, 2), (21, 1), (21, 3), (22, 6), (22, 1), (23, 1), (23, 5), (23, 4), (24, 2), (24, 7), (24, 6), (24, 3), (25, 7), (25, 5), (25, 3), (26, 5), (26, 6), (26, 4), (26, 3), (26, 7), (28, 7), (28, 2), (28, 4), (28, 6), (28, 3), (29, 3), (29, 1), (29, 5), (30, 3), (30, 2), (31, 4), (31, 7), (31, 2), (31, 3), (31, 1), (32, 1), (33, 3), (33, 4), (33, 5), (34, 6), (34, 4), (34, 3), (35, 5), (35, 1), (35, 3), (35, 7), (35, 6), (36, 2), (36, 7), (37, 7), (37, 6), (38, 5), (39, 1), (39, 6), (40, 6), (40, 1), (40, 2), (41, 1), (41, 6), (42, 4), (42, 1), (42, 7), (42, 3), (44, 5), (44, 1), (44, 2), (46, 4), (46, 3), (46, 1), (46, 5), (48, 7), (49, 6), (49, 3), (49, 5), (50, 1);

-- RecipeMeal 100

INSERT INTO `RecipeMeal` (`Recipe_ID`, `Meal_ID`) VALUES
 (1, 1),  (1, 3),  (2, 2),  (2, 1),  (3, 5),  (3, 4),  (4, 2),  (4, 3),  (5, 3),  (5, 2),  (6, 1),  (6, 4),  (7, 2),  (7, 5),  (8, 2),  (8, 5),  (9, 3),  (9, 2),  (10, 4),  (10, 2),  (11, 5),  (11, 4),  (12, 2),  (12, 4),  (13, 1),  (13, 4),  (14, 1),  (14, 4),  (15, 1),  (15, 3),  (16, 4),  (16, 1),  (17, 3),  (17, 2),  (18, 3),  (18, 5),  (19, 3),  (19, 5),  (20, 4),  (20, 3),  (21, 3),  (21, 5),  (22, 1),  (22, 3),  (23, 2),  (23, 3),  (24, 5),  (24, 2),  (25, 2),  (25, 3),  (26, 2),  (26, 3),  (27, 4),  (27, 1),  (28, 5),  (28, 3),  (29, 5),  (29, 2),  (30, 4),  (30, 5),  (31, 2),  (31, 3),  (32, 2),  (32, 4),  (33, 1),  (33, 4),  (34, 1),  (34, 2),  (35, 5),  (35, 2),  (36, 4),  (36, 3),  (37, 3),  (37, 2),  (38, 1),  (38, 3),  (39, 2),  (39, 3),  (40, 4),  (40, 1),  (41, 4),  (41, 5),  (42, 2),  (42, 1),  (43, 4),  (43, 2),  (44, 2),  (44, 4),  (45, 1),  (45, 2),  (46, 1),  (46, 4),  (47, 3),  (47, 2),  (48, 5),  (48, 4),  (49, 1),  (49, 5),  (50, 1),  (50, 2);

-- RecipeIngredient 351
INSERT INTO RecipeIngredient (Recipe_ID, Ingredient_ID, Quantity_Grams, Quantity) 
VALUES
(1, 22, 160, NULL),
(1, 75, 495, NULL),
(1, 7, 96, NULL),
(1, 31, 361, NULL),
(1, 42, 58, NULL),
(1, 63, 471, NULL),
(1, 23, 148, NULL),
(1, 80, NULL, 'a little'),
(1, 48, 118, NULL),
(2, 73, 238, NULL),
(2, 8, 484, NULL),
(2, 63, 181, NULL),
(2, 89, 470, NULL),
(2, 81, 270, NULL),
(2, 96, 448, NULL),
(2, 91, 274, NULL),
(2, 55, 234, NULL),
(3, 96, NULL, 'some'),
(3, 30, NULL, 'some'),
(3, 80, 306, NULL),
(3, 59, 343, NULL),
(3, 94, NULL, 'full sotita'),
(3, 73, 240, NULL),
(3, 40, 267, NULL),
(3, 70, 61, NULL),
(4, 7, 105, NULL),
(4, 68, 112, NULL),
(4, 46, 213, NULL),
(4, 79, 258, NULL),
(4, 16, 115, NULL),
(5, 4, 104, NULL),
(5, 53, 86, NULL),
(5, 35, 278, NULL),
(5, 1, 370, NULL),
(5, 83, 231, NULL),
(5, 94, 57, NULL),
(5, 87, 298, NULL),
(5, 34, 192, NULL),
(6, 32, 296, NULL),
(6, 19, 141, NULL),
(6, 56, 95, NULL),
(6, 49, 318, NULL),
(6, 65, 220, NULL),
(6, 98, 192, NULL),
(6, 9, 101, NULL),
(6, 87, 391, NULL),
(6, 75, 141, NULL),
(7, 80, 475, NULL),
(7, 14, 431, NULL),
(7, 68, 338, NULL),
(7, 1, 60, NULL),
(7, 87, 256, NULL),
(8, 88, 180, NULL),
(8, 6, 171, NULL),
(8, 86, 202, NULL),
(8, 93, 344, NULL),
(8, 7, 325, NULL),
(8, 83, 81, NULL),
(9, 100, 260, NULL),
(9, 7, 438, NULL),
(9, 51, NULL, 'a little'),
(9, 24, 447, NULL),
(9, 15, 183, NULL),
(9, 48, 456, NULL),
(9, 31, 244, NULL),
(10, 44, 186, NULL),
(10, 43, NULL, 'a drop'),
(10, 54, 365, NULL),
(10, 60, 197, NULL),
(10, 97, 178, NULL),
(10, 41, 484, NULL),
(10, 62, 268, NULL),
(10, 92, 262, NULL),
(10, 17, 472, NULL),
(10, 24, 142, NULL),
(11, 83, 265, NULL),
(11, 58, 321, NULL),
(11, 95, 380, NULL),
(11, 32, 487, NULL),
(11, 35, 147, NULL),
(12, 16, NULL, 'tigka'),
(12, 97, 204, NULL),
(12, 88, 465, NULL),
(12, 93, 312, NULL),
(12, 6, 476, NULL),
(12, 64, 85, NULL),
(13, 12, 132, NULL),
(13, 51, 473, NULL),
(13, 25, 396, NULL),
(13, 11, 158, NULL),
(13, 52, 436, NULL),
(13, 50, NULL, 'full sotita'),
(13, 89, 300, NULL),
(13, 9, 383, NULL),
(13, 8, 258, NULL),
(13, 29, 479, NULL),
(14, 21, 99, NULL),
(14, 71, 123, NULL),
(14, 56, 402, NULL),
(14, 11, 393, NULL),
(14, 27, 68, NULL),
(14, 89, 194, NULL),
(14, 5, 387, NULL),
(14, 81, 340, NULL),
(14, 44, 76, NULL),
(15, 20, NULL, 'some'),
(15, 94, 86, NULL),
(15, 60, 347, NULL),
(15, 21, NULL, 'tigka'),
(15, 33, 259, NULL),
(15, 88, 311, NULL),
(15, 77, 250, NULL),
(15, 31, 73, NULL),
(16, 89, 193, NULL),
(16, 14, 466, NULL),
(16, 48, 304, NULL),
(16, 36, 347, NULL),
(16, 9, 497, NULL),
(16, 92, 455, NULL),
(16, 63, NULL, 'tigka'),
(17, 6, 301, NULL),
(17, 60, 220, NULL),
(17, 52, 209, NULL),
(17, 29, 152, NULL),
(17, 1, 370, NULL),
(17, 44, 183, NULL),
(18, 80, NULL, 'a drop'),
(18, 79, 181, NULL),
(18, 28, 164, NULL),
(18, 17, NULL, 'tigka'),
(18, 15, 303, NULL),
(18, 40, 472, NULL),
(18, 26, 140, NULL),
(18, 51, 232, NULL),
(18, 41, 141, NULL),
(19, 13, 486, NULL),
(19, 39, 332, NULL),
(19, 99, 174, NULL),
(19, 6, 241, NULL),
(19, 92, 379, NULL),
(20, 83, 239, NULL),
(20, 59, 485, NULL),
(20, 70, 328, NULL),
(20, 7, 361, NULL),
(20, 5, 376, NULL),
(20, 11, 339, NULL),
(20, 92, NULL, 'a drop'),
(21, 10, 223, NULL),
(21, 70, 214, NULL),
(21, 73, 487, NULL),
(21, 48, 73, NULL),
(21, 74, 81, NULL),
(22, 42, 437, NULL),
(22, 33, 157, NULL),
(22, 5, 131, NULL),
(22, 54, 255, NULL),
(22, 97, 380, NULL),
(22, 53, 364, NULL),
(23, 88, 153, NULL),
(23, 46, 281, NULL),
(23, 73, 262, NULL),
(23, 42, 223, NULL),
(23, 55, 391, NULL),
(23, 45, 424, NULL),
(23, 31, 187, NULL),
(24, 65, 334, NULL),
(24, 68, 269, NULL),
(24, 78, 403, NULL),
(24, 90, 189, NULL),
(24, 87, 111, NULL),
(24, 99, 148, NULL),
(24, 44, 66, NULL),
(24, 12, 416, NULL),
(24, 36, 461, NULL),
(24, 4, 200, NULL),
(25, 23, 197, NULL),
(25, 49, 298, NULL),
(25, 2, 478, NULL),
(25, 54, 62, NULL),
(25, 13, NULL, 'tigka'),
(25, 94, 296, NULL),
(25, 93, 235, NULL),
(26, 5, 379, NULL),
(26, 11, 205, NULL),
(26, 30, 249, NULL),
(26, 96, 226, NULL),
(26, 21, 65, NULL),
(27, 69, 318, NULL),
(27, 33, 196, NULL),
(27, 8, 402, NULL),
(27, 29, 254, NULL),
(27, 4, 282, NULL),
(28, 53, NULL, 'a drop'),
(28, 59, 118, NULL),
(28, 92, 359, NULL),
(28, 66, 427, NULL),
(28, 30, 211, NULL),
(28, 97, 102, NULL),
(28, 27, 382, NULL),
(28, 61, 61, NULL),
(29, 59, 480, NULL),
(29, 83, 92, NULL),
(29, 56, 467, NULL),
(29, 68, 144, NULL),
(29, 8, 359, NULL),
(29, 32, 198, NULL),
(29, 21, 226, NULL),
(29, 97, 326, NULL),
(29, 30, 303, NULL),
(29, 89, 474, NULL),
(30, 24, NULL, 'tigka'),
(30, 65, 445, NULL),
(30, 93, 114, NULL),
(30, 80, 361, NULL),
(30, 50, 250, NULL),
(30, 14, 382, NULL),
(30, 94, 79, NULL),
(30, 54, 158, NULL),
(30, 58, 80, NULL),
(31, 43, NULL, 'some'),
(31, 99, NULL, 'some'),
(31, 49, 67, NULL),
(31, 27, 235, NULL),
(31, 76, 59, NULL),
(31, 25, 230, NULL),
(32, 59, 118, NULL),
(32, 95, 374, NULL),
(32, 4, 196, NULL),
(32, 22, 440, NULL),
(32, 8, NULL, 'tigka'),
(32, 1, 238, NULL),
(33, 54, NULL, 'some'),
(33, 15, 472, NULL),
(33, 57, 113, NULL),
(33, 64, 137, NULL),
(33, 92, 317, NULL),
(33, 88, 163, NULL),
(33, 77, 298, NULL),
(34, 54, 328, NULL),
(34, 10, 357, NULL),
(34, 63, NULL, 'tigka'),
(34, 17, 318, NULL),
(34, 12, 487, NULL),
(34, 31, 217, NULL),
(34, 58, 373, NULL),
(34, 27, 114, NULL),
(34, 48, 463, NULL),
(35, 55, 65, NULL),
(35, 78, 394, NULL),
(35, 92, 117, NULL),
(35, 1, 254, NULL),
(35, 53, 208, NULL),
(35, 56, 407, NULL),
(35, 9, 367, NULL),
(35, 41, 240, NULL),
(36, 24, 307, NULL),
(36, 78, NULL, 'full sotita'),
(36, 37, NULL, 'a drop'),
(36, 82, 168, NULL),
(36, 48, 72, NULL),
(36, 66, NULL, 'some'),
(37, 68, 424, NULL),
(37, 65, 243, NULL),
(37, 58, 482, NULL),
(37, 9, 146, NULL),
(37, 16, 245, NULL),
(37, 20, NULL, 'full sotita'),
(37, 48, 57, NULL),
(37, 52, 366, NULL),
(37, 91, 132, NULL),
(37, 27, 439, NULL),
(38, 4, 365, NULL),
(38, 15, 474, NULL),
(38, 55, 430, NULL),
(38, 77, 499, NULL),
(38, 20, 339, NULL),
(38, 68, NULL, 'some'),
(38, 11, NULL, 'a little'),
(38, 30, 106, NULL),
(39, 38, 387, NULL),
(39, 22, 82, NULL),
(39, 17, 192, NULL),
(39, 52, 311, NULL),
(39, 42, 97, NULL),
(39, 59, 407, NULL),
(39, 58, NULL, 'full sotita'),
(39, 31, 351, NULL),
(40, 30, 313, NULL),
(40, 4, 128, NULL),
(40, 73, 258, NULL),
(40, 36, 73, NULL),
(40, 28, 413, NULL),
(40, 99, 466, NULL),
(40, 46, 407, NULL),
(40, 2, 496, NULL),
(40, 20, 99, NULL),
(41, 12, 371, NULL),
(41, 59, 263, NULL),
(41, 18, 341, NULL),
(41, 45, 174, NULL),
(41, 64, 422, NULL),
(41, 6, 384, NULL),
(42, 77, 352, NULL),
(42, 85, 83, NULL),
(42, 24, 257, NULL),
(42, 27, 194, NULL),
(42, 94, 370, NULL),
(42, 17, 196, NULL),
(42, 67, 81, NULL),
(43, 37, 261, NULL),
(43, 14, 354, NULL),
(43, 87, 324, NULL),
(43, 25, 74, NULL),
(43, 32, NULL, 'some'),
(44, 88, 163, NULL),
(44, 31, 74, NULL),
(44, 6, 196, NULL),
(44, 47, 193, NULL),
(44, 87, 374, NULL),
(45, 2, 409, NULL),
(45, 21, 107, NULL),
(45, 14, 265, NULL),
(45, 41, NULL, 'tigka'),
(45, 88, 432, NULL),
(45, 74, 176, NULL),
(46, 16, 278, NULL),
(46, 50, 427, NULL),
(46, 49, 412, NULL),
(46, 51, 242, NULL),
(46, 7, 383, NULL),
(47, 33, NULL, 'a little'),
(47, 13, NULL, 'full sotita'),
(47, 42, 65, NULL),
(47, 49, 50, NULL),
(47, 58, 256, NULL),
(47, 92, 389, NULL),
(48, 19, 106, NULL),
(48, 66, 412, NULL),
(48, 53, 400, NULL),
(48, 20, 468, NULL),
(49, 79, 213, NULL),
(49, 49, 279, NULL),
(49, 96, 212, NULL),
(49, 75, NULL, 'a little'),
(49, 63, 268, NULL),
(49, 46, 376, NULL),
(50, 4, 402, NULL),
(50, 15, NULL, 'a drop'),
(50, 32, 211, NULL),
(50, 96, 314, NULL),
(50, 70, 420, NULL);

-- RecipeRequiresEquipment 166 
INSERT INTO `RecipeRequiresEquipment` (`Recipe_ID`, `Equipment_ID`) VALUES
(1, 1), (1, 3), (1, 6), (1, 8), (1, 2), (1, 5), (2, 2), (2, 3), (3, 7), (3, 10), (3, 9), (4, 1), (4, 4), (4, 7), (4, 10), (4, 9), (5, 5), (5, 7), (6, 1), (6, 9), (6, 3), (6, 7), (6, 6), (6, 5), (7, 2), (7, 10), (8, 7), (8, 6), (8, 3), (8, 9), (8, 8), (9, 9), (9, 8), (9, 2), (9, 3), (10, 1), (10, 2), (11, 5), (11, 4), (12, 2), (12, 9), (12, 7), (12, 8), (12, 3), (12, 5), (13, 1), (14, 5), (15, 4), (15, 10), (15, 3), (16, 8), (16, 7), (16, 10), (16, 5), (16, 2), (16, 3), (17, 6), (17, 5), (17, 4), (17, 9), (18, 3), (18, 6), (19, 6), (19, 9), (19, 5), (19, 3), (19, 8), (19, 4), (20, 4), (21, 8), (22, 9), (23, 1), (23, 10), (23, 2), (23, 5), (24, 9), (24, 5), (24, 3), (24, 7), (25, 6), (26, 3), (26, 4), (26, 10), (27, 5), (27, 1), (27, 8), (27, 6), (27, 3), (28, 5), (29, 2), (29, 5), (29, 1), (29, 10), (29, 4), (29, 9), (30, 1), (30, 3), (30, 8), (30, 5), (31, 5), (31, 8), (31, 6), (31, 10), (31, 7), (31, 2), (32, 1), (32, 4), (32, 8), (32, 10), (32, 7), (32, 9), (33, 10), (34, 8), (35, 9), (35, 4), (36, 5), (36, 10), (36, 7), (37, 7), (38, 10), (39, 3), (40, 1), (40, 6), (40, 9), (40, 3), (41, 2), (41, 10), (41, 9), (41, 1), (42, 2), (42, 5), (42, 9), (42, 10), (42, 7), (42, 1), (43, 3), (43, 1), (43, 9), (43, 4), (43, 5), (44, 6), (44, 10), (45, 2), (46, 5), (46, 4), (46, 6), (46, 9), (46, 1), (47, 5), (47, 7), (48, 6), (48, 9), (48, 8), (48, 7), (48, 2), (49, 6), (49, 8), (49, 7), (49, 9), (49, 4), (50, 10), (50, 7), (50, 9), (50, 6), (50, 1), (50, 8);

-- RecipeTips 98

INSERT INTO `RecipeTips` (`Recipe_ID`,`Tip_ID`) VALUES
(1, 4), (1, 8), (2, 4), (2, 7), (3, 5), (4, 6), (4, 1), (5, 7), (5, 9), (5, 2), (6, 3), (6, 7), (7, 4), (8, 4), (8, 10), (9, 2), (9, 1), (9, 8), (10, 5), (10, 4), (11, 5), (12, 7), (13, 6), (13, 1), (14, 7), (14, 10), (15, 4), (16, 6), (16, 3), (17, 3), (17, 8), (17, 5), (18, 10), (18, 2), (18, 9), (19, 2), (20, 7), (20, 10), (20, 5), (21, 2), (21, 4), (22, 8), (22, 4), (23, 7), (23, 4), (23, 3), (24, 2), (25, 7), (25, 9), (25, 10), (26, 7), (26, 10), (26, 1), (27, 8), (27, 4), (28, 9), (28, 4), (29, 1), (30, 10), (30, 7), (30, 6), (31, 7), (31, 3), (31, 9), (32, 7), (33, 3), (33, 2), (34, 8), (34, 6), (34, 9), (35, 5), (35, 10), (36, 7), (37, 9), (37, 7), (38, 4), (39, 3), (39, 9), (40, 3), (40, 5), (40, 6), (41, 9), (42, 2), (42, 10), (43, 6), (43, 4), (44, 2), (45, 4), (45, 5), (45, 7), (46, 3), (47, 3), (47, 2), (48, 10), (49, 4), (50, 2), (50, 4), (50, 8);

-- RecipeIsThemed 97 
INSERT INTO `RecipeIsThemed` (`Recipe_ID`, `Theme_ID`) VALUES
(1, 7), (1, 18), (2, 14), (3, 16), (3, 5), (3, 19), (4, 16), (4, 1), (5, 7), (5, 17), (5, 20), (6, 11), (7, 20), (8, 7), (9, 4), (9, 19), (9, 17), (10, 15), (10, 10), (11, 4), (11, 8), (11, 16), (12, 7), (12, 10), (12, 16), (13, 14), (13, 7), (14, 16), (15, 3), (16, 8), (16, 12), (17, 11), (18, 5), (18, 2), (19, 3), (20, 5), (20, 9), (20, 7), (21, 6), (22, 6), (22, 18), (22, 19), (23, 5), (24, 7), (25, 6), (25, 17), (25, 18), (26, 13), (27, 11), (28, 19), (28, 12), (29, 16), (29, 8), (29, 7), (30, 6), (30, 7), (30, 1), (31, 6), (32, 8), (32, 16), (33, 3), (33, 12), (34, 14), (34, 5), (34, 19), (35, 17), (36, 6), (37, 2), (37, 20), (38, 5), (38, 17), (38, 3), (39, 14), (39, 19), (40, 1), (40, 20), (40, 12), (41, 10), (41, 9), (41, 7), (42, 6), (42, 12), (43, 16), (43, 13), (43, 20), (44, 20), (44, 17), (44, 18), (45, 18), (46, 17), (46, 16), (47, 13), (47, 12), (48, 7), (49, 3), (49, 10), (50, 1);

-- RecipeStep 276
INSERT INTO `RecipeStep` (`Recipe_ID`, `Step_ID`) VALUES
(1, 35), (1, 2), (1, 38), (1, 46), (1, 47), (1, 29), (1, 13), (1, 48), (2, 20), (3, 69), (3, 26), (3, 68), (3, 28), (3, 27), (4, 50), (5, 46), (6, 29), (6, 25), (6, 31), (6, 4), (6, 48), (7, 4), (8, 57), (8, 5), (8, 42), (9, 65), (9, 40), (9, 63), (9, 32), (9, 58), (9, 55), (9, 70), (9, 7), (9, 21), (9, 24), (10, 30), (10, 64), (11, 27), (11, 19), (11, 23), (11, 65), (11, 52), (11, 57), (11, 37), (11, 47), (11, 16), (12, 51), (12, 63), (12, 18), (12, 55), (12, 41), (12, 31), (12, 64), (12, 28), (13, 64), (13, 4), (13, 14), (14, 61), (14, 31), (14, 10), (14, 21), (14, 52), (14, 70), (14, 12), (15, 68), (15, 8), (16, 49), (16, 59), (16, 3), (16, 68), (16, 29), (16, 27), (16, 34), (16, 42), (16, 10), (17, 20), (17, 41), (17, 12), (17, 14), (18, 58), (18, 46), (18, 28), (18, 67), (18, 15), (18, 2), (19, 30), (19, 41), (19, 22), (19, 16), (19, 36), (19, 64), (20, 33), (20, 58), (20, 63), (21, 61), (21, 12), (22, 57), (22, 48), (22, 25), (23, 41), (23, 12), (23, 43), (23, 10), (23, 61), (23, 19), (24, 61), (24, 6), (24, 27), (24, 22), (24, 49), (25, 48), (25, 46), (25, 37), (25, 47), (25, 39), (25, 69), (25, 53), (25, 40), (25, 55), (25, 13), (26, 60), (26, 59), (26, 38), (26, 3), (26, 24), (27, 20), (27, 13), (27, 60), (28, 14), (28, 47), (28, 66), (28, 8), (28, 20), (28, 69), (28, 63), (28, 9), (28, 35), (29, 34), (29, 52), (29, 17), (29, 5), (29, 4), (29, 2), (29, 31), (29, 63), (29, 36), (29, 22), (30, 6), (30, 57), (30, 23), (30, 36), (30, 10), (30, 41), (30, 26), (31, 33), (31, 45), (31, 41), (31, 53), (31, 44), (31, 8), (31, 34), (31, 14), (32, 41), (32, 50), (32, 2), (32, 48), (32, 26), (32, 8), (33, 42), (33, 48), (33, 20), (33, 29), (34, 32), (34, 45), (34, 37), (34, 36), (34, 27), (34, 56), (35, 38), (35, 59), (35, 58), (35, 42), (35, 22), (35, 50), (35, 37), (35, 69), (36, 13), (37, 45), (37, 50), (37, 6), (37, 46), (37, 48), (37, 33), (38, 17), (38, 44), (38, 19), (38, 41), (38, 22), (38, 33), (38, 59), (38, 32), (38, 67), (39, 25), (39, 44), (40, 10), (40, 20), (40, 34), (41, 11), (41, 62), (41, 26), (42, 49), (42, 26), (42, 53), (42, 43), (42, 32), (42, 64), (42, 70), (42, 29), (43, 54), (43, 41), (43, 51), (43, 27), (43, 47), (43, 46), (43, 67), (43, 25), (43, 56), (44, 16), (44, 8), (44, 60), (44, 25), (44, 63), (44, 24), (45, 51), (45, 6), (45, 50), (45, 62), (45, 38), (45, 32), (45, 42), (45, 24), (45, 47), (46, 68), (46, 64), (46, 17), (46, 4), (46, 59), (46, 30), (46, 1), (47, 57), (47, 58), (47, 69), (47, 24), (47, 35), (47, 1), (47, 17), (47, 47), (47, 43), (48, 1), (49, 45), (49, 50), (49, 53), (49, 18), (49, 68), (49, 64), (49, 69), (50, 62), (50, 33), (50, 4), (50, 36), (50, 37), (50, 19), (50, 13), (50, 27), (50, 65), (50, 54);
