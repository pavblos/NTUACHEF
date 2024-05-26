import random

# Parameters
num_recipes = 50  # Total number of recipes
num_cuisines = 20
insertions_per_recipe = 4     # Maximum number of cuisine types that can be assigned

# Generate the SQL
sql_insertions = []
for recipe_id in range(1, num_recipes + 1):
    # Select a random number of cuisine IDs to assign (between 1 and max_cuisines)
    num_insertions = random.randint(1, insertions_per_recipe)
    cuisines = random.sample(range(1,  num_cuisines+ 1), insertions_per_recipe)
    for cuisine_id in cuisines:
        sql_insertions.append(f"({recipe_id}, {cuisine_id}), ")

# Remove the last comma and space for the final SQL statement
if sql_insertions:
    sql_insertions[-1] = sql_insertions[-1][:-2]

# Output the SQL commands
print(''.join(sql_insertions))