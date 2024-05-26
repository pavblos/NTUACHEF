import random

# Parameters
num_recipes = 50  # Total number of recipes
num_equipments = 10
insertions_per_recipe = 6     # Maximum number of equipment types that can be assigned

# Generate the SQL
sql_insertions = []
for recipe_id in range(1, num_recipes + 1):
    # Select a random number of equipment IDs to assign (between 1 and max_equipments)
    num_insertions = random.randint(1, insertions_per_recipe)
    equipments = random.sample(range(1,  num_equipments+ 1), num_insertions)
    for equipment_id in equipments:
        sql_insertions.append(f"({recipe_id}, {equipment_id}), ")

# Remove the last comma and space for the final SQL statement
if sql_insertions:
    sql_insertions[-1] = sql_insertions[-1][:-2]

# Output the SQL commands
print(''.join(sql_insertions))