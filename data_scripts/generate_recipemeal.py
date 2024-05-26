import random

# Parameters
num_recipes = 50  # Total number of recipes
num_equipments = 5     # Total number of equipment types
insertions_per_recipe = 2  # Number of equipments to assign to each recipe

# Generate the SQL
sql_insertions = []
for recipe_id in range(1, num_recipes + 1):
    # Select two unique random equipment IDs for each recipe
    equipments = random.sample(range(1, num_equipments + 1), insertions_per_recipe)
    for equipment_id in equipments:
        sql_insertions.append(f" ({recipe_id}, {equipment_id}), ")

# Output the SQL commands
print(''.join(sql_insertions))