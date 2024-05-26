import random

# Parameters
num_recipes = 50  # Total number of recipes
num_cooks = 56
insertions_per_recipe = 6     # Maximum number of cook types that can be assigned

# Generate the SQL
sql_insertions = []
for recipe_id in range(1, num_recipes + 1):
    # Select a random number of cook IDs to assign (between 1 and max_cooks)
    num_insertions = random.randint(1, insertions_per_recipe)
    cooks = random.sample(range(1,  num_cooks+ 1), num_insertions)
    for cook_id in cooks:
        sql_insertions.append(f"({recipe_id}, {cook_id}), ")

# Remove the last comma and space for the final SQL statement
if sql_insertions:
    sql_insertions[-1] = sql_insertions[-1][:-2]

# Output the SQL commands
print(''.join(sql_insertions))