import mysql.connector
from mysql.connector import Error
import random

def connect_to_database():
    """Connect to the MySQL database server."""
    conn = None
    try:
        conn = mysql.connector.connect(
            host='localhost',
            database='ntuachef',
            user='root',
            password=''
        )
        if conn.is_connected():
            print('Connected to MySQL database')
    except Error as e:
        print(e)
    return conn

def insert_episode_judges(conn, episode_id, judge_ids):
    """Insert judges into EpisodeJudge table."""
    query = "INSERT INTO EpisodeJudge (Episode_ID, Cook_ID) VALUES (%s, %s)"
    cursor = conn.cursor()
    try:
        for judge_id in judge_ids:
            cursor.execute(query, (episode_id, judge_id))
        conn.commit()
        print(f"{len(judge_ids)} judges added to Episode {episode_id}.")
    except Error as e:
        print(f"Error: {e}")
        conn.rollback()

def get_unique_cooks_and_judges(conn, exclude_cooks):
    """Retrieve all cooks that are not in the exclude list."""
    cursor = conn.cursor()
    if exclude_cooks:
        format_strings = ','.join(['%s'] * len(exclude_cooks))
        query = f"SELECT Cook_ID FROM Cook WHERE Cook_ID NOT IN ({format_strings})"
        cursor.execute(query, tuple(exclude_cooks))
    else:
        query = "SELECT Cook_ID FROM Cook"
        cursor.execute(query)
    return [item[0] for item in cursor.fetchall()]

def get_unique_cuisines(conn):
    """Retrieve all unique cuisine IDs from RecipeCuisine."""
    query = "SELECT DISTINCT Cuisine_ID FROM RecipeCuisine"
    cursor = conn.cursor()
    cursor.execute(query)
    return [item[0] for item in cursor.fetchall()]

def get_recipe_for_cuisine(conn, cuisine_id):
    """Retrieve a random recipe that belongs to the specified cuisine."""
    query = "SELECT Recipe_ID FROM RecipeCuisine WHERE Cuisine_ID = %s"
    cursor = conn.cursor()
    cursor.execute(query, (cuisine_id,))
    recipes = [item[0] for item in cursor.fetchall()]
    return random.choice(recipes) if recipes else None

def insert_entries(conn, episode_id, cooks, cuisines):
    """Insert 10 unique entries into EpisodeCookCuisineRecipe."""
    cursor = conn.cursor()
    try:
        for cook, cuisine in zip(cooks, cuisines):
            recipe = get_recipe_for_cuisine(conn, cuisine)
            if recipe:
                query = "INSERT INTO EpisodeCookCuisineRecipe (Episode_ID, Cook_ID, Cuisine_ID, Recipe_ID) VALUES (%s, %s, %s, %s)"
                cursor.execute(query, (episode_id, cook, cuisine, recipe))
        conn.commit()
        print(f"10 unique entries added to EpisodeCookCuisineRecipe for Episode {episode_id}.")
    except Error as e:
        print(f"Error: {e}")
        conn.rollback()

def main():
    conn = connect_to_database()
    if conn:
        episode_id = 2  # Example episode ID
        # Example judge IDs (ensure these are valid and exist in your Cook table)
        judge_ids = random.sample(get_unique_cooks_and_judges(conn, []), 3)
        insert_episode_judges(conn, episode_id, judge_ids)
        
        # Exclude these judges from being selected as cooks
        available_cooks = get_unique_cooks_and_judges(conn, judge_ids)
        cooks = random.sample(available_cooks, 10)  # Get 10 unique cooks not being judges
        cuisines = random.sample(get_unique_cuisines(conn), 10)  # Get 10 unique cuisines

        insert_entries(conn, episode_id, cooks, cuisines)
        conn.close()

if __name__ == "__main__":
    main()
