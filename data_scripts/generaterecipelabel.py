import random

# Function to generate SQL insert statement for labels for a recipe
def generate_insert_query(recipe_id):
    num_labels = random.randint(0, 5)  # Generate random number of labels (0 to 5)
    labels = random.sample(range(1, 8), num_labels)  # Randomly select label IDs
    query = ""
    for label_id in labels:
        query += f"({recipe_id}, {label_id}), "
    return query

# Function to generate SQL insert queries for all recipes
def generate_insert_queries(num_recipes):
    queries = "INSERT INTO `Recipe_Label` (`Recipe_ID`, `Label_ID`)\nVALUES\n"
    for recipe_id in range(1, num_recipes + 1):
        queries += generate_insert_query(recipe_id)
	
    return queries

# Generate SQL insert queries
insert_queries = generate_insert_queries(50)

# Output SQL insert queries
print(insert_queries)