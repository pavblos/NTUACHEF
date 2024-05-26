import random

# Parameters
num_recipes = 50  # Total number of recipes
num_themes = 20
insertions_per_recipe = 3     # Maximum number of theme types that can be assigned

# Generate the SQL
sql_insertions = []
for recipe_id in range(1, num_recipes + 1):
    # Select a random number of theme IDs to assign (between 1 and max_themes)
    num_insertions = random.randint(1, insertions_per_recipe)
    themes = random.sample(range(1,  num_themes+ 1), num_insertions)
    for theme_id in themes:
        sql_insertions.append(f"({recipe_id}, {theme_id}), ")

# Remove the last comma and space for the final SQL statement
if sql_insertions:
    sql_insertions[-1] = sql_insertions[-1][:-2]

# Output the SQL commands
print(''.join(sql_insertions))