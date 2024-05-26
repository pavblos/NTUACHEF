import random

# Initialize an empty list to store the generated SQL queries
sql_queries = []

# Define the possible quantity values
quantity_values = ['some', 'a little', 'a drop', 'tigka', 'full sotita']

# Generate SQL queries for each recipe
for recipe_id in range(1, 51):
    # Generate 5 to 10 random Recipe ingredients for the current recipe
    num_ingredients = random.randint(5, 10)

    # Create a set to keep track of ingredients already added to the recipe
    added_ingredients = set()

    for _ in range(num_ingredients):
        # Randomly select an ingredient_id
        ingredient_id = random.randint(1, 100)

        # Check if the ingredient has already been added to the recipe
        if ingredient_id in added_ingredients:
            continue  # Skip this iteration if the ingredient is already added
        else:
            added_ingredients.add(ingredient_id)

        # Generate quantity_grams and quantity based on the specified probability
        if random.random() < 0.9:
            quantity_grams = random.randint(50, 500)
            quantity = "NULL"
        else:
            quantity_grams = "NULL"
            quantity = "'" + random.choice(quantity_values) + "'"

        # Generate the SQL query
        sql_query = f"({recipe_id}, {ingredient_id}, {quantity_grams}, {quantity}),"

        # Append the SQL query to the list
        sql_queries.append(sql_query)

# Print the generated SQL queries
for query in sql_queries:
    print(query)